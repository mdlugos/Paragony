unit Fak;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  adscnnct, Db, adsdata, adsfunc, adstable, StdCtrls, RxDBComb, ToolEdit,
  RXDBCtrl, Buttons, DBCtrls, Mask, ExtCtrls, Grids, DBGrids, MdDBGrid;

type
  TFaktura = class(TForm)
    DataSource1: TDataSource;
    Faktury: TAdsTable;
    DataSource2: TDataSource;
    Firmy: TAdsTable;
    AdsConnection1: TAdsConnection;
    FakturyNR_DOWODU: TFloatField;
    FakturyKONTRAHENT: TFloatField;
    FakturyDATA: TDateField;
    FakturyTERMIN_P: TDateField;
    FakturyFORMA_P: TAdsStringField;
    FakturyOPERATOR: TAdsStringField;
    FakturyBRUTTO: TFloatField;
    FirmyNUMER_KOL: TAdsStringField;
    FirmyNAZWA: TAdsStringField;
    FirmyLONGNAME: TAdsStringField;
    FirmyADRES: TAdsStringField;
    FirmyIDENT: TAdsStringField;
    FirmyNAZWISKO: TAdsStringField;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBComboBox1: TDBComboBox;
    DBText1: TDBText;
    MdDBGrid1: TMdDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faktura: TFaktura;

implementation

{$R *.DFM}

end.
