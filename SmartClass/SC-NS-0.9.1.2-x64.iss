[Setup]
AppId={{B9117D43-16E8-487A-9795-47068087BE65}
AppName=SmartClass
AppVersion=0.9.1.2
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/SmartClass/
AppUpdatesURL=http://www.nintersoft.com/
AppCopyright=Copyright (C) 2013-2018 Nintersoft.
DefaultDirName={pf}\Nintersoft\SmartClass
DisableDirPage=yes
DefaultGroupName=SmartClass
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\SmartClass
OutputBaseFilename=SmartClass-0.9.1.2_x64
SetupIconFile=C:\Users\Mauro\Documents\GitHub\SmartClass\images\logos\Logo.ico
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
UninstallDisplayName=SmartClass
UninstallDisplayIcon={app}\SmartClass.exe
Compression=lzma2/max
SolidCompression=yes
ArchitecturesInstallIn64BitMode = x64 ia64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Documents\Completo\Extra\vc_redist.x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall; AfterInstall: InstMSVSC
Source: "C:\Users\Mauro\Documents\Completo\SmartClass_x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

procedure InstMSVSC;
var
  ResultCode: Integer;       
begin
  if not FileExists(ExpandConstant('{sys}\MSVCP140.DLL'))
  then
    if not Exec(ExpandConstant('{tmp}\vc_redist.x64.exe'), '', '', SW_SHOWNORMAL,
      ewWaitUntilTerminated, ResultCode)
    then
      ExitProcess(1);
  if not FileExists(ExpandConstant('{sys}\MSVCP140.DLL'))
  then
  ExitProcess(1);
end;

[Icons]
Name: "{group}\SmartClass"; Filename: "{app}\SmartClass.exe"
Name: "{group}\Licença de código aberto"; Filename: "{app}\Licença de Código Aberto Nintersoft rev1.pdf"
Name: "{group}\{cm:ProgramOnTheWeb,SmartClass}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,SmartClass}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\SmartClass"; Filename: "{app}\SmartClass.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\SmartClass"; Filename: "{app}\SmartClass.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\SmartClass.exe"; Description: "{cm:LaunchProgram,SmartClass}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec