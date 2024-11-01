unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TFrmPrincipal = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses Horse,
     Horse.Jhonson,
     Horse.CORS,
     Horse.ServerStatic,
     Horse.Upload,
     Controllers.Usuario,
     Controllers.Pedido,
     Controllers.Categoria,
     Controllers.Produto,
     Controllers.Config;


procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
    THorse.Use(Jhonson());
    THorse.Use(CORS);
    THorse.Use(Upload);
    THorse.Use(ServerStatic('Fotos'));

    Controllers.Usuario.RegistrarRotas;
    Controllers.Pedido.RegistrarRotas;
    Controllers.Categoria.RegistrarRotas;
    Controllers.Produto.RegistrarRotas;
    Controllers.Config.RegistrarRotas;

    THorse.Listen(9030);
end;

end.