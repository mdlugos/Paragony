object Faktura: TFaktura
  Left = 174
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Faktura'
  ClientHeight = 350
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 96
    Width = 73
    Height = 13
    Caption = 'NR_DOWODU'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 112
    Top = 96
    Width = 29
    Height = 13
    Caption = 'DATA'
  end
  object Label4: TLabel
    Left = 248
    Top = 96
    Width = 55
    Height = 13
    Caption = 'TERMIN_P'
  end
  object Label5: TLabel
    Left = 384
    Top = 96
    Width = 51
    Height = 13
    Caption = 'FORMA_P'
  end
  object Label6: TLabel
    Left = 24
    Top = 144
    Width = 61
    Height = 13
    Caption = 'LONGNAME'
  end
  object DBText1: TDBText
    Left = 96
    Top = 144
    Width = 433
    Height = 17
    DataField = 'LONGNAME'
    DataSource = DataSource2
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 520
    Height = 49
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 112
    Width = 64
    Height = 21
    DataField = 'NR_DOWODU'
    DataSource = DataSource1
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 312
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 248
    Top = 312
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 3
    Kind = bkCancel
  end
  object DBDateEdit1: TDBDateEdit
    Left = 112
    Top = 112
    Width = 121
    Height = 21
    DataField = 'DATA'
    DataSource = DataSource1
    NumGlyphs = 2
    TabOrder = 4
  end
  object DBDateEdit2: TDBDateEdit
    Left = 248
    Top = 112
    Width = 121
    Height = 21
    DataField = 'TERMIN_P'
    DataSource = DataSource1
    NumGlyphs = 2
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 384
    Top = 112
    Width = 145
    Height = 21
    DataField = 'FORMA_P'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'Gotówka'
      'Karta')
    TabOrder = 6
  end
  object MdDBGrid1: TMdDBGrid
    Left = 24
    Top = 176
    Width = 513
    Height = 113
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource2
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    CanModify = True
    CanSearch = True
    CanUseFilter = True
    CanUseIndex = True
  end
  object DataSource1: TDataSource
    DataSet = Faktury
    Left = 104
    Top = 16
  end
  object Faktury: TAdsTable
    Active = True
    DatabaseName = 'AdsConnection1'
    StoreActive = True
    AdsConnection = AdsConnection1
    AdsTableOptions.AdsLockType = Compatible
    AdsTableOptions.AdsCharType = OEM
    TableName = 'FAKTURY.DBF'
    TableType = ttAdsNTX
    Left = 64
    Top = 16
    object FakturyNR_DOWODU: TFloatField
      FieldName = 'NR_DOWODU'
    end
    object FakturyKONTRAHENT: TFloatField
      FieldName = 'KONTRAHENT'
    end
    object FakturyDATA: TDateField
      FieldName = 'DATA'
    end
    object FakturyTERMIN_P: TDateField
      FieldName = 'TERMIN_P'
    end
    object FakturyFORMA_P: TAdsStringField
      FieldName = 'FORMA_P'
    end
    object FakturyOPERATOR: TAdsStringField
      FieldName = 'OPERATOR'
      Size = 26
    end
    object FakturyBRUTTO: TFloatField
      FieldName = 'BRUTTO'
    end
  end
  object DataSource2: TDataSource
    DataSet = Firmy
    Left = 104
    Top = 48
  end
  object Firmy: TAdsTable
    Active = True
    DatabaseName = 'AdsConnection1'
    IndexDefs = <
      item
        Name = 'firm_num'
        Fields = 'NUMER_KOL'
      end>
    StoreActive = True
    AdsConnection = AdsConnection1
    AdsTableOptions.AdsLockType = Compatible
    AdsTableOptions.AdsCharType = OEM
    AdsTableOptions.AdsIndexPageSize = 1024
    FieldDefs = <
      item
        Name = 'NUMER_KOL'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NAZWA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LONGNAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ADRES'
        DataType = ftString
        Size = 79
      end
      item
        Name = 'KONTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'IDENT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'UWAGI'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'NAZWISKO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P_R'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CENNIK'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    ReadOnly = True
    TableName = 'FIRMY.DBF'
    TableType = ttAdsNTX
    Left = 64
    Top = 48
    object FirmyNUMER_KOL: TAdsStringField
      FieldName = 'NUMER_KOL'
      Size = 5
    end
    object FirmyNAZWA: TAdsStringField
      FieldName = 'NAZWA'
      Size = 15
    end
    object FirmyLONGNAME: TAdsStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object FirmyADRES: TAdsStringField
      FieldName = 'ADRES'
      Size = 79
    end
    object FirmyIDENT: TAdsStringField
      FieldName = 'IDENT'
      Size = 13
    end
    object FirmyNAZWISKO: TAdsStringField
      FieldName = 'NAZWISKO'
      Size = 30
    end
  end
  object AdsConnection1: TAdsConnection
    ConnectPath = 'E:\m\polok\kasy'
    AdsServerTypes = [stADS_LOCAL]
    LoginPrompt = False
    StoreConnected = False
    Compression = ccAdsCompressionNotSet
    CommunicationType = ctAdsDefault
    Left = 24
    Top = 16
  end
end
