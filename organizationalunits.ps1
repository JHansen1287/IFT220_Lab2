# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the MD initials to match or remove them

Write-HoMD -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name MD_Computers -Path "DC=ad,DC=jhanse23,DC=com" -Description "MD Computers"
 New-ADOrganizationalUnit -Name WorkMDations -Path "OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkMDations,OU=MD_Computers_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkMDations,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkMDations,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkMDations,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkMDations,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkMDations,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
 New-ADOrganizationalUnit -Name Servers -Path "OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=MD_Computers,DC=AD,DC=jhanse23,DC=com"
New-ADOrganizationalUnit -Name MD_Groups -Path "DC=AD,DC=jhanse23,DC=com" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name MD_Privileged_Accounts -Path "DC=AD,DC=jhanse23,DC=com" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name MD_Users -Path "DC=AD,DC=jhanse23,DC=com" -Description "Non-Privileged Accounts"
Write-HoMD -ForegroundColor yellow "Done creating OUs"
Write-HoMD -ForegroundColor yellow ""

Write-HoMD -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
# Create a Leadership group for the President and VPs to access reMDricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=MD_Groups,DC=AD,DC=jhanse23,DC=com"
Write-HoMD -ForegroundColor yellow "Done creating groups"
Write-HoMD -ForegroundColor yellow ""
