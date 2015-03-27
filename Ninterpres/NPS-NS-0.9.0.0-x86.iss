; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5883483E-BA35-4C56-95B8-2490FEB93427}
AppName=Ninterpres
AppVersion=0.9
;AppVerName=Ninterpres 0.9
AppPublisher=Nintersoft
AppPublisherURL=http://www.nintersoft.ml/
AppSupportURL=http://www.nintersoft.ml/suporte/
AppUpdatesURL=http://www.nintersoft.ml/
DefaultDirName={pf}\Ninterpres
DisableDirPage=yes
DefaultGroupName=Ninterpres
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\Ninterpres\Compilado
OutputBaseFilename=Ninterpres_0.9_BETA
SetupIconFile=C:\Users\Mauro\Documents\GitHub\Ninterpres\Logo\NPS_Logo_50.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Desktop\Ninterpres\Ninterpres.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mauro\Desktop\Ninterpres\BIN\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Ninterpres"; Filename: "{app}\Ninterpres.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Ninterpres}"; Filename: "http://www.nintersoft.ml/"
Name: "{group}\{cm:UninstallProgram,Ninterpres}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Ninterpres"; Filename: "{app}\Ninterpres.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Ninterpres"; Filename: "{app}\Ninterpres.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Ninterpres.exe"; Description: "{cm:LaunchProgram,Ninterpres}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.ml/suporte/; Flags: shellexec