unit Controllers.Config;

interface

uses Horse,
     System.JSON,
     System.SysUtils,
     DataModule.Global;

procedure RegistrarRotas;
procedure ListarConfig(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure RegistrarRotas;
begin
    THorse.Get('/configs', ListarConfig);
end;

procedure ListarConfig(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    dm: TDm;
begin
    try
        dm := TDm.Create(nil);

        Res.Send(dm.ListarConfig).Status(200);

    finally
        FreeAndNil(dm);
    end;
end;



end.
