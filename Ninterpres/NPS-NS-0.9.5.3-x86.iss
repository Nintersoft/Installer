[Setup]
AppId={{316609D0-2D62-4FA3-9BA6-3CCEA307E349}
AppName=Ninterpres
AppVersion=0.9.5.3
AppPublisher=Nintersoft
AppContact=http://www.nintersoft.com/suporte/contate-nos
AppPublisherURL=http://www.nintersoft.com/
AppSupportURL=http://docwiki.nintersoft.com/ninterpres/
AppUpdatesURL=http://www.nintersoft.com/projetos/ninterpres
AppCopyright=Copyright (C) 2013-2016 Nintersoft.
DefaultDirName={pf}\Nintersoft\Ninterpres
DisableDirPage=yes
DefaultGroupName=Ninterpres
AllowNoIcons=yes
OutputDir=C:\Users\Mauro\Desktop\Compilado
OutputBaseFilename=Ninterpres_0.9.5.3_BETA
SetupIconFile=C:\Users\Mauro\Documents\GitHub\Ninterpres\IMGS\Logo\NPS-50px.ico
LicenseFile=C:\Users\Mauro\Documents\Nintersoft\Licença de Código Aberto Nintersoft rev1-inst.rtf
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=yes
UsePreviousGroup=yes
UsePreviousLanguage=yes
UsePreviousSetupType=yes
UsePreviousTasks=yes
UsePreviousUserInfo=yes
BackColor=$FDAC00
BackSolid=yes
ChangesAssociations=yes
UninstallDisplayName=Ninterpres

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Registry]
Root: HKCR; Subkey: ".nps"; ValueType: string; ValueName: ""; ValueData: "Apresentação Ninterpres"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Apresentação Ninterpres"; ValueType: string; ValueName: ""; ValueData: "Arquivo de apresentação Ninterpres"; Flags: uninsdeletekey 
Root: HKCR; Subkey: "Apresentação Ninterpres\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Ninterpres.exe,0" 
Root: HKCR; Subkey: "Apresentação Ninterpres\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Ninterpres.exe"" ""%1""" 
Root: HKCR; Subkey: "Apresentação Ninterpres\shell\edit"; ValueType: string; ValueName: ""; ValueData: "Editar arquivo de apresentação"
Root: HKCR; Subkey: "Apresentação Ninterpres\shell\edit\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Ninterpres.exe"" ""%1""" 

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Mauro\Documents\Completo\Ninterpres\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Ninterpres"; Filename: "{app}\Ninterpres.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Ninterpres}"; Filename: "http://www.nintersoft.com/"
Name: "{group}\{cm:UninstallProgram,Ninterpres}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Ninterpres"; Filename: "{app}\Ninterpres.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Ninterpres"; Filename: "{app}\Ninterpres.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Ninterpres.exe"; Description: "{cm:LaunchProgram,Ninterpres}"; Flags: nowait postinstall skipifsilent

[code]
function InitializeSetup(): boolean;
var
  ResultCode: integer;
begin

	if FileExists('{app}\unins000.exe') then
	begin
		if Exec(ExpandConstant('{app}\unins000.exe'), '', '', SW_SHOW,
			ewWaitUntilTerminated, ResultCode) then
		begin
		end
		else begin
		end;
	end;

	Result := True;

end;

[UninstallRun]
Filename: http://www.nintersoft.com/suporte/por-que-voce-nos-deixou/; Flags: shellexec

