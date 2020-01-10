%global libname solv

%if 0%{?rhel} && 0%{?rhel} <= 7
%bcond_with perl_bindings
%bcond_with ruby_bindings
%bcond_with python_bindings
%if %{with python_bindings}
  %bcond_with python3
%endif
%else
%bcond_without perl_bindings
%bcond_without ruby_bindings
%bcond_without python_bindings
%if %{with python_bindings}
  %bcond_without python3
%endif
%endif
%bcond_with debian_repo
%bcond_with arch_repo
%bcond_with helix_repo
# Creates special prefixed pseudo-packages from appdata metadata
%bcond_with appdata
# Creates special prefixed "group:", "category:" pseudo-packages
%bcond_without comps
# For rich dependencies
%bcond_without complex_deps
# For handling deb + rpm at the same time
%bcond_with multi_symantics

%global _cmake_opts                               \\\
    -DFEDORA=1                                    \\\
    -DENABLE_RPMDB=ON                             \\\
    -DENABLE_RPMDB_BYRPMHEADER=ON                 \\\
    -DENABLE_RPMMD=ON                             \\\
    %{?with_comps:-DENABLE_COMPS=ON}              \\\
    %{?with_appdata:-DENABLE_APPDATA=ON}          \\\
    -DUSE_VENDORDIRS=ON                           \\\
    -DENABLE_LZMA_COMPRESSION=ON                  \\\
    -DENABLE_BZIP2_COMPRESSION=ON                 \\\
    %{?with_debian_repo:-DENABLE_DEBIAN=ON}       \\\
    %{?with_arch_repo:-DENABLE_ARCHREPO=ON}       \\\
    %{?with_helix_repo:-DENABLE_HELIXREPO=ON}     \\\
    %{?with_multi_symantics:-DMULTI_SYMANTICS=ON} \\\
    %{?with_complex_deps:-DENABLE_COMPLEX_DEPS=1} \\\
    %{nil}

Name:           lib%{libname}
Version:        0.6.20
Release:        5%{?dist}
Summary:        Package dependency solver

License:        BSD
URL:            https://github.com/openSUSE/libsolv
Source0:        %{url}/archive/%{version}/%{name}-%{version}.tar.gz

# https://bugzilla.redhat.com/show_bug.cgi?id=1318662
# https://github.com/openSUSE/libsolv/commit/599c58bed474c2a68109ff0649f1effa7ff02c45
Patch0:         0001-Fix-order-of-solv_extend-arguments-in-repo_add_rpmmd.patch
# https://bugzilla.redhat.com/show_bug.cgi?id=1325471
# https://github.com/openSUSE/libsolv/commit/b1014a431541444bcd39c6ec83c1ec935c7f0aae
Patch1:         0001-Fix-supplements-handling-when-implicitobsoleteusesco.patch

BuildRequires:  cmake
BuildRequires:  gcc-c++
BuildRequires:  pkgconfig(rpm)
BuildRequires:  zlib-devel
BuildRequires:  expat-devel
# -DFEDORA=1
# -DENABLE_RPMDB=ON
BuildRequires:  libdb-devel
# -DENABLE_LZMA_COMPRESSION=ON
BuildRequires:  xz-devel
# -DENABLE_BZIP2_COMPRESSION=ON
BuildRequires:  bzip2-devel

%description
A free package dependency solver using a satisfiability algorithm. The
library is based on two major, but independent, blocks:

- Using a dictionary approach to store and retrieve package
  and dependency information.

- Using satisfiability, a well known and researched topic, for
  resolving package dependencies.

%package devel
Summary:        Development files for %{name}
Requires:       %{name}%{?_isa} = %{version}-%{release}
Requires:       rpm-devel%{?_isa}

%description devel
Development files for %{name}.

%package tools
Summary:        Package dependency solver tools
Requires:       %{name}%{?_isa} = %{version}-%{release}
Obsoletes:      %{name}-test < 0.6.11-2
# repo2solv dependencies. All of those are used in shell-script.
Requires:       /usr/bin/gzip
Requires:       /usr/bin/bzip2
Requires:       /usr/bin/lzma
Requires:       /usr/bin/xz
Requires:       /usr/bin/cat
Requires:       /usr/bin/find

%description tools
Package dependency solver tools.

%package demo
Summary:        Applications demoing the %{name} library
Requires:       %{name}%{?_isa} = %{version}-%{release}
# solv dependencies. Used as execlp() and system()
Requires:       /usr/bin/curl
Requires:       /usr/bin/gpg2

%description demo
Applications demoing the %{name} library.

%if %{with perl_bindings}
%package -n perl-%{libname}
Summary:        Perl bindings for the %{name} library
BuildRequires:  swig
BuildRequires:  perl-devel
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description -n perl-%{libname}
Perl bindings for the %{name} library.
%endif

%if %{with ruby_bindings}
%package -n ruby-%{libname}
Summary:        Ruby bindings for the %{name} library
BuildRequires:  swig
BuildRequires:  ruby-devel
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description -n ruby-%{libname}
Ruby bindings for the %{name} library.
%endif

%if %{with python_bindings}
%package -n python2-%{libname}
Summary:        Python bindings for the %{name} library
%{?python_provide:%python_provide python2-%{libname}}
BuildRequires:  swig
BuildRequires:  python2-devel
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description -n python2-%{libname}
Python bindings for the %{name} library.

Python 2 version.

%if %{with python3}
%package -n python3-%{libname}
Summary:        Python bindings for the %{name} library
%{?python_provide:%python_provide python3-%{libname}}
BuildRequires:  swig
BuildRequires:  python3-devel
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description -n python3-%{libname}
Python bindings for the %{name} library.

Python 3 version.
%endif
%endif

%prep
%autosetup -p1
mkdir build build-py2 build-py3

%build
pushd build
  %cmake %_cmake_opts ../                   \
    %{?with_perl_bindings:-DENABLE_PERL=ON} \
    %{?with_ruby_bindings:-DENABLE_RUBY=ON} \
    %{nil}
  %make_build
popd

%if %{with python_bindings}
pushd build-py2
  %cmake %_cmake_opts ../             \
    -DENABLE_PYTHON=ON                \
    -DPythonLibs_FIND_VERSION=2       \
    -DPythonLibs_FIND_VERSION_MAJOR=2 \
    %{nil}
  make %{?_smp_mflags} bindings_python
popd

%if %{with python3}
pushd build-py3
  %cmake %_cmake_opts ../             \
    -DENABLE_PYTHON=ON                \
    -DPythonLibs_FIND_VERSION=3       \
    -DPythonLibs_FIND_VERSION_MAJOR=3 \
    %{nil}
  make %{?_smp_mflags} bindings_python
popd
%endif
%endif

%install
pushd build
  %make_install
popd

%if %{with python_bindings}
pushd build-py2
  %make_install
popd

%if %{with python3}
pushd build-py3
  %make_install
popd
%endif
%endif

mv %{buildroot}%{_bindir}/repo2solv.sh %{buildroot}%{_bindir}/repo2solv

%check
pushd build
  ctest -VV
popd

%post -p /sbin/ldconfig

%postun -p /sbin/ldconfig

%files
%license LICENSE*
%doc README
%{_libdir}/%{name}.so.*
%{_libdir}/%{name}ext.so.*

%files devel
%{_libdir}/%{name}.so
%{_libdir}/%{name}ext.so
%{_includedir}/%{libname}/
%{_libdir}/pkgconfig/%{name}.pc
# Own directory because we don't want to depend on cmake
%dir %{_datadir}/cmake/Modules/
%{_datadir}/cmake/Modules/FindLibSolv.cmake
%{_mandir}/man3/%{name}*.3*

# Some small macro to list tools with mans
%global solv_tool() \
%{_bindir}/%{1}\
%{_mandir}/man1/%{1}.1*

%files tools
%solv_tool deltainfoxml2solv
%solv_tool dumpsolv
%solv_tool installcheck
%solv_tool mergesolv
%solv_tool repomdxml2solv
%solv_tool rpmdb2solv
%solv_tool rpmmd2solv
%solv_tool rpms2solv
%solv_tool testsolv
%solv_tool updateinfoxml2solv
%if %{with comps}
  %solv_tool comps2solv
%endif
%if %{with appdata}
  %solv_tool appdata2solv
%endif
%if %{with debian_repo}
  %solv_tool deb2solv
%endif
%if %{with arch_repo}
  %solv_tool archpkgs2solv
  %solv_tool archrepo2solv
%endif
%if %{with helix_repo}
  %solv_tool helix2solv
%endif
%{_bindir}/repo2solv

%files demo
%{_bindir}/solv

%if %{with perl_bindings}
%files -n perl-%{libname}
%{perl_vendorarch}/%{libname}.pm
%{perl_vendorarch}/%{libname}.so
%endif

%if %{with ruby_bindings}
%files -n ruby-%{libname}
%{ruby_vendorarchdir}/%{libname}.so
%endif

%if %{with python_bindings}
%files -n python2-%{libname}
%{python2_sitearch}/_%{libname}.so
%{python2_sitearch}/%{libname}.py*

%if %{with python3}
%files -n python3-%{libname}
%{python3_sitearch}/_%{libname}.so
%{python3_sitearch}/%{libname}.py
%{python3_sitearch}/__pycache__/%{libname}.*
%endif
%endif

%changelog
* Tue Jul 12 2016 Igor Gnatenko <ignatenko@redhat.com> - 0.6.20-5
- Make obsoletes non-architecture dependent (RHBZ #1354479)

* Tue May 31 2016 Igor Gnatenko <ignatenko@redhat.com> - 0.6.20-4
- Properly obsolete -test subpkg

* Mon May 30 2016 Igor Gnatenko <ignatenko@redhat.com> - 0.6.20-3
- Rebase to 0.6.20 with 2 critical patches (RHBZ #1334401)

* Wed Jun 3 2015 Jan Silhan <jsilhan@redhat.com> - 0.6.11-1
- initial package for RHEL 7.2 without unnecessary bindings
