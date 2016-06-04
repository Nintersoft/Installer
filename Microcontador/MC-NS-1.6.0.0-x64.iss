[Setup]
AppId={{B1E32627-C188-470C-BF4F-BC4EFE67B1A2}
AppName=Microcontador
AppVersion=1.6.0.0                
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/Microcontador/
AppUpdatesURL=http://www.nintersoft.com/
AppCopyright=Copyright (C) 2013-2016 Nintersoft.
DefaultDirName={pf}\Nintersoft\Microcontador
DisableDirPage=yes
DefaultGroupName=Microcontador
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\Microcontador
OutputBaseFilename=Microcontador-1.6.0.0_x64
SetupIconFile=C:\Users\Mauro\Documents\GitHub\Microcontador\imgs\Microcontador.ico
LicenseFile=C:\Users\Mauro\Documents\Nintersoft\Licença de Código Aberto Nintersoft rev1-inst.rtf
UsePreviousAppDir=yes
UsePreviousGroup=yes
UsePreviousLanguage=yes
UsePreviousSetupType=yes
UsePreviousTasks=yes
UsePreviousUserInfo=yes
BackColor=$090067
BackSolid=yes
ChangesAssociations=yes
UninstallDisplayName=Microcontador
UninstallDisplayIcon={app}\Despertador.exe
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode = x64 ia64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Documents\Completo\Microcontador\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Microcontador"; Filename: "{app}\Despertador.exe"
Name: "{group}\Licença de código aberto"; Filename: "{app}\Licença de Código Aberto Nintersoft rev1.pdf"
Name: "{group}\{cm:ProgramOnTheWeb,Microcontador}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,Microcontador}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Microcontador"; Filename: "{app}\Despertador.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Microcontador"; Filename: "{app}\Despertador.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Despertador.exe"; Description: "{cm:LaunchProgram,Microcontador}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec