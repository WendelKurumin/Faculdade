object Dm: TDm
  OnCreate = DataModuleCreate
  Height = 325
  Width = 398
  object Conn: TFDConnection
    Params.Strings = (
      'Database=C:\BrKSistemas\DBASE\MOBILEFC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 72
    Top = 48
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 184
    Top = 144
  end
end
