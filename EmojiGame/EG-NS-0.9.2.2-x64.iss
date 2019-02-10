[Setup]
AppId={{5A1A3925-B846-4632-BE1E-20FB07644829}
AppName=EmojiGame
AppVersion=1.0.0.1
;AppPublisher=Nintersoft
;AppContact=http://www.nintersoft.com/suporte/contate-nos
;AppPublisherURL=http://www.nintersoft.com/
;AppSupportURL=http://docwiki.nintersoft.com/SmartClass/
;AppUpdatesURL=http://www.nintersoft.com/
;AppCopyright=Copyright (C) 2013-2018 Nintersoft.
DefaultDirName={pf}\EmojiGame
DisableDirPage=yes
DefaultGroupName=EmojiGame
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\EmojiGame
OutputBaseFilename=emojigame-1.0.0.1_x86
SetupIconFile=C:\Users\Mauro\Documents\EmojiGame\Images\Sunglasses_Emoji.ico
;LicenseFile=C:\Users\Mauro\Documents\Nintersoft\Licença de Código Aberto Nintersoft rev1-inst.rtf
UsePreviousAppDir=yes
UsePreviousGroup=yes
UsePreviousLanguage=yes
UsePreviousSetupType=yes
UsePreviousTasks=yes
UsePreviousUserInfo=yes
BackColor=$090067
BackSolid=yes
ChangesAssociations=yes
UninstallDisplayName=EmojiGame
UninstallDisplayIcon={app}\EmojiGame.exe
Compression=lzma2/max
SolidCompression=yes
;ArchitecturesInstallIn64BitMode = x64 ia64

[Languages]
;Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Documents\Completo\Extra\vcredist_2017\vc_redist.x86.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall; AfterInstall: InstMSVSC
Source: "C:\Users\Mauro\Documents\build-EmojiGame-Desktop_Qt_5_11_1_MSVC2015_32bit-Release\EmojiGame\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

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
Name: "{group}\EmojiGame"; Filename: "{app}\EmojiGame.exe"
Name: "{group}\Licença de código aberto"; Filename: "{app}\Licença de Código Aberto Nintersoft rev1.pdf"
;Name: "{group}\{cm:ProgramOnTheWeb,SmartClass}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,SmartClass}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\EmojiGame"; Filename: "{app}\EmojiGame.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\EmojiGame"; Filename: "{app}\EmojiGame.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\EmojiGame.exe"; Description: "{cm:LaunchProgram,EmojiGame}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
;Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec