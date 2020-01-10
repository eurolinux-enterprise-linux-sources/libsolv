#
# these tests check all dependency match combinations,
# both with release present and missing
#
repo system 0 testtags system.repo
repo c 0 testtags conflicts.repo
system i686 rpm system
solverflags allowuninstall
job install name CEQ2
result transaction,problems <inline>
#>erase AEQ2-1-1.noarch@system
#>erase AEQ21-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AEQ23-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CEQ2-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CEQ22
result transaction,problems <inline>
#>erase AEQ2-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CEQ22-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CLT2
result transaction,problems <inline>
#>erase AEQ1-1-1.noarch@system
#>erase AEQ11-1-1.noarch@system
#>erase AEQ12-1-1.noarch@system
#>erase AEQ13-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase ALE1-1-1.noarch@system
#>erase ALE11-1-1.noarch@system
#>erase ALE12-1-1.noarch@system
#>erase ALE13-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT1-1-1.noarch@system
#>erase ALT11-1-1.noarch@system
#>erase ALT12-1-1.noarch@system
#>erase ALT13-1-1.noarch@system
#>erase ALT2-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CLT2-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CLT22
result transaction,problems <inline>
#>erase AEQ1-1-1.noarch@system
#>erase AEQ11-1-1.noarch@system
#>erase AEQ12-1-1.noarch@system
#>erase AEQ13-1-1.noarch@system
#>erase AEQ2-1-1.noarch@system
#>erase AEQ21-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase ALE1-1-1.noarch@system
#>erase ALE11-1-1.noarch@system
#>erase ALE12-1-1.noarch@system
#>erase ALE13-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT1-1-1.noarch@system
#>erase ALT11-1-1.noarch@system
#>erase ALT12-1-1.noarch@system
#>erase ALT13-1-1.noarch@system
#>erase ALT2-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CLT22-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CGT2
result transaction,problems <inline>
#>erase AEQ3-1-1.noarch@system
#>erase AEQ31-1-1.noarch@system
#>erase AEQ32-1-1.noarch@system
#>erase AEQ33-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGE3-1-1.noarch@system
#>erase AGE31-1-1.noarch@system
#>erase AGE32-1-1.noarch@system
#>erase AGE33-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT2-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase AGT3-1-1.noarch@system
#>erase AGT31-1-1.noarch@system
#>erase AGT32-1-1.noarch@system
#>erase AGT33-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CGT2-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CGT22
result transaction,problems <inline>
#>erase AEQ2-1-1.noarch@system
#>erase AEQ23-1-1.noarch@system
#>erase AEQ3-1-1.noarch@system
#>erase AEQ31-1-1.noarch@system
#>erase AEQ32-1-1.noarch@system
#>erase AEQ33-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGE3-1-1.noarch@system
#>erase AGE31-1-1.noarch@system
#>erase AGE32-1-1.noarch@system
#>erase AGE33-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT2-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase AGT3-1-1.noarch@system
#>erase AGT31-1-1.noarch@system
#>erase AGT32-1-1.noarch@system
#>erase AGT33-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CGT22-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CLE2
result transaction,problems <inline>
#>erase AEQ1-1-1.noarch@system
#>erase AEQ11-1-1.noarch@system
#>erase AEQ12-1-1.noarch@system
#>erase AEQ13-1-1.noarch@system
#>erase AEQ2-1-1.noarch@system
#>erase AEQ21-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AEQ23-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase ALE1-1-1.noarch@system
#>erase ALE11-1-1.noarch@system
#>erase ALE12-1-1.noarch@system
#>erase ALE13-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT1-1-1.noarch@system
#>erase ALT11-1-1.noarch@system
#>erase ALT12-1-1.noarch@system
#>erase ALT13-1-1.noarch@system
#>erase ALT2-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CLE2-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CLE22
result transaction,problems <inline>
#>erase AEQ1-1-1.noarch@system
#>erase AEQ11-1-1.noarch@system
#>erase AEQ12-1-1.noarch@system
#>erase AEQ13-1-1.noarch@system
#>erase AEQ2-1-1.noarch@system
#>erase AEQ21-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase ALE1-1-1.noarch@system
#>erase ALE11-1-1.noarch@system
#>erase ALE12-1-1.noarch@system
#>erase ALE13-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT1-1-1.noarch@system
#>erase ALT11-1-1.noarch@system
#>erase ALT12-1-1.noarch@system
#>erase ALT13-1-1.noarch@system
#>erase ALT2-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CLE22-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CGE2
result transaction,problems <inline>
#>erase AEQ2-1-1.noarch@system
#>erase AEQ21-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AEQ23-1-1.noarch@system
#>erase AEQ3-1-1.noarch@system
#>erase AEQ31-1-1.noarch@system
#>erase AEQ32-1-1.noarch@system
#>erase AEQ33-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGE3-1-1.noarch@system
#>erase AGE31-1-1.noarch@system
#>erase AGE32-1-1.noarch@system
#>erase AGE33-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT2-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase AGT3-1-1.noarch@system
#>erase AGT31-1-1.noarch@system
#>erase AGT32-1-1.noarch@system
#>erase AGT33-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE21-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT21-1-1.noarch@system
#>erase ALT22-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CGE2-1-1.noarch@c
nextjob
solverflags allowuninstall
job install name CGE22
result transaction,problems <inline>
#>erase AEQ2-1-1.noarch@system
#>erase AEQ22-1-1.noarch@system
#>erase AEQ23-1-1.noarch@system
#>erase AEQ3-1-1.noarch@system
#>erase AEQ31-1-1.noarch@system
#>erase AEQ32-1-1.noarch@system
#>erase AEQ33-1-1.noarch@system
#>erase AGE1-1-1.noarch@system
#>erase AGE11-1-1.noarch@system
#>erase AGE12-1-1.noarch@system
#>erase AGE13-1-1.noarch@system
#>erase AGE2-1-1.noarch@system
#>erase AGE21-1-1.noarch@system
#>erase AGE22-1-1.noarch@system
#>erase AGE23-1-1.noarch@system
#>erase AGE3-1-1.noarch@system
#>erase AGE31-1-1.noarch@system
#>erase AGE32-1-1.noarch@system
#>erase AGE33-1-1.noarch@system
#>erase AGT1-1-1.noarch@system
#>erase AGT11-1-1.noarch@system
#>erase AGT12-1-1.noarch@system
#>erase AGT13-1-1.noarch@system
#>erase AGT2-1-1.noarch@system
#>erase AGT21-1-1.noarch@system
#>erase AGT22-1-1.noarch@system
#>erase AGT23-1-1.noarch@system
#>erase AGT3-1-1.noarch@system
#>erase AGT31-1-1.noarch@system
#>erase AGT32-1-1.noarch@system
#>erase AGT33-1-1.noarch@system
#>erase ALE2-1-1.noarch@system
#>erase ALE22-1-1.noarch@system
#>erase ALE23-1-1.noarch@system
#>erase ALE3-1-1.noarch@system
#>erase ALE31-1-1.noarch@system
#>erase ALE32-1-1.noarch@system
#>erase ALE33-1-1.noarch@system
#>erase ALT23-1-1.noarch@system
#>erase ALT3-1-1.noarch@system
#>erase ALT31-1-1.noarch@system
#>erase ALT32-1-1.noarch@system
#>erase ALT33-1-1.noarch@system
#>install CGE22-1-1.noarch@c
