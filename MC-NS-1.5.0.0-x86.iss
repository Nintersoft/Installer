; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B1E32627-C188-470C-BF4F-BC4EFE67B1A2}
AppName=Microcontador
AppVersion=1.5.0.0
;AppVerName=Microcontador 1.5.0.0
AppPublisher=Nintersoft
AppPublisherURL=http://www.nintersoft.ml/
AppSupportURL=http://www.nintersoft.ml/
AppUpdatesURL=http://www.nintersoft.ml/
DefaultDirName={pf}\Microcontador
DefaultGroupName=Microcontador
OutputDir=C:\Users\Mauro\Desktop\MCCompilado
OutputBaseFilename=Microcontador-1.5.0.0_x86
SetupIconFile=C:\Users\Mauro\Pictures\ns-logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Desktop\Microcontador\bin\Microcontador.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mauro\Desktop\Microcontador\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Microcontador"; Filename: "{app}\Microcontador.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Microcontador}"; Filename: "http://www.nintersoft.ml/"
Name: "{group}\{cm:UninstallProgram,Microcontador}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Microcontador"; Filename: "{app}\Microcontador.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Microcontador"; Filename: "{app}\Microcontador.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Microcontador.exe"; Description: "{cm:LaunchProgram,Microcontador}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.ml/suporte/; Flags: shellexec
