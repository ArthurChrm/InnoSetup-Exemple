; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; Arthur CHERAMY 04/03/2019

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2AC639D4-C8F2-4421-8466-FAE1D6411374}
AppName=Cheramy-A
AppVersion=1.0
;AppVerName=Cheramy-A 1.0
AppPublisher=Cheramy-A Soft Inc.
AppPublisherURL=http://www.Cheramy-A.net/
AppSupportURL=http://www.Cheramy-A.net/
AppUpdatesURL=http://www.Cheramy-A.net/
DefaultDirName={pf}\Cheramy-A 1.0 de Cheramy-A Soft Inc.
DisableProgramGroupPage=yes
LicenseFile=C:\Cheramy-A\Application\Licences\LicenceFR.rtf
OutputDir=C:\Cheramy-A\Installation
OutputBaseFilename=CheramyASetup
SetupIconFile=C:\Cheramy-A\Application\Calc.ico
Password=ayoye
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\Desinstaller.ico

[Components]
Name: "cheramya"; Description: "Application CheramyA"; Types: full compact custom; ExtraDiskSpaceRequired: 20068214; Flags: fixed
Name: "user"; Description: "User's guide"; Types: full compact custom; Languages: english
Name: "usager"; Description: "Guide de l'usager"; Types: full compact custom; Languages: french
Name: "readme"; Description: "Readme file"; Types: full compact custom; Languages: english
Name: "lisezmoi"; Description: "Fichier lisezmoi"; Types: full compact custom; Languages: french

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: C:\Cheramy-A\Application\Licences\LicenseEN.rtf
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile: C:\Cheramy-A\Application\Licences\LicenceFR.rtf

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Cheramy-A\Application\Calc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Cheramy-A\Application\Calc.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Cheramy-A\Application\Calc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Cheramy-A\Application\Calc.hlp"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Cheramy-A\Application\Calc.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "Desinstaller.ico"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\Cheramy-A\Application\Guides\PDFFile.ico"; DestDir: "{app}\User's guide"; Components: user; Languages: english
Source: "C:\Cheramy-A\Application\Guides\User guide.pdf"; DestDir: "{app}\User's guide"; Components: user; Languages: english

Source: "C:\Cheramy-A\Application\Guides\Guide usager.pdf"; DestDir: "{app}\Guide de l'usager"; Components: usager; Languages: french
Source: "C:\Cheramy-A\Application\Guides\PDFFile.ico"; DestDir: "{app}\Guide de l'usager"; Components: usager; Languages: french

Source: "C:\Cheramy-A\Application\Readmes\Readme.ico"; DestDir: "{app}\Readme file"; Components: readme; Languages: english
Source: "C:\Cheramy-A\Application\Readmes\Readme.txt"; DestDir: "{app}\Readme file"; Components: readme; Languages: english

Source: "C:\Cheramy-A\Application\Readmes\Readme.ico"; DestDir: "{app}\Fichier lisez-moi"; Components: lisezmoi; Languages: french
Source: "C:\Cheramy-A\Application\Readmes\Lisez-moi.txt"; DestDir: "{app}\Fichier lisez-moi"; Components: lisezmoi; Languages: french

Source: "C:\Cheramy-A\Archive\folder.ico"; DestDir: "{app}\Archive"; Flags: ignoreversion
Source: "C:\Cheramy-A\Archive\TP1\*.*"; DestDir: "{app}\Archive\TP1"; Flags: ignoreversion
Source: "C:\Cheramy-A\Archive\TP2\*.*"; DestDir: "{app}\Archive\TP2"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Cheramy-A"; Filename: "{app}\Calc.exe"; IconFilename: "{app}\Calc.ico"
Name: "{commondesktop}\Cheramy-A"; Filename: "{app}\Calc.exe"; Tasks: desktopicon

Name: "{group}\User's Guide"; Filename: "{app}\User's Guide\User guide.pdf"; IconFilename: "{app}\User's guide\PDFFile.ico"; Components: user; Languages: english
Name: "{group}\Guide de l'usager"; Filename: "{app}\Guide de l'usager\Guide usager.pdf"; IconFilename: "{app}\Guide de l'usager\PDFFile.ico"; Components: user; Languages: french

Name: "{group}\Readme file"; Filename: "{app}\Readme file\Readme.txt"; IconFilename: "{app}\Readme file\Readme.ico"; Components: readme; Languages: english
Name: "{group}\Fichier lisez-moi"; Filename: "{app}\Fichier lisez-moi\Lisez-moi.txt"; IconFilename: "{app}\Fichier lisez-moi\Readme.ico"; Components: readme; Languages: french





Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Cheramy-A"; Filename: "{app}\Calc.exe"; Tasks: quicklaunchicon

Name: "{group}\{cm:UninstallProgram,CheramyA}"; Filename: "{uninstallexe}"; IconFilename: "C:\Cheramy-A\Installation\Desinstaller.ico"
Name: "{group}\{cm:ProgramOnTheWeb,CheramyA}"; Filename: "http://www.Cheramy-A.net/"; IconFilename: "C:\Cheramy-A\Installation\SiteWeb.ico"

[Registry]
Root:HKCU; Subkey: "Software\Cheramy-A"; Flags: uninsdeletekey
Root:HKCU; Subkey: "Software\Cheramy-A\Langue"; ValueType: string; ValueName: "Langue"; ValueData: "{language}"
Root:HKCU; Subkey: "Software\Cheramy-A\Num�ro"; ValueType: dword; ValueName: "Num�ro"; ValueData: "1"

[Run]
Filename: "{app}\Readme file\Readme.txt"; Description: "Read Readme file"; Flags: shellexec waituntilterminated postinstall; Components: readme; Languages: english
Filename: "{app}\Fichier Lisez-moi\Lisez-moi.txt"; Description: "Lire le fichier Lisez-moi"; Flags: shellexec waituntilterminated postinstall; Components: readme; Languages: french
Filename: "{app}\Calc.exe"; Description: "{cm:LaunchProgram,Cheramy-A}"; Flags: nowait postinstall skipifsilent

