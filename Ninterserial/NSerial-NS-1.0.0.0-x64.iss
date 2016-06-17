[Setup]
AppId={{FA42DA9E-E371-46DB-9F7A-234BC36FA005}
AppName=Ninterserial
AppVersion=1.0.0.0
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/Ninterserial/
AppUpdatesURL=http://www.nintersoft.com/
AppCopyright=Copyright (C) 2013-2016 Nintersoft.
DefaultDirName={pf}\Nintersoft\Ninterserial
DisableDirPage=yes
DefaultGroupName=Ninterserial
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\Ninterserial
OutputBaseFilename=Ninterserial-1.0.0.0_x64
SetupIconFile=C:\Users\Mauro\Documents\GitHub\Ninterserial\imgs\Ninterserial.ico
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
UninstallDisplayName=Ninterserial
UninstallDisplayIcon={app}\Ninterserial.exe
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
Source: "C:\Users\Mauro\Documents\Completo\Ninterserial\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

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
Name: "{group}\Ninterserial"; Filename: "{app}\Ninterserial.exe"
Name: "{group}\Licença de código aberto"; Filename: "{app}\Licença de Código Aberto Nintersoft rev1.pdf"
Name: "{group}\{cm:ProgramOnTheWeb,Ninterserial}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,Ninterserial}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Ninterserial"; Filename: "{app}\Ninterserial.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Minterserial"; Filename: "{app}\Ninterserial.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Ninterserial.exe"; Description: "{cm:LaunchProgram,Ninterserial}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec