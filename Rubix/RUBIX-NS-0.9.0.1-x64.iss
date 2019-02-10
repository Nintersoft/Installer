[Setup]
AppId={{3C736267-B09E-4DB4-9F7C-0DA77A32284C}
AppName=Rubix
AppVersion=0.9.0.1                
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/cubo-magico/
AppUpdatesURL=http://www.nintersoft.com/
AppCopyright=Copyright (C) 2013-2016 Nintersoft.
DefaultDirName={pf}\Nintersoft\Rubix
DisableDirPage=yes
DefaultGroupName=Rubix
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\Rubix
OutputBaseFilename=rubix-0.9.0.1_x64
SetupIconFile=C:\Users\Mauro\Documents\GitHub\rubix\Images\Icon.ico
LicenseFile=C:\Users\Mauro\Documents\Completo\Rubix\LICENSE.txt
UsePreviousAppDir=yes
UsePreviousGroup=yes
UsePreviousLanguage=yes
UsePreviousSetupType=yes
UsePreviousTasks=yes
UsePreviousUserInfo=yes
BackColor=$090067
BackSolid=yes
ChangesAssociations=yes
UninstallDisplayName=Rubix
UninstallDisplayIcon={app}\Rubix.exe
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
Source: "C:\Users\Mauro\Documents\Completo\Rubix\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

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
Name: "{group}\Rubix"; Filename: "{app}\Rubix.exe"
Name: "{group}\Open source code license"; Filename: "{app}\LICENSE.txt"
Name: "{group}\{cm:ProgramOnTheWeb,Rubix}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,Rubix}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Rubix"; Filename: "{app}\Rubix.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Rubix"; Filename: "{app}\Rubix.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Rubix.exe"; Description: "{cm:LaunchProgram,Rubix}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec