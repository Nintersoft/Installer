[Setup]
AppId={{99AB7D2D-B097-47DA-968D-AEB579784EEC}
AppName=SmartClass
AppVersion=1.0.0.32
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/smartclass/
AppUpdatesURL=http://www.nintersoft.com/
AppCopyright=Copyright (C) 2013-2019 Nintersoft.
DefaultDirName={pf}\Nintersoft\SmartClass
DisableDirPage=yes
DefaultGroupName=SmartClass
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\SmartClass
OutputBaseFilename=smartclass-1.0.0.32_x86
SetupIconFile=C:\Users\Mauro\Documents\GitHub\SmartClass\images\logos\Logo.ico
LicenseFile=C:\Users\Mauro\Documents\Nintersoft\Licen�a de C�digo Aberto Nintersoft rev1-inst.rtf
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

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Documents\Completo\Extra\vc_redist.x86.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall; AfterInstall: InstMSVSC
Source: "C:\Users\Mauro\Documents\Completo\SmartClass\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

procedure InstMSVSC;
var
  ResultCode: Integer;       
begin
  if not FileExists(ExpandConstant('{sys}\MSVCP140.DLL'))
  then
    if not Exec(ExpandConstant('{tmp}\vc_redist.x86.exe'), '', '', SW_SHOWNORMAL,
      ewWaitUntilTerminated, ResultCode)
    then
      ExitProcess(1);
  if not FileExists(ExpandConstant('{sys}\MSVCP140.DLL'))
  then
  ExitProcess(1);
end;

[Icons]
Name: "{group}\SmartClass"; Filename: "{app}\SmartClass.exe"
Name: "{group}\Licen�a de c�digo aberto"; Filename: "{app}\Licen�a de C�digo Aberto Nintersoft rev1.pdf"
Name: "{group}\{cm:ProgramOnTheWeb,SmartClass}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,SmartClass}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\SmartClass"; Filename: "{app}\SmartClass.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\SmartClass"; Filename: "{app}\SmartClass.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\SmartClass.exe"; Description: "{cm:LaunchProgram,SmartClass}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec