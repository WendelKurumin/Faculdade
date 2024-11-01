unit Controllers.Usuario;

interface

uses Horse,
     System.JSON,
     System.SysUtils,
     DataModule.Global,
     ufunctions;

procedure RegistrarRotas;
procedure Login(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure RegistrarRotas;
begin
    THorse.Post('/usuarios/login', Login);
end;

procedure Login(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    dm: TDm;
    body: TJSONObject;
    fone: string;
begin
    try
        dm := TDm.Create(nil);
        body := Req.body<TJSONObject>;

        fone := body.getvalue<string>('fone', '');

        Res.Send(dm.Login(SomenteNUmero(fone))).Status(200);

    finally
        FreeAndNil(dm);
    end;
end;



end.

