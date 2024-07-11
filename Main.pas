unit Main;
interface

uses
  Windows, Messages, ShellApi, FileCtrl, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, ComCtrls, Grids, Db, DBGrids, Buttons, StdCtrls,
  Menus, OleCtrls, Math, Placemnt,StrUtils, RXDBCtrl, MdDBGrid, ActnList,
  adsdata, adsset, adsfunc, adstable, adscnnct, ImgList, StdActns, DBCtrls,
{$ifdef ELZAB}
  winomeg,
{$endif}
{$ifdef ELAVON}
  ECRUtilATLLib_TLB,
{$endif}
  CPort, CPortCtl, RXCtrls, DBCGrids, Clipbrd, ToolEdit, Mask, FR_Class,
  FR_DSet, FR_PARS, FR_DBSet, jpeg, FR_Desgn, FR_ADSDB, FR_DCtrl, FR_Cross,
  FR_RRect, FR_BarC, FR_Shape, FR_ChBox, FR_Rich, frFunction, RxMemDS,
  ScktComp, StrHlder;

type
  TMainForm = class(TForm)
    ComPort1: TComPort;
    DSParagony: TDataSource;
    Paragony: TAdsTable;
    FormStorage1: TFormStorage;
    Utarg: TAdsTable;
    ParagonyINDEX: TAdsStringField;
    ParagonyILOSC: TFloatField;
    ParagonyCENA: TFloatField;
    ParagonySTAWKA: TAdsStringField;
    ParagonyRABAT_KWOT: TFloatField;
    ParagonyRABAT_PROC: TFloatField;
    ActionList1: TActionList;
    AGotowka: TAction;
    ARazem: TAction;
    ATowar: TAction;
    AIle: TAction;
    AdsConnection1: TAdsConnection;
    ImageList1: TImageList;
    ParagonyNAZWA: TStringField;
    ParagonyWARTOSC: TFloatField;
    ParagonyJM: TStringField;
    AStorno: TAction;
    AEsc: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Cennik: TAdsTable;
    CennikINDEX: TAdsStringField;
    CennikNAZWA: TAdsStringField;
    CennikJM: TAdsStringField;
    CennikCENA: TFloatField;
    CennikSTAWKA: TAdsStringField;
    CennikWAZNOSC: TSmallintField;
    CennikPROMOCJA: TBooleanField;
    CennikTANDEM: TAdsStringField;
    Ceny: TAdsTable;
    DSCeny: TDataSource;
    ARabat: TAction;
    AStorPoz: TAction;
    AZwrotKa: TAction;
    Utargi: TAdsTable;
    AKasjer: TAction;
    AKarta: TAction;
    ASzuflada: TAction;
    AWyplata: TAction;
    AZwrot: TAction;
    ComPortScanner: TComPort;
    ComDataPacketScaner: TComDataPacket;
    ComPortWaga: TComPort;
    AWplata: TAction;
    AWaga: TAction;
    ARozkaz: TAction;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    AdsSettings1: TAdsSettings;
    ARFD: TAction;
    ABon1: TAction;
    ABon2: TAction;
    AOpakowanie: TAction;
    AKod: TAction;
    Job: TAdsTable;
    ARFO: TAction;
    CenyINDEX: TAdsStringField;
    CenyNAZWA: TAdsStringField;
    CenyJM: TAdsStringField;
    CenyCENA: TFloatField;
    CenySTAWKA: TAdsStringField;
    CenyTANDEM: TAdsStringField;
    ALogout: TAction;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Wklej1: TMenuItem;
    Kopiuj1: TMenuItem;
    KopiujObraz1: TMenuItem;
    Edytuj1: TMenuItem;
    Usu1: TMenuItem;
    Panel2: TPanel;
    PageControl1: TPageControl;
    ts0: TTabSheet;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Enter: TSpeedButton;
    Ile: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    Rabat: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Label4: TLabel;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    ts1: TTabSheet;
    StringGrid1: TStringGrid;
    ts2: TTabSheet;
    StringGrid2: TStringGrid;
    ts3: TTabSheet;
    StringGrid3: TStringGrid;
    ts4: TTabSheet;
    StringGrid4: TStringGrid;
    ts5: TTabSheet;
    StringGrid5: TStringGrid;
    ts6: TTabSheet;
    tsABC: TTabSheet;
    MdDBGrid2: TMdDBGrid;
    tsSpec: TTabSheet;
    SpeedButton58: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Klawiatura: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    StringGrid6: TStringGrid;
    AFak: TAction;
    left: TSpeedButton;
    right: TSpeedButton;
    SpeedButton15: TSpeedButton;
    bs: TSpeedButton;
    DBText5: TDBText;
    DM: TAdsTable;
    MAIN: TAdsTable;
    DSDM: TDataSource;
    MAINSMB_DOW: TAdsStringField;
    MAINNR_DOWODU: TAdsStringField;
    MAINPOZYCJA: TAdsStringField;
    MAININDEX: TAdsStringField;
    MAINILOSC: TFloatField;
    MAINILOSC_F: TFloatField;
    MAINWARTOSC: TFloatField;
    MAINCENA: TFloatField;
    MAINPROC_VAT: TAdsStringField;
    MAINNR_ZLEC: TAdsStringField;
    MAINDATA: TDateField;
    MAINNR_MAG: TAdsStringField;
    frReport1: TfrReport;
    MAINNAZWA: TStringField;
    MAINJM: TStringField;
    MAINCENA_C: TFloatField;
    SpeedButton23: TSpeedButton;
    AKluczyk: TAction;
    APercentClick: TAction;
    AdsConnection2: TAdsConnection;
    CennikCENA_H: TFloatField;
    CenyCENA_H: TFloatField;
    HurtBtn: TSpeedButton;
    ACenHurt: TAction;
    Panel4: TPanel;
    OldCen: TAdsTable;
    DSOldCen: TDataSource;
    Indeksy: TAdsTable;
    frRichObject1: TfrRichObject;
    frCheckBoxObject1: TfrCheckBoxObject;
    frShapeObject1: TfrShapeObject;
    frBarCodeObject1: TfrBarCodeObject;
    frRoundRectObject1: TfrRoundRectObject;
    frCrossObject1: TfrCrossObject;
    frDialogControls1: TfrDialogControls;
    frADSComponents1: TfrADSComponents;
    SpeedButton60: TSpeedButton;
    OldCenINDEX: TAdsStringField;
    OldCenCENA: TFloatField;
    OldCenCZAS: TAdsStringField;
    OldCenNAZWA: TStringField;
    OldCenJM: TStringField;
    OldCenNOWA_CENA: TFloatField;
    CenyRABAT: TFloatField;
    CennikRABAT: TFloatField;
    Panel3: TPanel;
    frAddFunctionLibrary1: TfrAddFunctionLibrary;
    Firmy: TAdsTable;
    FirmyNUMER_KOL: TAdsStringField;
    FirmyNAZWA: TAdsStringField;
    FirmyLONGNAME: TAdsStringField;
    FirmyADRES: TAdsStringField;
    FirmyKONTO: TAdsStringField;
    FirmyIDENT: TAdsStringField;
    FirmyUWAGI: TMemoField;
    FirmyNAZWISKO: TAdsStringField;
    FirmyP_R: TAdsStringField;
    FirmyCENNIK: TAdsStringField;
    frDM: TfrDBDataSet;
    frMAIN: TfrDBDataSet;
    MdDBGrid1: TMdDBGrid;
    Panel5: TPanel;
    FakBtn: TSpeedButton;
    CenHisBtn: TSpeedButton;
    PelnyEkranBtn: TSpeedButton;
    SpeedButton16: TSpeedButton;
    AProjFakt: TAction;
    ProjFakBtn: TSpeedButton;
    SpeedButton24: TSpeedButton;
    ACena: TAction;
    calc: TSpeedButton;
    ACalc: TAction;
    StringGrid0: TStringGrid;
    CenyWAZNOSC: TSmallintField;
    CenyPROMOCJA: TBooleanField;
    SpeedButton111: TSpeedButton;
    SpeedButton122: TSpeedButton;
    SpeedButton110: TSpeedButton;
    SpeedButton109: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton107: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton105: TSpeedButton;
    SpeedButton104: TSpeedButton;
    SpeedButton103: TSpeedButton;
    SpeedButton102: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    SpeedButton123: TSpeedButton;
    BtnOK: TBitBtn;
    SpeedButton125: TSpeedButton;
    SpeedButton124: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SpeedButton121: TSpeedButton;
    SpeedButton114: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton113: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton117: TSpeedButton;
    SpeedButton116: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton115: TSpeedButton;
    SpeedButton120: TSpeedButton;
    SpeedButton84: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton119: TSpeedButton;
    SpeedButton118: TSpeedButton;
    ParJob: TAdsTable;
    ParJobINDEX: TAdsStringField;
    ParJobILOSC: TFloatField;
    ParJobCENA: TFloatField;
    ParJobSTAWKA: TAdsStringField;
    ParJobRABAT_KWOT: TFloatField;
    ParJobRABAT_PROC: TFloatField;
    ParJobNAZWA: TStringField;
    ParJobJM: TStringField;
    ParJobWARTOSC: TFloatField;
    FakPrzelBtn: TSpeedButton;
    frDesigner1: TfrDesigner;
    SpeedButton25: TSpeedButton;
    procedure ACenaExecute(Sender: TObject);
    procedure CyfraClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DisplayChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rightClick(Sender: TObject);
    procedure AGotowkaExecute(Sender: TObject);
    procedure ARazemExecute(Sender: TObject);
    procedure ATowarExecute(Sender: TObject);
    procedure AIleExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure SpeedButton23Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure ParagonyCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AStornoExecute(Sender: TObject);
    procedure AEscExecute(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure ARabatExecute(Sender: TObject);
    procedure AStorPozExecute(Sender: TObject);
    procedure AZwrotKaExecute(Sender: TObject);
    procedure ActionIdle(Action: TBasicAction;
      var Handled: Boolean);
    procedure AKasjerExecute(Sender: TObject);
    procedure AKartaExecute(Sender: TObject);
    procedure ASzufladaExecute(Sender: TObject);
    procedure AWyplataExecute(Sender: TObject);
    procedure AZwrotExecute(Sender: TObject);
    procedure ComDataPacketScanerPacket(Sender: TObject; const Str: String);
    procedure AWplataExecute(Sender: TObject);
    procedure AWagaExecute(Sender: TObject);
    procedure ARozkazExecute(Sender: TObject);
    procedure AKoniecExecute(Sender: TObject);
    procedure StringGrid0Click(Sender: TObject);
    procedure StringGrid0DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ARFDExecute(Sender: TObject);
    procedure ABon1Execute(Sender: TObject);
    procedure AOpakowanieExecute(Sender: TObject);
    procedure AKodExecute(Sender: TObject);
    procedure KlawiaturaClick(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure ARFOExecute(Sender: TObject);
    procedure APaneleExecute(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure ALogoutExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Wklej1Click(Sender: TObject);
    procedure Kopiuj1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure KopiujObraz1Click(Sender: TObject);
    procedure StringGrid0KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edytuj1Click(Sender: TObject);
    procedure Usu1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure AFakExecute(Sender: TObject);
    procedure AKluczykExecute(Sender: TObject);
    procedure PelnyEkranBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ts4Show(Sender: TObject);
    procedure A2Update(Sender: TObject);
    procedure A3Update(Sender: TObject);
    procedure AWplataUpdate(Sender: TObject);
    procedure AZwrotUpdate(Sender: TObject);
    procedure AFakUpdate(Sender: TObject);
    procedure AGotowkaUpdate(Sender: TObject);
    procedure ARabatUpdate(Sender: TObject);
    procedure ARazemUpdate(Sender: TObject);
    procedure ProcentClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsABCShow(Sender: TObject);
    procedure APercentClickUpdate(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure FirmyBeforeEdit(DataSet: TDataSet);
    procedure FirmyBeforeInsert(DataSet: TDataSet);
    procedure SpeedButton125Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure ACenHurtExecute(Sender: TObject);
    procedure DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCtrlGrid1Enter(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure ParagonyRABAT_PROCGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CenHisBtnClick(Sender: TObject);
    procedure AProjFakUpdate(Sender: TObject);
    procedure ProjFakBtnClick(Sender: TObject);
    procedure OldCenINDEXGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure MdDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormResize(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure MdDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MdDBGrid1EditButtonClick(Sender: TObject);
    procedure calcClick(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
{$ifdef MULTIPAR}
    procedure AMemoryExecute(Sender: TObject);
    procedure AMemoryUpdate(Sender: TObject);
    procedure MdDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoryAfterInsert(DataSet: TDataSet);
    procedure MemoryBeforeDelete(DataSet: TDataSet);
{$endif}    
    procedure ABon2Execute(Sender: TObject);
  private
    { Private declarations }
    KeyFlag: Boolean;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure fixutarg;
    //procedure WMPaste(var Msg: TWMPaste); message WM_PASTE;
  public
    { Public declarations }
    DisplayList, ErrorList: TStringList;
    procedure ReadPictures;
    procedure OpenTables;
    procedure Towar(buf: String);
    procedure ZerujP(Sh: Boolean);
    function Razem():THandle;
    function Showline(new: Boolean ):Variant; // default True
    procedure koniec_z(k: Integer);
    procedure PrintLine(v: Variant);
    procedure PrintDeposit();
    procedure PrintHeader();
    procedure PrintSubTotDisc();
    procedure PrintUpToNow();
  end;

var
  MainForm: TMainForm;

implementation

uses RFO, UnitSp;

{$R *.DFM}
{$ifdef ZAGRODA}
  {$define MULTIPAR}
  {$define NOPRINT}
  {$define PUNKTY}
  {$define STANY}
  {$define SCANKLAW}
//  {$define ELZAB}
{$else}
{$ifdef BAR}
  {$define MULTIPAR}
  {$define HURT}
{$else}
//  {$define MULTIPAR}
  {$define HURT}
  {$define KLAWBEETLE}
  {$define OLDCEN}
{$endif}
{$endif}

type TKar = record
  kak, kan: string;
  il,ka,p: currency; //1-wydane, -1 przyjete
end;

//TaString = array of string;

Tdr = ( None, Thermal , Posnet, Farex, Elzab );

type TAk = record
  Tow, Kak, Kan, Nb, nz, firmy_naz, firmy_adr, firmy_nip, firmy_fak, prior_nip :string;
  il,ilp,rk,ce,w,ws,ts,rzp,rzk,rzt,rp,ka,ki,tp,tk,tz,tkz,rt,rkt,rpt,rs,rks,rps,rkp,wc,wb,wg,wk: Currency;
  // rk, rs, rks, rt, rkt rabat kwotowy pozycji i podsumy;
  // rp, rps, rpt rabat proc pozycji i podsumy;
  // rkp rabat kwotowy suma pozycji rabatowych zawarta w tp;
  id,lp,storl,rabl,zwl,firmy_nr,lp_printed: Integer;
{$ifdef ZAGRODA}
  bez_sygn,naplacu: Boolean;
{$endif}
{$ifdef PUNKTY}
  klij_nr,rabpktlp: Integer;
  klij_pyt: Boolean;
  rabpkt, pktrab, kuponrab, rabpktpoz, rabpkttot: Currency;
{$endif}
  Zwrot: Char;
  aka: array of TKar;
end;

const colnum = 20;

{$ifdef ELAVON}
const TerminalStates : array[0..33] of PChar = (
        'UNKNOWN','IDLE','BUSY','CARD_INSERT','PIN_ENTRY_FIRST_ATTEMPT','PIN_ENTRY_SECOND_ATTEMPT','PIN_ENTRY_THIRD_ATTEMPT',
        'PIN_ENTRY_FAILED','GRATUITY_ENTRY','AUTHORIZING','COMPLETION','CANCELLED','AMOUNT_CONFIRMATION','SENDING','RECEIVING',
        'UNSPECIFIED_INPUT','PROCESSING','CARD_REMOVAL','PRINTING_MERCHANT_COPY','PRINTING_CUSTOMER_COPY','NO_MORE_PAPER',
        'LOYALTY_OPTION_SELECTION','PHONE_ENTRY','PROMO_CODE_ENTRY','LOYALTY_MEMBER_SELECTION','REWARD_OFFER','EXISTING_ACCOUNT',
        'INVALID_ACCOUNT','LINK_CARD_PAYMENT','ADD_CARD_PAYMENT','CASHBACK_ENTRY','COMMERCIAL_CODE_ENTRY','WAITING_CARD','WAITING_DCC_ACCEPTANCE');
const TransactStates: array[0..15] of PChar = (
        'Authorised (Transaction Complete)',
        'Not authorised',
        'Not processed – transaction failed before or during card entry',
        'Unable to authorise – transaction approved by host but declined by card',
        'Unable to process – Voice referral declined due to no referral number',
        'Unable to connect',
        'Void e.g. power fail, signature rejection, APM Auto Refund',
        'Cancelled',
        'Invalid password',
        'Amount exceed maximum limit',
        'Connection failure',
        'Timeout reached',
        'Invoice not found',
        'CashBack exceed maximum limit',
        'CashBack not allowed',
        'Incomplete (the ‘Do Transaction Completion’service should be invoked)'
        );
var
  TerminalIP: string;
  MessageNumber: Byte;
{$endif}

var
  Kasa,Kasjer,HostDir: string;
  rabat_od,Wersja: Currency;
  Parnum, kasjr, keylock, tp_dni: Integer;
  dr: Tdr;
//  stawki: array of Byte;
  bony: Array of String;
{$ifdef MULTIPAR}
  ma: array of TAk;
  mat: Currency;
{$else}
  ma: TAk;
{$endif}
  m: ^Tak;
  KeyFlag: Boolean;
{
const   K_CENNIK    =BYTE('x');
        K_HISTORIA  =VK_UP;
        K_00        =BYTE('s');
        K_KROPKA    =BYTE('.');
        K_ILE       =BYTE('a');   107 prawy plus
        K_GOTOWKA   =BYTE('z');
        K_TOWAR     =VK_RETURN;
        K_SCAN      =VK_TAB;
        K_RAZEM     =BYTE('i');    109 prawy -  187 =   106 *
        K_KORONY    =BYTE('j');
        K_WAGA      =BYTE('d');//albo n
        K_C         =VK_PRIOR;
        K_PROC      =VK_END;
        K_STORNO_OST=VK_ESCAPE;
        K_RABAT_POZ =VK_F1;
        K_RABAT_PAR =VK_F2;
        K_STORNO_TOW=VK_F3;
        K_STORNO_PAR=VK_F4;
        K_ZWROT     =VK_F5;
        K_WPLATA    =VK_F6;
        K_WYPLATA   =VK_F7;
        K_SZUFLADA  =VK_F8;
        K_ZWROT_K   =VK_NEXT;
        K_BONY1     =BYTE('e');
        K_BONY2     =BYTE('k');
        K_CZEK      =BYTE('p');
        K_CENA      =BYTE('n');
        K_KARTA     =BYTE('o');
        K_PAPIER    =BYTE('+');
        K_RFD       =BYTE('f');
        K_RFO       =BYTE('l');
        K_KONIEC_Z  =BYTE('q');
        K_OPAKOWANIA=BYTE('y');

}
procedure TMainForm.WMDropFiles(var Msg: TWMDropFiles);
var
  s,t: string;
  Num: Cardinal;
  R,C,n: Integer;
  g: TStringGrid;
  p: TPoint;
  b: TObject;
begin
  Msg.Result := 0;
  try
    Num := DragQueryFile(Msg.Drop, $FFFFFFFF, nil, 0);
    if Num > 0 then begin
        Num:=DragQueryFile(Msg.Drop, 0, nil, 0);
        SetLength(s,Num);
        Inc(Num);
        DragQueryFile(Msg.Drop, 0, @(s[1]), Num);
        DragQueryPoint(Msg.Drop,p);
        p.x:=p.x-Panel2.Left;
        p.y:=p.y-Panel2.Top;
        p.x:=p.x-PageControl1.ActivePage.Left;
        p.y:=p.y-PageControl1.ActivePage.Top;
        g:=TStringGrid(FindComponent('StringGrid'+IntToStr(PageControl1.ActivePageIndex)));
        if g is TStringGrid Then
        with g do try
          p.x:=p.x-Left;
          p.y:=p.y-Top;
          MouseToCell(p.x,p.y,C,R);
          b:=Objects[C,R];

          t:=Cells[C,R];
          n:=pos(';',t);
          if n<>0 Then
            t:=copy(t,1,n-1);
          n:=pos('k',t);
          if n<>0 Then
            t:=copy(t,1,n-1);
          n:=pos('i',t);
          if n<>0 Then
            t:=copy(t,n+1,maxint);
          n:=pos('c',t);
          if n<>0 Then
            t:=copy(t,n+1,maxint);
          if Length(t)<6 Then
            t:=Format('%6.6d',[StrToIntDef(t,0)]);

          ForceDirectories(HostDir+'..\etykiety\kreski\'+copy(t,1,4));
          t:=HostDir+'..\etykiety\kreski\'+copy(t,1,4)+'\'+copy(t,5,maxint);
          t:=ChangeFileExt(t,ExtractFileExt(s));
          CopyFile(PChar(s),PChar(t),False);
           s:=t;
           t:=ChangeFileExt(t,'.jpg');

           if copy(LowerCase(ExtractFileExt(s)),1,3)='.jp'
           Then begin
               if not (b is TJpegImage) Then begin
                 freeandnil(b);
                 b:=TJpegImage.Create;
                 Objects[C,R]:=b;
               end;
               TJpegImage(b).LoadFromFile(s);
           end Else if LowerCase(ExtractFileExt(s))='.bmp' then begin
               if not (b is TJpegImage) Then begin
                 freeandnil(b);
                 b:=TJpegImage.Create;
                 Objects[C,R]:=b;
               end;
               b:=TPicture.Create;
               TPicture(b).Bitmap.LoadFromFile(s);
               TJpegImage(Objects[C,R]).Assign(TPicture(b).Bitmap);
               TJpegImage(Objects[C,R]).SaveToFile(t);
               freeandnil(b);
               Deletefile(s);
           end;

          Invalidate;

        except
           Freeandnil(b);
           Objects[C,R].Free;
           Objects[C,R]:=nil;
        end;
    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;


function str(x: Currency):String;
var c: Char;
begin
   c:=DecimalSeparator;
   try
     DecimalSeparator:='.';
     Result:=CurrToStr(x);
   finally
     DecimalSeparator:=c;
   end;
end;

function iif(a:Boolean;b,c: Currency):Currency;overload;
begin
  if a Then Result:=b Else Result:=c;
end;

function iif(a:Boolean;b,c: Integer):Integer;overload;
begin
  if a Then Result:=b Else Result:=c;
end;

function iif(a:Boolean;b,c: String):String;overload;
begin
  if a Then Result:=b Else Result:=c;
end;

function Round(x: Extended; y: Integer): Currency;
var z: Currency;
begin
//  Set8087CW(Default8087CW);
  z:=intpower(10,Abs(y));
  if x<0 Then z:=-z;
  //Result:=iif(y>=0,Int(x*z+0.5)/z,Int(x/z+0.5)*z);

  if y>=0 Then Result:=Int(x*z+0.5)/z
          Else Result:=Int(x/z+0.5)*z

end;

//{$ifndef NOPRINT}
//Farex
function PrintOutFr(const r: string):string;
const l: Byte = 0;
function crc(const s: string):Byte;
var
  i: Integer;
begin
  Result:=0;
  for i:=1 To Length(s) do
    Result := Result + Byte(s[i]);

  Result := not Result;
end;
begin
   inc(l);
   if l=100
    Then l:=1;

   Result:=StringReplace(r,#$db,#$DB#$DD,[rfReplaceAll]);
   Result:=StringReplace(Result,#$c0,#$DB#$DC,[rfReplaceAll]);
   Result:=Chr(l)+#$aa#$55+Result;
   Result:=#$c0+Result+chr(crc(Result))+#$c0;
   MainForm.ComPort1.WriteStr(Result);
end;

{$ifdef ELZAB}

procedure ElError(e: Integer);
begin
  if e<>0 then Raise EInOutError.Create('B³¹d drukarki: '+inttostr(e));
end;

function Rozkaz(const r: Word; s: string; n:Longword):string;overload;
var rp,sp : ^tBufferOfBytes;
    ls : Longword;
begin
  Ls:=Length(s);
  SetLength(s,max(SizeOf(tBufferOfBytes),ls));
  SetLength(Result,max(SizeOf(tBufferOfBytes),n));
  rp:=@Result[1];
  sp:=@s[1];
  ElError(RSSequence(r,n,ls,rp^,sp^));
  SetLength(Result,n);
end;

{$endif}
//Farex
function Rozkaz(r: Byte; s: String):shortstring;overload;
var i: Integer;
begin
   //MainForm.Color:=clRed;
   MainForm.ComPort1.ClearBuffer(True,False);
   MainForm.Update;
   if r=0
     Then s:=PrintOutFr(s)
     else s:=PrintOutFr(Format('%2.2d',[r])+s);
   i:=0;
   repeat
     inc(i);
     SetLength(Result,i);
     if (0=MainForm.ComPort1.Read(Result[i],1))
       Then begin
          if (IDRETRY<>Application.MessageBox(PChar(IntToStr(r)),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+inttostr(r));
          dec(i);
          Continue;
       end;
     if (i=1) and (Result[i]='F') Then begin

        SetLength(Result,255);
        Mainform.ComPort1.Read(Result[i],254);
//'FLASH ID:bf41 Size:200000'#$D#$A'FLASH 2 ID:c216 Size:800000'#$D#$A

        MainForm.ComPort1.WriteStr(s);
        i:=0;
        //Continue;
     end;
      // if Result[i] = #$6 Then Exit;
   until (i>=254) or (i>0) and (Result[i] = #$C0);
   i:=1;
   Result[i] := #$C0;
   repeat
    inc(i);
    SetLength(Result,i);
    if (0=MainForm.ComPort1.Read(Result[i],1))
       Then begin
          //Windows.Beep(1000,500);
          if (IDRETRY<>Application.MessageBox(PChar(IntToStr(r)),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+inttostr(r));
          dec(i);
       end;
    if (i=2) and (Result[i]=#$c0)
      Then dec(i);
   until (i>=254) or (i>2) and (Result[i]=#$c0);

   Result:=StringReplace(Result,#$DB#$DC,#$c0,[rfReplaceAll]);
   Result:=StringReplace(Result,#$DB#$DD,#$db,[rfReplaceAll]);
   Result:=Copy(Result,5,Length(Result)-6);
   if Result[1]='E' Then begin
      i:=StrToIntDef('$'+Copy(Result,3,1),0)*10+StrToIntDef(Copy(Result,4,1),0);
      s:=IntToStr(i);
      Raise EInOutError.Create('B³¹d drukarki: '+s+#13+MainForm.ErrorList.Values[s]);
   end;
end;

function Rozkaz(const r: Byte):shortstring;overload;
begin
  Result:=Rozkaz(r,'');
end;

procedure PrintOutTh(r: string; c: Boolean);overload;
  procedure maz(var s:string);
  const t = '€‚ƒ„…†‡ˆ‰Š‹˜Ž ‘’“”•–—˜™š›žž¦ ¡¢œ¤¦§¨©ª«¬­®¡°±²’´µ¶·¸†º»¼½¾§ÀÁÂÃÄÅ•ÇÈÉËÌÍÎÏÐ¥Ò£ÔÕÖ×ØÙÚÛÜÝÞßàáâãäåçèé‘ëìíîïð¤ò¢ôõö÷øùúûüýþÿ';
  var i: Integer;
  begin
    For i:=1 To Length(s) do
    if Byte(s[i])>=$80 Then
      s[i]:=t[Byte(s[i])-$7f];
  end;
  function crc(const s:string):byte;
  var i:Integer;
  begin
    Result:=255;
    for i:=1 To Length(s) do
      Result := Result xor Byte(s[i]);
  end;
begin
  maz(r);
  if c
    Then MainForm.ComPort1.WriteStr(Format(#27'P%s%.2X'#27'\',[r,crc(r)]))
    Else MainForm.ComPort1.WriteStr(Format(#27'P%s'#27'\',[r]))
end;

procedure PrintOutTh(const r: string);overload;
begin
  PrintOutTh(r, True);
end;

function RozkazTh(r: string; crc: Boolean):String;overload;
var x: Byte;
    s: shortstring;
    procedure rd;
    begin
     x:=0;
     Repeat
       s[0]:=Char(x);
       x:=Byte(s[0])+1;
       if (0=MainForm.ComPort1.Read(s[x],1))
       Then begin
          //Windows.Beep(1000,500);
          if (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
            then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
          dec(x);
       end;
      until (x=1) and ((Byte(s[x]) and $60) = $60) or (Copy(s,x-2,2)=#$1B'\') or (x=255);
    end;
begin

   //MainForm.Color:=clRed;
   MainForm.Update;
   MainForm.ComPort1.ClearBuffer(True,False);
   PrintOutTh(r,crc);
   MainForm.ComPort1.WriteStr(#5);
   rd;
   if x=255 Then
      Raise EInOutError.Create('Zbyt d³uga odpowiedŸ drukarki: '+r+#10+s);

   if (Byte(s[x]) and 4) = 0 Then With MainForm do Begin
      PrintOutTh('#n',False);
      ComPort1.WriteStr(#5);
      rd;
      s:=copy(s,6,Length(s)-7);
      Edit1.SelectAll;
      If Edit1.Visible Then Edit1.SetFocus;
      Raise EInOutError.Create('B³¹d drukarki: '+r+#13+MainForm.ErrorList.Values[Copy(r,WordPosition(2,r,['#','$'])-1,2)]
        +#13+MainForm.ErrorList.Values[s]);
   end;

   //MainForm.Color:=clBtnFace;
   Result:=copy(s,3,Length(s)-4);
end;

function RozkazTh(r: string):ShortString;overload;
begin
  Result:=RozkazTh(r, True);
end;

//{$else}


function crc(s: string):Word;
const
crc16htab: array[0..255] of byte = (
            $00, $10, $20, $30, $40, $50, $60, $70,
            $81, $91, $a1, $b1, $c1, $d1, $e1, $f1,
            $12, $02, $32, $22, $52, $42, $72, $62,
            $93, $83, $b3, $a3, $d3, $c3, $f3, $e3,
            $24, $34, $04, $14, $64, $74, $44, $54,
            $a5, $b5, $85, $95, $e5, $f5, $c5, $d5,
            $36, $26, $16, $06, $76, $66, $56, $46,
            $b7, $a7, $97, $87, $f7, $e7, $d7, $c7,
            $48, $58, $68, $78, $08, $18, $28, $38,
            $c9, $d9, $e9, $f9, $89, $99, $a9, $b9,
            $5a, $4a, $7a, $6a, $1a, $0a, $3a, $2a,
            $db, $cb, $fb, $eb, $9b, $8b, $bb, $ab,
            $6c, $7c, $4c, $5c, $2c, $3c, $0c, $1c,
            $ed, $fd, $cd, $dd, $ad, $bd, $8d, $9d,
            $7e, $6e, $5e, $4e, $3e, $2e, $1e, $0e,
            $ff, $ef, $df, $cf, $bf, $af, $9f, $8f,
            $91, $81, $b1, $a1, $d1, $c1, $f1, $e1,
            $10, $00, $30, $20, $50, $40, $70, $60,
            $83, $93, $a3, $b3, $c3, $d3, $e3, $f3,
            $02, $12, $22, $32, $42, $52, $62, $72,
            $b5, $a5, $95, $85, $f5, $e5, $d5, $c5,
            $34, $24, $14, $04, $74, $64, $54, $44,
            $a7, $b7, $87, $97, $e7, $f7, $c7, $d7,
            $26, $36, $06, $16, $66, $76, $46, $56,
            $d9, $c9, $f9, $e9, $99, $89, $b9, $a9,
            $58, $48, $78, $68, $18, $08, $38, $28,
            $cb, $db, $eb, $fb, $8b, $9b, $ab, $bb,
            $4a, $5a, $6a, $7a, $0a, $1a, $2a, $3a,
            $fd, $ed, $dd, $cd, $bd, $ad, $9d, $8d,
            $7c, $6c, $5c, $4c, $3c, $2c, $1c, $0c,
            $ef, $ff, $cf, $df, $af, $bf, $8f, $9f,
            $6e, $7e, $4e, $5e, $2e, $3e, $0e, $1e);

crc16ltab: array[0..255] of byte = (
            $00, $21, $42, $63, $84, $a5, $c6, $e7,
            $08, $29, $4a, $6b, $8c, $ad, $ce, $ef,
            $31, $10, $73, $52, $b5, $94, $f7, $d6,
            $39, $18, $7b, $5a, $bd, $9c, $ff, $de,
            $62, $43, $20, $01, $e6, $c7, $a4, $85,
            $6a, $4b, $28, $09, $ee, $cf, $ac, $8d,
            $53, $72, $11, $30, $d7, $f6, $95, $b4,
            $5b, $7a, $19, $38, $df, $fe, $9d, $bc,
            $c4, $e5, $86, $a7, $40, $61, $02, $23,
            $cc, $ed, $8e, $af, $48, $69, $0a, $2b,
            $f5, $d4, $b7, $96, $71, $50, $33, $12,
            $fd, $dc, $bf, $9e, $79, $58, $3b, $1a,
            $a6, $87, $e4, $c5, $22, $03, $60, $41,
            $ae, $8f, $ec, $cd, $2a, $0b, $68, $49,
            $97, $b6, $d5, $f4, $13, $32, $51, $70,
            $9f, $be, $dd, $fc, $1b, $3a, $59, $78,
            $88, $a9, $ca, $eb, $0c, $2d, $4e, $6f,
            $80, $a1, $c2, $e3, $04, $25, $46, $67,
            $b9, $98, $fb, $da, $3d, $1c, $7f, $5e,
            $b1, $90, $f3, $d2, $35, $14, $77, $56,
            $ea, $cb, $a8, $89, $6e, $4f, $2c, $0d,
            $e2, $c3, $a0, $81, $66, $47, $24, $05,
            $db, $fa, $99, $b8, $5f, $7e, $1d, $3c,
            $d3, $f2, $91, $b0, $57, $76, $15, $34,
            $4c, $6d, $0e, $2f, $c8, $e9, $8a, $ab,
            $44, $65, $06, $27, $c0, $e1, $82, $a3,
            $7d, $5c, $3f, $1e, $f9, $d8, $bb, $9a,
            $75, $54, $37, $16, $f1, $d0, $b3, $92,
            $2e, $0f, $6c, $4d, $aa, $8b, $e8, $c9,
            $26, $07, $64, $45, $a2, $83, $e0, $c1,
            $1f, $3e, $5d, $7c, $9b, $ba, $d9, $f8,
            $17, $36, $55, $74, $93, $b2, $d1, $f0);
var
  hi, lo, index :Byte;
  i: Integer;
begin
  hi:=0;
  lo:=0;

  for i:=1 To Length(s) do begin
    index := hi xor Ord(s[i]);
    hi := lo xor crc16htab[index];
    lo :=        crc16ltab[index];
  end;
  Result := (hi shl 8) or lo;
end;

function PrintOut(r: string):string;overload;
begin
   if dr=Thermal Then begin
     PrintOutTh(r);
     Result:=r;
     Exit;
   end;
   if r[Length(r)]<>#9 Then r:=r+#9;
   If r[1]='!'
     Then Result:=Copy(r,2,maxint)
     Else Result:=r;
   r:=Format(#2+'%s#%.4X'#3,[r,crc(r)]);
   MainForm.ComPort1.WriteStr(r);
end;

function PrintOut(func: String; ap: array of string):string;overload;
var s: String;
    i: Integer;
begin
  for i:=Low(ap) To High(ap) do
      func:=func+#9+ap[i];
  Result:=PrintOut(func);
end;

function Pytanie(const funkcja, answer: string):String;
var x: Word;
begin
  Result:='';
  x:=Pos(#9+answer,funkcja);
  if x=0 Then Exit;
  inc(x,Length(answer)+1);
  Result:=Copy(funkcja,x,maxint);
  x:=Pos(#9,Result);
  if x>0 then SetLength(Result,x-1);
end;

{$ifdef ELAVON}
function Rozkaz(r: string):string;overload;
const CBaudRate: array[TBaudRate] of Integer =
    (0, CBR_110, CBR_300, CBR_600, CBR_1200, CBR_2400, CBR_4800, CBR_9600,
     CBR_14400, CBR_19200, CBR_38400, CBR_56000, CBR_57600, CBR_115200,
     CBR_128000, CBR_256000);

var x,y,L: Word;
    s,t: string;
begin
   //MainForm.ComPort1.ClearBuffer(True,False);
   MainForm.ComPort1.ReadStr(s,MainForm.ComPort1.InputCount);
   r:=PrintOut(r);
   L:=Pos(#9,r)+7;
   Sleep(CBaudRate[br256000] div CBaudRate[MainForm.ComPort1.BaudRate]);
   //s:='' bo sprawdzamy odpowiedzi poprzednich PrintOut -ów
   repeat
     y:=Length(s);
     x:=Pos(#2,s);
     while (x=0) do begin
         x:=max(L,MainForm.ComPort1.InputCount);
         SetLength(s,y+x);
         x:=MainForm.ComPort1.Read(s[y+1],x);
         if (x=0) and (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
         inc(y,x);
         SetLength(s,y);
         x:=Pos(#2,s);
     end;
     Delete(s,1,x);
     dec(y,x);
     x:=Pos(#3,s);
     while (x=0) do begin
       x:=max(1,MainForm.ComPort1.InputCount);
       SetLength(s,y+x);
       x:=MainForm.ComPort1.Read(s[y+1],x);
       if (x=0) and (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
       inc(y,x);
       SetLength(s,y);
       x:=Pos(#3,s);
     end;
     Result:=Copy(s,1,x-6);    //data
     t:=Copy(s,x-5,5); //crc
     t[1]:='$';
     y:=crc(Result);

     if (y<>StrToIntDef(t,0)) then begin
        t:='B³¹d sumy kontrolnej odpowiedzi drukarki podczas wykonywania rozkazu:'#10+r+#10+s;
        if (IDRETRY<>Application.MessageBox(PChar(t),'B³¹d sumy kontrolnej odpowiedzi drukarki', MB_RETRYCANCEL + MB_ICONHAND ))
        Then Raise EInOutError.Create(t);
     end;

     t:=Pytanie(Result,'?');
     if (t>'') Then begin
       Delete(Result,Length(Result),1);
       Raise EInOutError.Create('Drukarka podczas wykonywania rozkazu:'#10+r+#10+s+#10'zwróci³a b³¹d: '+Result+#10+MainForm.ErrorList.Values[t]);
     end;

     Delete(s,1,x); //jeden rozkaz mniej w buforze

     y:=Max(Pos(#9,r),Pos(#9,Result))-1;
   until Copy(Result,1,y) = Copy(r,1,y);
   Delete(Result,1,y); //kasujemy kod rozkazu
end;
{$else}
function Rozkaz(r: string):shortstring;overload;
var x: Byte;
begin
   case dr of
     Thermal: begin
        Result:=RozkazTh(r);
        Exit;
       end;
     Farex: Exit;
   end;

   //MainForm.Color:=clRed;
   MainForm.Update;
   MainForm.ComPort1.ClearBuffer(True,False);
   r:=PrintOut(r);
   Result[0]:=Chr(Pos(#9,r));

   repeat
     repeat
       if (0=MainForm.ComPort1.Read(Result[1],1))
       Then begin
          //Windows.Beep(1000,500);
          if (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
       end;
     until Result[1]=#2;
     x:=0;
     Repeat
       inc(x);
       if (0=MainForm.ComPort1.Read(Result[x],1))
       Then begin
          //Windows.Beep(1000,500);
          if (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
          then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
          dec(x);
       end;
     until (Result[x]=#9) or (x=Byte(Result[0]));

     if copy(Result,0,4) = 'ERR'#9
        then break;
        //Raise EInOutError.Create('B³¹d drukarki: '+Byte(Result[5]));

   until Result=copy(r,1,Byte(Result[0]));


   Result[0]:=#0;
   //SetLenght(Result,255);
   repeat
      inc(Result[0]);
      if 0=MainForm.ComPort1.Read(Result[Byte(Result[0])],1)
      Then begin
        //Windows.Beep(1000,500);
        if (IDRETRY<>Application.MessageBox(PChar(r),'Czekam na drukarkê', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
        then Raise EInOutError.Create('Przekroczony czas oczekiwania na odpowiedŸ drukarki: '+r);
        dec(Result[0]);
      end;
      //Result[i]:=b[1];
   until (Result[Byte(Result[0])]=#3) or (Byte(Result[0])=255);
   if Result[Byte(Result[0])]=#3
      Then Dec(Byte(Result[0]),6);
   //MainForm.Color:=clBtnFace;
   //MainForm.Update;
   //SetLength(Result,max(0,i-7));
   if Result[1]<>'?' Then Exit;
   //Windows.Beep(1000,500);
   Result:=Copy(Result,2,pos(#9,Result)-2);
   Raise EInOutError.Create('Drukarka podczas wykonywania rozkazu:'#10+r+#10+'zwróci³a b³¹d: '+Result+#10+MainForm.ErrorList.Values[Result]);
end;
{$endif}
function Rozkaz(func: String; ap: array of string):string;overload;
var i: Integer;
begin
  for i:=Low(ap) To High(ap) do
      func:=func+#9+ap[i];
  Result:=Rozkaz(func);
end;

//{$endif}

procedure TMainForm.CyfraClick(Sender: TObject);
begin
   ActiveControl.Perform(WM_CHAR,TSpeedButton(Sender).Tag,0);
end;

procedure TMainForm.rightClick(Sender: TObject);
begin
   ActiveControl.Perform(WM_KEYDOWN,TComponent(Sender).Tag,0);
end;

procedure TMainForm.SpeedButton23Click(Sender: TObject);
begin
  ActiveControl.Perform(WM_CHAR,Ord(TSpeedButton(Sender).Caption[1]),0);
end;

procedure TMainForm.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = AEsc) or (Action = AKluczyk) {$ifdef SCANKLAW} or (Action = ATowar){$endif} Then Exit;
  if (Keylock<1) Then begin
    Label4.Color:=clRed;
    Label4.Caption:='Kluczyk';
    DisplayList[6]:=Label4.Caption;
    Raise EInOutError.Create('Przekrêæ kluczyk !');
  end;
  if ( kasjer='' ) and ( Action <> ATowar ) Then begin
    Label4.Color:=clYellow;
    Label4.Caption:='Kasjer';
    DisplayList[6]:=Label4.Caption;
    Raise EInOutError.Create('Podaj kod kasjera !');
  end;
end;

procedure TMainForm.Edit1Enter(Sender: TObject);
begin
   Edit1.SelectAll;
end;

procedure TMainForm.ParagonyCalcFields(DataSet: TDataSet);
var v: Variant;
begin
  if Cennik.Active Then try
     v:=Cennik.Lookup('INDEX',DataSet.FieldByName('INDEX').AsString,'NAZWA;JM');
  except
     Cennik.Close;
  end;
  if VarIsArray(v) Then begin
     DataSet['NAZWA']:=v[0]; //AnsiLowerCase(v[0]);
     DataSet['JM']:=v[1];
     DataSet['WARTOSC']:=DataSet.FieldByName('ILOSC').AsCurrency*DataSet.FieldByName('CENA').AsCurrency-DataSet.FieldByName('RABAT_KWOT').AsCurrency;
  end else begin
     DataSet['NAZWA']:=DataSet.FieldByName('INDEX').AsString+' '+FormatDateTime('hh:nn',Frac(DataSet.FieldByName('ILOSC').AsCurrency));
     DataSet['WARTOSC']:=DataSet.FieldByName('CENA').AsCurrency-DataSet.FieldByName('RABAT_KWOT').AsCurrency;
  end
end;

procedure TMainForm.FormCreate(Sender: TObject);
var s: String;
begin
  Caption:='Paragony'; //potrzebne do wykrywania w splashu musi byc ustawione dopiero tu

  DragAcceptFiles(Handle, True);
  FormStorage1.IniFileName:=ChangeFileExt(Application.ExeName,'.ini');
  FormStorage1.RestoreFormPlacement;
  FormStorage1.Version:=1;

  MdDbGrid1.Align:=alClient;
  if WindowState=wsMaximized then begin
     BorderStyle:=bsNone;
     PelnyEkranBtn.Down:=True;
  end else begin
     BorderStyle:=bsSizeable;
     PelnyEkranBtn.Down:=False;
     ClientWidth:=1024;
     ClientHeight:=768;
{$ifdef ZAGRODA}
     PageControl1.TabWidth:= ClientWidth div PageControl1.PageCount - 10;
{$else}
     PageControl1.TabWidth:=( ClientWidth - Panel1.Width ) div PageControl1.PageCount - 10;
{$endif}
  end;

  //Update; //splash?

  PageControl1.ActivePageIndex:=0;
  DisplayList:=TStringList.Create;
  ErrorList:=TStringList.Create;
  DisplayList.OnChange:=DisplayChange;
  //colnum:=Label1.ClientWidth div Label1.Canvas.TextWidth(' ') div 2 * 2;

  s:=ChangeFileExt(Application.ExeName,'.add');
  if FileExists(s)
   Then AdsConnection1.ConnectPath:=s
   Else AdsConnection1.ConnectPath:=ExtractFilePath(s);

  try
    Cennik.Open;
  except;
    Cennik.Close;
  end;
  Paragony.Open;
end;

procedure TMainForm.ReadPictures;
  var l: TStringList;
      r,s: String;
      j: Integer;
      p: TObject;
  procedure grinit(grid: TStringGrid; plik: TFileName);
  var i,k,n: Integer;
  begin
    if not fileexists(plik) Then Exit;
    l.LoadFromFile(plik);
    if l.Count>0 Then With grid do begin
       RowCount:=12;
       ColCount:=12;
      //RowCount:=(l.Count+ColCount-1) div ColCount;
      i:=0;
      s:=l[i];
      n:=pos('=',s);
      if n=0 then With TTabSheet(Parent) do begin
         Caption:=s;
{$ifndef KLAWBEETLE}
         if (TabIndex>0) and (strtointdef(s,0)<>TabIndex)
           Then s:=s+' F'+inttostr(TabIndex);
{$endif}
         Hint:=s;
         i:=1;
      end;

      For i:=i To l.Count-1 do begin
        s:=l[i];
        n:=pos('=',s);
        case n of
          2: begin
            k:=Ord(s[1])-ord('A');
            s:=copy(s,3,maxint);
            j:=k mod 3; //ColCount;
            k:=k div 3; //ColCount;
          end;
          3,4: begin
            if s[1]>='A' Then begin
             j:=Ord(s[1])-ord('A');
             k:=strtoint(copy(s,2,n-2))-1;
            end else begin {poprzedni system}
             k:=ord(s[1])-ord('1');
             j:=strtoint(copy(s,2,n-2))-1;
            end;
            //j:=ord(s[2])-ord('1');
            s:=copy(s,n+1,maxint);
          end;
        else
          Continue;
          //j:=(i-1) mod ColCount;
          //k:=(i-1) div ColCount;
        end;
        Cells[j,k]:=s;
        p:=Objects[j,k];
        n:=pos(';',s);
        if n<>0 Then
          s:=copy(s,1,n-1);
        n:=pos('k',s);
        if n<>0 Then
          s:=copy(s,1,n-1);
        n:=pos('i',s);
        if n<>0 Then
          s:=copy(s,n+1,maxint);
        n:=pos('c',s);
        if n<>0 Then
          s:=copy(s,n+1,maxint);

        if Length(s)<6
          Then s:=Format('%6.6d',[StrToIntDef(s,0)]);
        s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint);
        try
           if FileExists(s+'.jpg')
           Then begin
             freeandnil(p);
             p:=TJpegImage.Create;
             s:=s+'.jpg';
             Objects[j,k]:=p;
             with TJpegImage(p) do begin
               Performance:=jpBestSpeed;
               Scale:=jsHalf;
               LoadFromFile(s);
               //DIBNeeded;
             end;
           end else if FileExists(s+'.bmp')
           Then begin
             s:=s+'.bmp';
             freeandnil(p);
             p:=TPicture.Create;
             TPicture(p).Bitmap.LoadFromFile(s);
             Objects[j,k]:=TJpegImage.Create;
             With TJpegImage(Objects[j,k]) do begin
               Performance:=jpBestSpeed;
               Scale:=jsHalf;
               Assign(TPicture(p).Bitmap);
               SaveToFile(ChangeFileExt(s,'.jpg'))
               //DIBNeeded;
             end;
             freeandnil(p);
           end;
        except
          freeandnil(p);
          Objects[j,k].Free;
          Objects[j,k]:=nil;
        end;
      end;
    end;
  end;

begin
  l:=TStringList.Create;
  try
    l.LoadFromFile('kasa.ini');

    s:=l.Values['tp_dni:'];
    tp_dni:=StrToIntDef(s,14);

    s:=l.Values['bony:'];
    r:=copy(s,2,Length(s)-2);
    j:=WordCount(r,[',']);
    SetLength(bony,j);
    Repeat
      s:=ExtractWord(j,r,['''','"',',','[',']']);
      dec(j);
      bony[j]:=s;
    until j=0;
(*
    s:=l.Values['stawki:'];
    r:=copy(s,2,Length(s)-2);
    j:=WordCount(r,[',']);
    SetLength(stawki,j);
    Repeat
      s:=ExtractWord(j,r,['''','"',',','[',']']);
      dec(j);
      if pos('.',s)<>0 Then DecimalSeparator:='.';
      stawki[j]:=StrToInt(s);
      DecimalSeparator:=',';
      if r<>'' then
        if stawki[j]<>StrToInt(Pytanie(r,'v'+Char($61+j))) then
        Raise EInOutError.Create('Drukarka ma z³e stawki: '+r);
    until j=0;
*)
    s:=l.Values['rabat_od:'];

    rabat_od:=StrToIntDef(s,0);


    grinit(StringGrid0,'klawisze.ini');
    grinit(StringGrid1,'kl1.ini');
    grinit(StringGrid2,'kl2.ini');
    grinit(StringGrid3,'kl3.ini');
    grinit(StringGrid4,'kl4.ini');
    grinit(StringGrid5,'kl5.ini');
    grinit(StringGrid6,'kl6.ini');
{$ifdef ZAGRODA}
    grinit(StringGrid7,'kl7.ini');
    grinit(StringGrid8,'kl8.ini');
    grinit(StringGrid9,'kl9.ini');
    grinit(StringGrid10,'kl10.ini');
{$endif}
  finally
    freeandnil(l);
  end;
end;

procedure TMainForm.OpenTables;
var s: String;
begin
  MdDBGrid1.Klucz:='';
  MdDBGrid2.Klucz:='';
  AdsConnection1.Disconnect;
  AdsConnection2.Disconnect;
{$ifdef PUNKTY}
  KarKlij.DatabaseName:=HostDir;
  KarKlij.Filtered:=False;
  KarKlij.Filter:='';
  if m.klij_nr>0 then begin
    Firmy.Open;
    KarKlij.Open;
  end;
  AKlijAlert.Visible:=(m.klij_nr>0) and KarKlij.Active and KarKlij.Locate('ID',m.klij_nr,[]);
{$endif}
{$ifdef STANY}
  try
    Stany.Open;
  except
    Stany.Close;
  end;
{$endif}
  try
    Ceny.Filtered:=False;
    Ceny.Filter:='';
    Ceny.Open;
    Cennik.Open;
  except
    Ceny.Close;
    Cennik.Close;
  end;
  Utarg.Open;
  Utarg.Last;
{$ifdef MULTIPAR}
  ParJob.Open;
  ParJob.Last;
  s:='para_'+inttostr(m.id);
  if not FileExists(s+'.dbf')
    Then ParJob.AdsCopyTableStructure(s);
  Paragony.TableName:=s;
{$endif}
  Paragony.Open;
  Paragony.Last;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
var i,j,k: Integer;
begin
{$ifdef ELZAB}
  if dr=Elzab Then CommunicationEnd;
{$endif}
  for k:={$ifdef ZAGRODA}10{$else}6{$endif}  downto 0 do
  With TStringGrid(FindComponent('StringGrid'+IntToStr(k))) do
  For i:=0 To ColCount-1 do
  For j:=0 To RowCount-1 do
    Objects[i,j].Free;

  DisplayList.Free;
  ErrorList.Free;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  with m^ do CanClose:=(lp=0) and (aka=nil) and (tz=0);
  if CanClose and (MdDBGrid1.DataSource.DataSet<>nil)
  Then try
     with MdDBGrid1.DataSource.DataSet do if state in [dsEdit, dsInsert] Then Post;
     FormStorage1.IniNeeded(False);
     MdDbGrid1.InternalSaveLayout(FormStorage1.IniFile,MdDBGrid1.DataSource.DataSet.Name);
     MdDBGrid1.DataSource.DataSet:=nil;
  finally
     FormStorage1.IniFree;
  end;
end;

procedure TMainForm.DisplayChange(Sender: TObject);
begin
   Label1.Caption:=DisplayList.Text;
end;

procedure TMainForm.ZerujP(Sh: Boolean);

(*
{$ifdef ELAVON}
//TransactionResp
procedure PrintReceipt;
const EntryMethods: array[0..7] of PChar = (
                'None',
                'Keyed',
                'Swiped',
                'Inserted',
                'Waved',
                'Keyed not present',
                'Swiped Fallback',
                'PA Ref Num CNP');
var j: Integer;
begin
    Application.ProcessMessages;
    if FormStorage1.StoredValue['TerminalPrint'] = 1 then SetLength(TerminalTransactions,0)
    else if (dr=Posnet) then
    for j:=0 to Length(TerminalTransactions)-1 do
    with TerminalTransactions[j] do begin

    Rozkaz('formstart',['fn201','fh0','alPotwierdzenie Transakcji Kart¹ P³atnicz¹']);
    Rozkaz('formcmd' ,['fn201','cm0']);

                                             Rozkaz('formline' ,['fn201','fl5','s1Status: '+TransactionStatusOut+#10+TransactStates[StrToInt(TransactionStatusOut)]]);
    if EntryMethodOut<>''               then Rozkaz('formline' ,['fn201','fl8','s1EntryMethod: '+EntryMethodOut+#10+EntryMethods[StrToInt(EntryMethodOut)]]);
    if AcquirerMerchantIDOut<>''        then Rozkaz('formline' ,['fn201','fl11','s1AcquirerMerchantID:'#10+AcquirerMerchantIDOut]);
    if DateTimeOut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1DateTime:'#10+DateTimeOut]);
    if TransactionCurrencyCodeOut<>''   then Rozkaz('formline' ,['fn201','fl11','s1TransactionCurrency:'#10+Currencies[StrToInt(TransactionCurrencyCodeOut)]]);
    if CardSchemeNameOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1CardSchemeName:'#10+CardSchemeNameOut]);
    if PANOut<>''                       then Rozkaz('formline' ,['fn201','fl2','s1PAN:'#10+PANOut]);
    if StartDateOut<>''                 then Rozkaz('formline' ,['fn201','fl5','s1StartDate:'#10+StartDateOut]);
    if ExpiryDateOut<>''                then Rozkaz('formline' ,['fn201','fl11','s1ExpiryDate:'#10+ExpiryDateOut]);
    if AuthorisationCodeOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1AuthorisationCode:'#10+AuthorisationCodeOut]);
    if AcquirerResponseCodeOut<>''      then Rozkaz('formline' ,['fn201','fl11','s1AcquirerResponseCode:'#10+AcquirerResponseCodeOut]);
    if MerchantNameOut<>''              then Rozkaz('formline' ,['fn201','fl8','s1MerchantName:'#10+MerchantNameOut]);
    if MerchantAddress1Out<>''          then Rozkaz('formline' ,['fn201','fl11','s1MerchantAddress1:'#10+MerchantAddress1Out]);
    if MerchantAddress2Out<>''          then Rozkaz('formline' ,['fn201','fl11','s1MerchantAddress2:'#10+MerchantAddress2Out]);
    if MerchantAddress3Out<>''          then Rozkaz('formline' ,['fn201','fl11','s1MerchantAddress3:'#10+MerchantAddress3Out]);
    if MerchantAddress4Out<>''          then Rozkaz('formline' ,['fn201','fl11','s1MerchantAddress4:'#10+MerchantAddress4Out]);
    if TotalAmountOut<>''               then Rozkaz('formline' ,['fn201','fl8','s1TotalAmount:'#10+TotalAmountOut]);
    if AdditionalAmountOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1AdditionalAmount:'#10+AdditionalAmountOut]);
    if CardCurrencyCodeOut<>''          then Rozkaz('formline' ,['fn201','fl8','s1CardCurrency:'#10+Currencies[StrToInt(CardCurrencyCodeOut)]]);
    if CardCurrencyExponentOut<>0       then Rozkaz('formline' ,['fn201','fl11','s1CardCurrencyExponent:'#10+IntToStr(CardCurrencyExponentOut)]);
    if EMVCardExpirationDateOut<>''     then Rozkaz('formline' ,['fn201','fl12','s1EMVCardExpirationDate:'#10+EMVCardExpirationDateOut]);
    if AppEffectiveDateOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1AppEffectiveDate:'#10+AppEffectiveDateOut]);
    if AIDOut<>''                       then Rozkaz('formline' ,['fn201','fl2','s1AID:'#10+AIDOut]);
    if AppPreferredNameOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1AppPreferredName:'#10+AppPreferredNameOut]);
    if AppLabelOut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1AppLabel:'#10+AppLabelOut]);
    if TerminalIdentifierOut<>''        then Rozkaz('formline' ,['fn201','fl11','s1TerminalIdentifier:'#10+TerminalIdentifierOut]);
    if TransactionCurrencyExponentOut<>0 then Rozkaz('formline' ,['fn201','fl12','s1TransactionCurrencyExponent:'#10+IntToStr(TransactionCurrencyExponentOut)]);
    if EMVTransactionTypeOut<>''        then Rozkaz('formline' ,['fn201','fl11','s1EMVTransactionType:'#10+EMVTransactionTypeOut]);
    if AppCryptogramOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1AppCryptogram:'#10+AppCryptogramOut]);
    if RetrievalReferenceNumberOut<>''  then Rozkaz('formline' ,['fn201','fl12','s1RetrievalReferenceNumber:'#10+RetrievalReferenceNumberOut]);
    if InvoiceNumberOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1InvoiceNumber:'#10+InvoiceNumberOut]);
    if BatchNumberOut<>''               then Rozkaz('formline' ,['fn201','fl8','s1BatchNumber:'#10+BatchNumberOut]);
    if AcquirerNameOut<>''              then Rozkaz('formline' ,['fn201','fl8','s1AcquirerName:'#10+AcquirerNameOut]);
    if CustomLine1Out<>''               then Rozkaz('formline' ,['fn201','fl8','s1CustomLine1:'#10+CustomLine1Out]);
    if CustomLine2Out<>''               then Rozkaz('formline' ,['fn201','fl8','s1CustomLine2:'#10+CustomLine2Out]);
    if CustomLine3Out<>''               then Rozkaz('formline' ,['fn201','fl8','s1CustomLine3:'#10+CustomLine3Out]);
    if CustomLine4Out<>''               then Rozkaz('formline' ,['fn201','fl8','s1CustomLine4:'#10+CustomLine4Out]);
    if DCCAmountOut<>''                 then Rozkaz('formline' ,['fn201','fl5','s1DCCAmount:'#10+DCCAmountOut]);
    if IsDCCTransactionOut<>0           then Rozkaz('formline' ,['fn201','fl11','s1IsDCCTransaction:'#10+IntToStr(IsDCCTransactionOut)]);
    if ConversionRateOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1ConversionRate:'#10+ConversionRateOut]);
    if FXExponentAppliedOut<>0          then Rozkaz('formline' ,['fn201','fl11','s1FXExponentApplied:'#10+IntToStr(FXExponentAppliedOut)]);
    if CommissionOut<>''                then Rozkaz('formline' ,['fn201','fl8','s1Commission:'#10+CommissionOut]);
    if TerminalCountryCodeOut<>''       then Rozkaz('formline' ,['fn201','fl11','s1TerminalCountryCode:'#10+TerminalCountryCodeOut]);
    if TerminalCurrencyCodeOut<>''      then Rozkaz('formline' ,['fn201','fl11','s1TerminalCurrency:'#10+Currencies[StrToInt(TerminalCurrencyCodeOut)]]);
    if TerminalCurrencyExponentOut<>0   then Rozkaz('formline' ,['fn201','fl12','s1TerminalCurrencyExponent:'#10+IntToStr(TerminalCurrencyExponentOut)]);
    if FXMarkupOut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1FXMarkup:'#10+FXMarkupOut]);
    if PANSequenceNumberOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1PANSequenceNumber:'#10+PANSequenceNumberOut]);
    if CashierIdentifierOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1CashierIdentifier:'#10+CashierIdentifierOut]);
    if TableIdentifierOut<>''           then Rozkaz('formline' ,['fn201','fl11','s1TableIdentifier:'#10+TableIdentifierOut]);
    if CardholderNameOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1CardholderName:'#10+CardholderNameOut]);
    if AvailableBalanceOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1AvailableBalance:'#10+AvailableBalanceOut]);
    if ApplicationIDOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1ApplicationID:'#10+ApplicationIDOut]);
    if IsTaxFreeRequiredOut<>0          then Rozkaz('formline' ,['fn201','fl11','s1IsTaxFreeRequired:'#10+IntToStr(IsTaxFreeRequiredOut)]);
    if IsExchangeRateUpdateRequiredOut<>0 then Rozkaz('formline' ,['fn201','fl12','s1IsExchangeRateUpdateRequired:'#10+IntToStr(IsExchangeRateUpdateRequiredOut)]);
    if PreAuthRefNumOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1PreAuthRefNum:'#10+PreAuthRefNumOut]);
    if HostTextOut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1HostText:'#10+HostTextOut]);
    if DiagRequestOut<>0                then Rozkaz('formline' ,['fn201','fl8','s1DiagRequest:'#10+IntToStr(DiagRequestOut)]);
    if CommercialCodeDataOut<>''        then Rozkaz('formline' ,['fn201','fl11','s1CommercialCodeData:'#10+CommercialCodeDataOut]);
    if DonationAmountOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1DonationAmount:'#10+DonationAmountOut]);
    if AVSResponseOut<>''               then Rozkaz('formline' ,['fn201','fl8','s1AVSResponse:'#10+AVSResponseOut]);
    if PartialAuthAmountOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1PartialAuthAmount:'#10+PartialAuthAmountOut]);
    if SpanishOpNumberOut<>''           then Rozkaz('formline' ,['fn201','fl11','s1SpanishOpNumber:'#10+SpanishOpNumberOut]);
    if IsFanfareTransactionOut<>0       then Rozkaz('formline' ,['fn201','fl11','s1IsFanfareTransaction:'#10+IntToStr(IsFanfareTransactionOut)]);
    if LoyaltyTransactionInfoOut<>''    then Rozkaz('formline' ,['fn201','fl12','s1LoyaltyTransactionInfo:'#10+LoyaltyTransactionInfoOut]);
    if FanfareTransactionIdentifierOut<>'' then Rozkaz('formline' ,['fn201','fl12','s1FanfareTransactionIdentifier:'#10+FanfareTransactionIdentifierOut]);
    if FanfareApprovalCodeOut<>''       then Rozkaz('formline' ,['fn201','fl11','s1FanfareApprovalCode:'#10+FanfareApprovalCodeOut]);
    if LoyaltyDiscountAmountOut<>''     then Rozkaz('formline' ,['fn201','fl12','s1LoyaltyDiscountAmount:'#10+LoyaltyDiscountAmountOut]);
    if FanfareWebURLOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1FanfareWebURL:'#10+FanfareWebURLOut]);
    if LoyaltyProgramNameOut<>''        then Rozkaz('formline' ,['fn201','fl11','s1LoyaltyProgramName:'#10+LoyaltyProgramNameOut]);
    if FanfareIdentifierOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1FanfareIdentifier:'#10+FanfareIdentifierOut]);
    if LoyaltyAccessCodeOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1LoyaltyAccessCode:'#10+LoyaltyAccessCodeOut]);
    if LoyaltyMemberTypeOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1LoyaltyMemberType:'#10+LoyaltyMemberTypeOut]);
    if FanfareBalanceCountOut<>0        then Rozkaz('formline' ,['fn201','fl11','s1FanfareBalanceCount:'#10+IntToStr(FanfareBalanceCountOut)]);
    if LoyaltyPromoCodeCountOut<>0      then Rozkaz('formline' ,['fn201','fl12','s1LoyaltyPromoCodeCount:'#10+IntToStr(LoyaltyPromoCodeCountOut)]);
    if CardResponseValueOut<>''         then Rozkaz('formline' ,['fn201','fl11','s1CardResponseValue:'#10+CardResponseValueOut]);
    if IsSignatureRequiredOut<>0        then Rozkaz('formline' ,['fn201','fl11','s1IsSignatureRequired:'#10+IntToStr(IsSignatureRequiredOut)]);
    if MealVoucherStatusOut<>0          then Rozkaz('formline' ,['fn201','fl11','s1MealVoucherStatus:'#10+IntToStr(MealVoucherStatusOut)]);
    if BlikCodeOut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1BlikCode:'#10+BlikCodeOut]);
    if BlikRefCodeOut<>''               then Rozkaz('formline' ,['fn201','fl8','s1BlikRefCode:'#10+BlikRefCodeOut]);
    if TokenOut<>''                     then Rozkaz('formline' ,['fn201','fl5','s1Token:'#10+TokenOut]);
    if TokenExpDateOut<>''              then Rozkaz('formline' ,['fn201','fl8','s1TokenExpDate:'#10+TokenExpDateOut]);
    if CurrentTokenTypeOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1CurrentTokenType:'#10+CurrentTokenTypeOut]);
    if TokenCardBrandOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1TokenCardBrand:'#10+TokenCardBrandOut]);
    if TokenLastFourDigitsOut<>''       then Rozkaz('formline' ,['fn201','fl11','s1TokenLastFourDigits:'#10+TokenLastFourDigitsOut]);
    if TokenPAROut<>''                  then Rozkaz('formline' ,['fn201','fl5','s1TokenPAR:'#10+TokenPAROut]);
    if TokenisationStatusOut<>0         then Rozkaz('formline' ,['fn201','fl11','s1TokenisationStatus:'#10+IntToStr(TokenisationStatusOut)]);
    if CardSchemeDataOut<>''            then Rozkaz('formline' ,['fn201','fl8','s1CardSchemeData:'#10+CardSchemeDataOut]);
    if MarkUpTextIndOut<>''             then Rozkaz('formline' ,['fn201','fl8','s1MarkUpTextInd:'#10+MarkUpTextIndOut]);
    if ApmTransactionIDOut<>''          then Rozkaz('formline' ,['fn201','fl11','s1ApmTransactionID:'#10+ApmTransactionIDOut]);
    if ApmMerchantTransactionIDOut<>''  then Rozkaz('formline' ,['fn201','fl12','s1ApmMerchantTransactionID:'#10+ApmMerchantTransactionIDOut]);
    if ApmShortCodeOut<>''              then Rozkaz('formline' ,['fn201','fl8','s1ApmShortCode:'#10+ApmShortCodeOut]);
    if ApmTransactionStatusOut<>''      then Rozkaz('formline' ,['fn201','fl11','s1ApmTransactionStatus:'#10+ApmTransactionStatusOut]);
    Rozkaz('formend'  ,['fn201']);
    end;
end;
{$endif}*)
begin
  if keylock>1 then keylock:=1;
  with m^ do begin
(*{$ifdef ELAVON}
  if Length(TerminalTransactions)>0 then PrintReceipt;
  SetLength(TerminalTransactions,0);
{$endif}*)
  prior_nip:=firmy_nip;
  firmy_nr:=0;firmy_naz:='';firmy_adr:='';firmy_nip:='';firmy_fak:='';
  Tow:='';Kak:='';Kan:='';nb:='';nz:='';
  il:=0;ilp:=0;rk:=0;ce:=0;w:=0;ws:=0;ts:=0;rzk:=0;rzp:=0;rzt:=0;rp:=0;ka:=0;ki:=0;tp:=0;tk:=0;tz:=0;
  tkz:=0;rkt:=0;rpt:=0;rt:=0;rs:=0;rks:=0;rps:=0;rkp:=0;wc:=0;wb:=0;wg:=0;wk:=0;lp:=0;lp_printed:=0;
  aka:=nil;
  storl:=0;zwl:=0;rabl:=0;
  Zwrot:=#0;
{$ifdef PUNKTY}
  AKlijAlert.Visible:=False;
  rabpktpoz:=0;
  rabpkttot:=0;
  rabpktlp:=-1;
  rabpkt:=0;
  pktrab:=0;
  klij_nr:=0;
  klij_pyt:=False;
  Panel4.Color:=clBtnFace;
  Panel4.Caption:=firmy_fak+' '+
        'Klient: '+IntToStr(m.klij_nr)+' '+
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
{$else}
  Panel4.Caption:=firmy_fak+' '+
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
{$endif}
{$ifdef ZAGRODA}
  ABezSyg.Visible:=False;
  bez_sygn:=False;
  naplacu:=False;
  kuponrab:=0;
{$endif}
  end;
{$ifdef HURT}
  HurtBtn.Down:=False;
  ACenHurtExecute(HurtBtn);
{$endif}
  if Sh Then Showline(True);
  Edit1.Text:='ILOŒÆ/KOD';
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
end;

procedure TMainForm.PrintHeader();
var i: Integer;
begin
   with m^ do
     if lp_printed=0 then
      case dr of
        Thermal: begin
          RozkazTh('$h');
          if Wersja >39 Then begin
            if tk>0 Then PrintOutTh('6$d'+Str(tk)+'/');
          end Else
          for i:=0 to length(aka)-1 do
             PrintOutTh(Format('%s$l%s'#13'il%.3f'#13'P/%s/0/',
                  [iif(aka[i].p<0,'10','6'),aka[i].kak,aka[i].il,str(aka[i].ka)]));
        end;
        Posnet: begin
{$ifdef OLDCEN}
{$ifdef MULTIPAR}
          //barcode z numerem paragonu w stopce
          if (lp<>0) then try
            Rozkaz('ftrcfg'#9'bc'+kasa+FormatDateTime('ddmmyy',date)+Format('%3.3d',[Parnum+1]));
          except
          end;
{$endif}
{$endif}
          Rozkaz('trinit');
          for i:=0 to length(aka)-1 do
             PrintOut(Format('trpack'#9'na%s'#9'ne%d'#9'pr%d'#9'il%.3f'#9'de%s'#9,
                  [aka[i].kak,iif(aka[i].p>0,0,1),System.Round(aka[i].ka*100.0),aka[i].il,aka[i].kan]));

        end;
{$ifdef ELZAB}
        Elzab: begin
          ElError(ReceiptBegin);
          for i:=0 to length(aka)-1 do
             ElError(PackageItem(iif(aka[i].p<0,'1','0'),abs(aka[i].il]),aka[i].ka*100));
        end;
{$endif}
   end;
end;

procedure TMainForm.PrintDeposit();
var i: Integer;
    s: string;
begin
      with m^ do case dr of
        Thermal: if Wersja>39 Then begin
             if (il>0) Then PrintOutTh('6$d'+Str(il*ki*ka)+'/');
           end else begin
            if w<0 Then i:=7 Else if il<0 Then i:=10 Else i:=6;
            PrintOutTh(Format('%d$l%s'#13'il%.3f'#13'P/%s/0/',[i,kak,abs(il*ki),str(ka)]));
           end;
        Posnet:
        begin
          s:='trpack'#9
             +'pr'+IntToStr(System.Round(ka*100))+#9
             +'il'+FloatToStr(abs(il*ki))+#9
             +'wa'+FloatToStr(abs(il*ki)*ka*100)+#9
             +'na'+kak+#9
             +'de'+kan+#9;
          if w<0 Then
            s:=s+'st1'#9
          Else if il<0 Then
            s:=s+'ne1'#9;
          PrintOut(s);
        end;
      end;
end;

procedure TMainForm.PrintUpToNow();
var i: Integer;
begin
     with m^,Paragony do
     if (lp>lp_printed) then begin
          DisableControls;
{$ifdef OLDCEN}
          AdsSettings1.ShowDeleted:=True;
{$endif}
          Last;
          while (Copy(Paragonyindex.AsString,1,1)<'P') and not bof do
            Prior;

          PrintHeader();
          i:=0;
          while not eof do begin
            tow:=FieldValues['INDEX'];
            if (tow[1]<'B') then begin
              inc(i);
              il:=FieldValues['ILOSC'];
              ce:=FieldValues['CENA'];
              rk:=FieldValues['RABAT_KWOT'];
              rp:=FieldValues['RABAT_PROC'];
              if (lp_printed<i) then
                PrintLine(Cennik.Lookup('INDEX',tow,'NAZWA;JM;STAWKA'));
            end;
            Next;
          end;
{$ifdef OLDCEN}
          AdsSettings1.ShowDeleted:=False;
{$endif}
          EnableControls;
        end;
end;

procedure TMainForm.PrintLine(v: Variant);
var i: Integer;
    r,s,t: string;
begin
     with m^ do begin
       inc(lp_printed);
       case dr of
         Thermal: begin
            i:=51; //35;
            t:=str(abs(il));
            if pos('.',t)=0 Then t:=t+'.';
            if Copy(v[1],1,3)<>'szt' Then Begin
               Dec(i,Length(v[1])+1);
               t:=t+' '+v[1];
            end;
            s:=copy(v[0],1,i-length(Format('%g%f%f',[abs(il),ce,abs(w)])));
            s:=Format('$l%s'#13'%s'#13'%s/%s/%s/',[s,t,v[2],Str(ce),Str(abs(w))]);
            if rk<>0 then begin
               i:=1;
               if 10*il*rk<0 Then inc(i,2);
               if rp<>0 Then begin
                 inc(i,1);
                 t:=str(abs(rp));
               end else t:=str(abs(rk));
               s:=Format(';%d%s%s/',[i,s,t]);
            end;
            if il<0 Then i:=0 else i:=lp_printed;
            RozkazTh(IntToStr(i)+s);
         end;
         Posnet: begin

//            r:=#9'na'+copy(v[0],1,36-length(Format('%gx%.2f%.2f',[abs(il),ce,abs(w)])));
            r:=#9'na'+copy(v[0],1,52-length(Format('%gx%.2f%.2f',[abs(il),ce,abs(w)])));
            s:=v[2];
            r:=r+#9'vt'+Chr(Ord(s[1])-17);
            r:=r+#9'pr'+IntToStr(System.Round(Ce*100));
            if il<0 Then
              r:=r+#9'st1';
            if rp<>0 then
              r:=r+#9'rn'+FloatToStr(Abs(rp))+'%';
            if rk<>0 then
              r:=r+#9'rw'+IntToStr(System.Round(abs(rk)*100));
            if 10*il*rk<0 Then
              r:=r+#9'rd0';
            Rozkaz('trline'#9'il'+FloatToStr(abs(il))+r);
         end;
         Farex: begin
            i:=integer(ka<>0);
            s:=v[2];
            r:=Format('%9.9d%4.4s%10.10d%2.2d%1d%10.10d%40.40s',[System.Round(il*1000),v[1]+'    ',System.Round(Ce*100),ord(s[1])-64,i,System.Round(ka*100*ki),v[0]+stringOfChar(' ',40)]);
            Rozkaz(30,r);
         end;
      end;
    end;
end;

procedure TMainForm.PrintSubTotDisc();
var i: Integer;
    s: string;
begin
  with m^ do
    if rks<>0 Then begin
      case dr of
       Thermal:
          if Wersja<39 Then begin
             s:='$Y'+str(tp-rkt)+'/'+str(abs(rks))+'/';
             if rps<>0 Then begin
                s:=';16'+s+FloattoStr(abs(rps))+'%';
                if rt<>0 Then s:=s+Format(' z kwoty %f',[rs]);
                s:=s+#13;
                // nazwa rabatu
             end else
             if nz<>'' then
                s:=';16'+s+nz+#13;
             if rks<0 Then i:=4 Else i:=3;
             RozkazTh(Format('%d%s',[i,s]));
          end;
       Posnet:
{$ifndef MULTIPAR}
         if (rps<>0) then begin
           if rt=0 Then Rozkaz(Format('trdiscntsubtot'#9'rw%.0f'#9'na%g%%'#9,[rks*100,rps]))
           else Rozkaz(Format('trdiscntsubtot'#9'rw%.0f'#9'na%g%% z kwoty %f'#9,[rks*100,rps,rs]));
         end Else
{$endif}
          if nz=''
           Then Rozkaz(Format('trdiscntsubtot'#9'rw%.0f'#9,[rks*100]))
           Else Rozkaz(Format('trdiscntsubtot'#9'rw%.0f'#9'na%s'#9,[rks*100,nz]));

       Farex:
           Rozkaz(32,Format('3%10.10d',[rks*100]));
     end;
     rkt:=rkt+rks;
     rt:=rt+rs; //rt suma podstawy rabatu podsumy
     //ts:=ts-rks;
     rs:=0;rks:=0;rps:=0;
  end;
end;

function TMainForm.Razem():THandle;
var a: Currency;
  function linia():THandle;
  var s: String;
      v: Variant;
      tm: TDateTime;
      i: Integer;
      p: Currency;
  begin
  with m^ do begin
    Result:=0;
    v:=Cennik.Lookup('INDEX',tow,'NAZWA;JM;STAWKA');
    if not VarIsArray(v) Then
      Raise EInOutError.Create('Brak Towaru:'+tow);

    IF (lp=0) and (tkz=0) and (tk=0) and (tz=0) then With Paragony do
    try
       DisableControls;
       Last;
       if (FieldByName('INDEX').AsString='KONIEC') Then Edit
       else if (Copy(FieldByName('INDEX').AsString,1,1)<'P') or (FieldByName('ILOSC').AsCurrency<>0)
       then Append else Edit;
       FieldValues['INDEX']:=Format('P%3d',[StrToIntDef(kasa,0)*100+kasjr])+ FormatDateTime('yyyymmdd',Date);
       FieldValues['ILOSC']:=Time;
       Post;
    finally
       EnableControls;
    end;
    if (dr=Thermal) and (zwrot='Z') and (Wersja>39) and (tp+w-rk>0)
      Then zwrot:='S';

    if (zwrot='Z') Then With Paragony do begin
         inc(zwl);
         append;
         FieldValues['INDEX']:=tow;
         FieldValues['ILOSC']:=il;
         FieldValues['CENA']:=ce;
         s:=v[2];
         FieldValues['STAWKA']:=LowerCase(s[1]); //  Chr(32+Byte(s[1])); //ma³a litera
         FieldValues['RABAT_KWOT']:=rk;
         FieldValues['RABAT_PROC']:=rp;
         Post;
    end else IF (w<>0) then begin
{$ifndef MULTIPAR}
      PrintHeader();
      PrintSubTotDisc();
{$endif}
      inc(lp);
{$ifndef MULTIPAR}
      //if lp_printed < lp then
      PrintLine(v);
{$endif}
      With Paragony do begin
         if rk<>0 Then inc(rabl);
         if il<0 Then inc(storl);
         append;
         FieldValues['INDEX']:=tow;
         FieldValues['ILOSC']:=il;
         FieldValues['CENA']:=ce;
         FieldValues['STAWKA']:=v[2];
         FieldValues['RABAT_KWOT']:=rk;
         FieldValues['RABAT_PROC']:=rp;
         Post;
      end;
    end;
    if ka<>0 then begin
{$ifndef MULTIPAR}
      if (lp<>0) Then PrintDeposit;
{$endif}
      With Paragony do begin
         append;
         FieldValues['INDEX']:='B'+kak;
         FieldValues['ILOSC']:=il*ki;
         FieldValues['CENA']:=ka;
         Post;
      end;
      if ( Zwrot in ['Z','B'] ) // and (il<0)
         Then p:=-1 //przyjecie opakowania - zwrot kaucji, zwrot towaru
         Else p:=1;
      for i:=0 To Length(aka)-1 do
         if (aka[i].kak=kak) and (aka[i].p = p) then begin
            aka[i].il:=aka[i].il+il*p;
            Exit;  //--!!!!!!!!!!
         end;
      i:=Length(aka);
      setlength(aka,i+1);
      aka[i].kak:=kak;
      aka[i].kan:=kan;
      aka[i].ka:=ka;
      aka[i].il:=ki*il*p;
      aka[i].p:=p;
    end;
  end;
  end;
begin
  with m^ do begin
  Result := 0;
  IF (Tow<>'') then begin
     if (w<>0) or (ka<>0) Then begin
       a:=il*ka*ki;
       Result:=Linia();
       if zwrot='Z' Then begin
          tz:=tz-w+rk;
       end else Begin
          tp:=tp+w-rk;
          ts:=ts+ws;
          rzt:=rzt+rzk;
          rkp:=rkp+rk;

{$ifndef MULTIPAR}
          rs:=tp-rt;
          if rps<>0 Then
             rks:=Round(rs*rps,0)/100;
{$endif}
       end;
       if (Zwrot in ['Z','B']) // (il>0) or {(dr=Posnet) and} (w<0)
          then tkz:=tkz-a
          else tk:=tk+a;
     end;
     il:=0;
     ilp:=0;
     ce:=0;
{$ifndef MULTIPAR}
{$ifdef OLDCEN}
  end else if (lp=0) and (dr=Posnet) then begin
     //barcode z numerem paragonu w stopce
     Rozkaz('ftrcfg'#9'bc'+kasa+FormatDateTime('ddmmyy',date)+Format('%3.3d',[Parnum+1]));
{$endif}
{$endif}
  end;
  w:=0;
  ws:=0;
  rk:=0;
  rp:=0;
{$ifdef PUNKTY}
  rabpktpoz:=0;
{$endif}
  rzp:=0;
  rzk:=0;
  ka:=0;
  ki:=0;
  zwrot:=#0;
  kak:='';
  kan:='';
  tow:='';
  nb:='';
  showline(False);

  //displayList.Text:=Format(' Razem: %*.2f'#10#10#10#10#10#10#10,[max(4,colnum-8),tp-rkt-rks+tk-tz-tkz]);
  end;
end;

function TMainForm.showline(new: Boolean):Variant;
var r,s: string;
    i: Integer;
    c,t: Currency;
    v: Variant;
begin
  with m^ do begin
    c:=Round(il*100*ce,0)/100;
    if rp<>0 then
      rk:=Round(c*rp,0)/100;
    if rzp<>0 then
      rzk:=Round(c*rzp,0)/100;
    t:=tp-rkt-rks-tz-tkz+tk;

    if new then begin
      w:=c;
      ws:=c;
      t:=t+c-rk+il*ki*ka;
      if rzp=0 then ws:=c Else ws:=0;
{$ifndef MULTIPAR}
      if rps<>0 then begin
//      rs rps rks
        t := t + rks - Round((tp-rt+c-rk)*rps,0)/100;
      end;
{$endif}
    end;
    if (rk<>0) {$ifdef ZAGRODA}or (kuponrab<>0){$else}or (rzk<>0) {$endif}or (rps<>0)
      Then Label4.Color:=clLime
      Else Label4.Color:=Label4.Parent.Brush.Color;

  Label4.Caption:=Format('%7.2f',[w+il*ki*ka-rk]);
  if tow='' then s:=''
  else begin
     v:=Cennik.Lookup('INDEX',tow,{$ifdef STANY}'NAZWA;JM;STAN'{$else}'NAZWA;JM;PROMOCJA'{$endif});
     if VarIsArray(v) Then begin
       s:=v[0];
{$ifndef STANY}
       if v[2]=Null
          Then v[2]:=False;

       if VarAsType(v[2],varBoolean) then begin
          r:=extractWord(1,s,[' ','.',',','/',';']);
          if pos(r,nz)=0 Then begin
            if nz<>'' Then nz:=nz+', ';
            nz:=nz+r;
          end;
       end;
{$endif}
     end Else Tow:='';
     Result:=v;
  end;
  DisplayList[0]:=copy(s,1,colnum);
  if (rp=0) and (rk=0)
  Then s:=copy(s,colnum+1,colnum)
  else begin
     s:=iif( (rk>=0),'R','D');
     if rp<>0
       then s:=s+Format(' %g%%',[abs(rp)]);
     s:=s+Format('=%.2f',[abs(rk)]);
  end;
  r:=FloatToStr(il);
  if (Tow<>'')
     Then r:=r+' '+v[1];
  i:=max(0,colnum-length(r)-1);
  DisplayList[1]:=Format('%*s %s',[i,s,r]);
  i:=max(colnum div 2,4);
  c:=ce+ki*ka;
  if il<>0
     Then c:=c-rk/il;
  DisplayList[2]:=Format('%*.2f%*.2f',[i,t,i,c]);
  DisplayList[6]:=Format('Liczba pozycji: %*d',[max(2,colnum-16),iif(w<>0,lp+1,lp)]);

  end;
  if new then begin
       //MessageBeep(MB_ICONASTERISK);
     Update;
     Windows.Beep(2000,100);
  end;

end;

procedure TMainForm.Towar(buf: string);
var c,z: Currency;
    v,u: Variant;
    s: String;
    i: LongInt;
begin
   c:=0;
   z:=0;
   if copy(buf,1,1)='B' Then begin
       s:=m.zwrot;
       Razem();
       buf:=copy(buf,2,maxint);
       if (s='S') then begin
          if (m.il>0) then
             m.zwrot:='B'
          else begin
             m.zwrot:='O';
             m.il:=-m.il;
          end;
       end else
          m.zwrot:='O';
   end else if (length(buf)<=6) Then begin
       buf:=Format('%6.6d',[StrToIntDef(buf,0)]);
   end else if (length(buf)>=12) and (copy(buf,1,2)='28') Then
   begin
       s:='0'+copy(buf,3,5);
       v:=Cennik.Lookup('INDEX',s,'JM;NAZWA');
       if VarIsArray(v) Then begin
           c:=StrToIntDef(copy(buf,8,5),0)/1000;
           buf:=s;
           if (m.il=c) and (m.tow=buf) then begin
               Razem;
               Update;
               s:=v[1]+' '+FloatToStr(c)+' '+v[0];
               if (IDNO=Application.MessageBox(PChar(s),'Kolejny raz to samo',MB_YESNO + MB_APPLMODAL + MB_ICONQUESTION ))
               Then begin
                 Edit1.Text:='ILOŒÆ/KOD';
                 Edit1.SelectAll;
                 If Edit1.Visible Then Edit1.SetFocus;
                 Exit;
               end;
           end Else
           Razem;
       end;
   end;

   if m.Zwrot in ['O','B'] Then
      buf:=Format('B%d',[strtointdef(buf,0)]);

   buf:=copy(buf,1,12);



   s:='';
   repeat
    v:=Cennik.Lookup('INDEX',buf,{$ifdef STANY}'JM;CENA;TANDEM;STAN;PLAC;PROMOCJA;NAZWA'{$else}'JM;CENA;TANDEM;CENA_H;RABAT;WAZNOSC;NAZWA;PROMOCJA'{$endif});

    if not VarIsArray(v) then begin
     //Windows.Beep(1000,500);
     Edit1.Text:='Brak takiego Towaru';
     Edit1.SelectAll;
     If Edit1.Visible Then Edit1.SetFocus;
     Raise EInOutError.Create('Nie mam takiego towaru w cenniku: '+buf);
    end;

{$ifdef HURT}
      if v[3]=Null
       Then v[3]:=0;
{$endif}
    if (z = 0) Then
{$ifdef HURT}
      if HurtBtn.Down
        Then z:=v[3]
        Else
{$endif}
      z:=v[1];

    if VarIsNull(v[2]) or (Length(v[2])<6) Then break;

    s:=s+';'+buf;
    buf:=v[2];
   until pos(buf,s)<>0; //False;

{$ifdef HURT}
    if v[4]=Null
       Then v[4]:=0;
    if v[5]=Null
       Then v[5]:=0;
    if v[7]=Null
       Then v[7]:=False;
{$endif}
   if (m.zwrot=#0) and ((buf<>m.tow) or (m.ce-z<>0) or (m.rk<>0)
    {$ifdef HURT} and (m.rp=0) (*or (m.rp<>varastype(v[4],varCurrency))*){$endif}) then
        Razem();

   if ((m.il=0) or (m.tow=buf)) and (c=0) Then c:=1;

   m.tow:=buf;

   m.il:=m.il+c;

   if m.ce=0
     then m.ce:=z;

{$ifdef HURT}
   if (m.il>=v[5]) and (m.rp=0) and (m.rk=0) then begin
     if VarAsType(v[7],varBoolean)
        Then m.rzp:=v[4]
        Else m.rp:=v[4];
   end;
{$else}
   if (m.rp=0) and (m.rk=0) then begin
     if VarAsType(v[5],varBoolean) //promocja
        Then m.rzp:=5; //bierzemy 5% rabatu w zawieszeniu
   end;
{$endif}

   if (m.zwrot=#0) and (m.il<0) Then begin
     m.il:=-m.il;
     m.zwrot:='Z';
   end;

{$ifdef ZAGRODA}
   if v[4] Then begin
     m.naplacu:= True;
     ABezSyg.Visible:=True;
   end;
{$endif}
{$ifdef STANY}
   if varisnull(v[3])
    then z:=0
    else z:=v[3]; //stan na magazynie
{$endif}

   IF not VarIsNull(v[2]) Then
   begin
     buf:=v[2];
     i:=pos('B',buf)+1;
     s:=Copy(buf,i,maxint);
     u:=Cennik.Lookup('INDEX','B'+s,'CENA;NAZWA');
     if VarIsArray(u)
     Then begin
        m.ki:=strToIntDef(Copy(buf,1,i-2),1);
        m.ka:=u[0];
        m.kak:=s;
        m.kan:=u[1];
     end;
   end;

   if m.zwrot='Z' then begin
     m.il:=-m.il;
     showline(True);
     Razem;
     Edit1.Text:='ILOŒÆ/KOD';
     Edit1.SelectAll;
     If Edit1.Visible Then Edit1.SetFocus;
     Exit;
   end;

   with m^, Paragony do if zwrot='S' then
   try
      buf:='B'+m.kak; // razem to skasuje potem
      DisableControls;
      Last;
      repeat
        if (FieldByName('INDEX').AsString=Tow) and ((il=0) or (il=FieldByName('ILOSC').AsCurrency)) Then begin
         il:=-FieldByName('ILOSC').AsCurrency;
         ce:=FieldByName('CENA').AsCurrency;
         rp:=FieldByName('RABAT_PROC').AsCurrency;
         rk:=-FieldByName('RABAT_KWOT').AsCurrency;
         s:=Bookmark;
         showline(True);
         Razem;
         if FieldByName('INDEX').AsString=buf then //butelka
            Delete; // i cofam sie wstecz bo jestem na koncu
         Delete;
         Bookmark:=s;
         Delete;
         if FieldByName('INDEX').AsString=buf then //butelka
            Delete;
         Last;
         Edit1.Text:='ILOŒÆ/KOD';
         Edit1.SelectAll;
         If Edit1.Visible Then Edit1.SetFocus;
         Exit;
        end;
        Prior;
      until bof or (copy(FieldByName('INDEX').AsString,1,1)>='P');
      Last;
      il:=-abs(il);
      rk:=-abs(rk);
      Exit;
   finally
      EnableControls;
   end;

   if m.zwrot='B' Then begin //zwrot kaucji przyjecie butelki
     m.il:=-m.il;
     // m.zwrot:='O';
   end;

   if m.zwrot in ['O','B'] then begin
     m.ka:=m.ce;
     m.ki:=1;
     m.ce:=0;
     m.rk:=0;
     m.rp:=0;
{$ifdef PUNKTY}
     m.rabpktpoz:=0;
{$endif}
     m.kak:=copy(buf,2,maxint);
     m.kan:=v[6];
     showline(True);
     razem;
     Edit1.Text:='ILOŒÆ/KOD';
     Edit1.SelectAll;
     If Edit1.Visible Then Edit1.SetFocus;
     Exit;
   end;

   if (m.zwrot=#0) Then begin
     showline(True);
     buf:='rab/iloœæ/kod';
     Edit1.Text:=buf;
     Edit1.SelectAll;
{$ifdef STANY}
     if m.il>z then begin
        Label4.Color := clYellow;
        DisplayList[3]:= 'Brak, pozosta³o:'+FloatToStr(z);
     end;
     //ShowMessage('Brak na magazynie, pozosta³o:'+FloatToStr(z));
     //Raise EUnderflow.Create('Brak na magazynie, pozosta³o:'+FloatToStr(z));
{$else}
{$ifdef OLDCEN}
   if (v[0]='szt.') and (frac(m.il) <> 0)
     Then ShowMessage('Tylko na sztuki: '+FloatToStr(m.il)+' '+v[0]);
     //Raise EUnderflow.Create('Tylko na sztuki: '+FloatToStr(m.il)+' '+v[0]);
   if (v[0]='szt') and (frac(m.il*4) <> 0)
     Then ShowMessage('Najwy¿ej w æwiartkach: '+FloatToStr(m.il)+' '+v[0]);
     // Raise EUnderflow.Create('Najwy¿ej w æwiartkach: '+FloatToStr(m.il)+' '+v[0]);
{$endif}
{$endif}
   end;
end;

procedure TMainForm.AGotowkaExecute(Sender: TObject);
var a,t: Currency;
    i: Integer;
    r,s: String;
    l: TStringList;
    v: Variant;
//    ap: array of string;
//    e: TDataSetNotifyEvent;
begin
  with m^ do begin
    if w<>0 Then begin
       ARazemExecute(Sender);
       Exit;
    end;

    t:=tp-rkt-rks+tk-tz-tkz;

    try
      a:=StrToCurr(Edit1.Text);
    except
{$ifdef BAR}
      a:=t-(wg+wc+wb+wk)
{$else}
      a:=0;
{$endif}
    end;
    Edit1.Clear;
    If Edit1.Visible
      Then Edit1.SetFocus;

    wg:=wg+a;
    //reszta
    a:=(wg+wc+wb+wk)-t;
    displayList[0]:=Format('  Razem: %*.2f',[max(4,colnum-9),t+max(0,-wb)]);
    IF wg+wc+max(0,wb)+wk>0 Then begin
      displayList[1]:=Format(' Wp³ata: %*.2f',[max(4,colnum-9),wg+wc+max(wb,0)+wk]);
      displayList[2]:=Format('%s %*.2f',[IIF(wg+wc+max(0,wb)+wk-t>=0,IIF(wg+wc+max(0,wb)+wk=0,'WYP£ATA:',' Reszta:'),'DOP£ATA:'),max(4,colnum-9),abs(a)]);
    end else IF rkt+rks+rkp<>0 Then begin
      displayList[1]:=Format('%s: %*.2f',[iif(rkt+rks+rkp>=0,'  RABAT','DOP£ATA'),max(4,colnum-9),rkt+rks+rkp]);
    end;

    IF rkt+rks+rkp<>0 Then
      DisplayList[3]:=iif(rkp+rkt+rks>0,'R','D');
  end;
(*{$ifdef PUNKTY}
    with m^ do if (klij_nr=0) and not klij_pyt and (t>=10) and (MessageDlg('Poproœ o kartê',mtInformation,[mbOK,mbCancel],0)=mrOK)
    Then begin
        Edit1.Text:='nr klienta';
        Edit1.SelectAll;
        Edit1.SetFocus;
        Label4.Color:=clYellow;
        Label4.Caption:='KLIENT';
        klij_pyt:=True;
        Exit;
    end;
{$endif}*)
  with m^ do if (a>=0) Then begin
    if rkt+rks<>0
      Then Label4.Color:=clLime
      Else Label4.Color:=Label4.Parent.Brush.Color;
    Label4.Caption:=Format('R%6.2f',[a]);
    Update;

    case dr of
      Thermal:
        PrintOutTh('1$d');
      Posnet:
        begin
{$ifdef MULTIPAR}
{$ifdef OLDCEN}
          //barcode z numerem paragonu w stopce
//          if (lp<>0) then try
//            Rozkaz('ftrcfg'#9'bc'+kasa+FormatDateTime('ddmmyy',date)+Format('%3.3d',[Parnum+1]));
//          except
//          end;
{$endif}
{$endif}
          PrintOut('opendrwr');
        end;
    end;
    parnum:=0;
    if (lp<>0) or (tk<>0) or (tkz<>0) or (tz<>0) or (wb<0) then try

      if (lp<>0) or (tk<>0) or (tkz<>0) then try
{$ifdef MULTIPAR}
        PrintUpToNow;
{$endif}
        if (lp=0) and (length(aka)>0) then case dr of
          Thermal: if Wersja >39 then begin
              if (tk>tkz) Then begin
                tk:=tk-tkz;
                tkz:=0;
                RozkazTh('$h');
                PrintOutTh('6$d'+Str(tk)+'/');
              end;
            end Else begin
              RozkazTh('$h');
              for i:=0 to length(aka)-1 do
                PrintOutTh(Format('%s$l%s'#13'il%.3f'#13'P/%s/0/',
                  [iif(aka[i].p<0,'10','6'),aka[i].kak,aka[i].il,str(aka[i].ka)]));
            end;
          Posnet: begin
            Rozkaz('trpackinit');
            for i:=0 to length(aka)-1 do
              PrintOut(Format('trpack'#9'na%s'#9'ne%d'#9'pr%d'#9'il%.3f'#9'de%s'#9,
                   [aka[i].kak,iif(aka[i].p>0,0,1),System.Round(aka[i].ka*100.0),aka[i].il,aka[i].kan]));
            aka:=nil;
            end;
        end;

  (*
        if (ROUND(tp*rpt,0)/100<>rkt) Then
          rpt:=round(10000*rkt/tp,0)/100;
   *)


        if rks<>0 Then case dr of
          Thermal: if Wersja<39 Then begin
              s:='';
{$ifndef MULTIPAR}
              if rps<>0 Then begin
                s:=FloattoStr(abs(rps))+'%';
                if rt<>0 Then s:=s+Format(' z kwoty %f',[rs]);
                rps:=0;
              end else
{$endif}
                if nz<>'' then
                  s:=nz;

              if rks<0 Then i:=4 Else i:=3;
              RozkazTh(Format('%d$n%s'#13'%s/',[i,s,str(abs(rks))]));
            end;
          Posnet: begin
{$ifndef MULTIPAR}
              if (rps<>0) then begin
                if rt=0 Then Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9'na%g%%'#9,[rks*100,rps]))
                  else Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9'na%g%% z kwoty %f'#9,[rks*100,rps,rs]));
              end Else
{$endif}
                if nz=''
                  Then Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9,[rks*100]))
                  Else Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9'na%s'#9,[rks*100,nz]));

              if rt=0 Then rpt:=rps;
              rt:=rt+rs;
              rkt:=rkt+rks;
              //ts:=ts-rks;
              rs:=0;rks:=0;rps:=0;
            end;
        end;

        case dr of
          Thermal: begin
              if (lp>0) or (tk>tkz)
                Then RozkazTh(Format('0;0;1;%d;%d;%d;%d;%d;%d;%d;%d$x%d'#13#13#13#13#13#13#13'zwrócony towar'#13'%s'#13'%s/%s/%s/%s/%s/%s/%s/%s/%s/'
                       ,[iif(rks=0,0,IIF(rks>0,1,2)+IIF(rps=0,2,0)),iif(wg=0,0,1),iif(wk=0,0,1),iif(wc+tz=0,0,1),iif(wb<=0,0,1),iif(tk=0,0,1),iif(tkz=0,0,1),iif(wg+wc+Max(wb,0)+wk-t>0,1,0),
                       StrToIntDef(kasa,0)*100+kasjr,nb,str(tp-rkt),str(abs(iif(rps<>0,rps,rks))),str(wg),str(wk),str(wc+tz),str(iif(wb>0,wb,0)),str(tk),str(tkz),str(wg+wc+wk+Max(wb,0) - t)]))
                Else RozkazTh(Format('#w%f'#13,[tkz+tz-tk]));
              rt:=rt+rs;
              rkt:=rkt+rks;
              //ts:=ts-rks;
              rs:=0;rks:=0;rps:=0;
              s:=RozkazTh('#s',False);
              parnum:=StrToIntDef(ExtractWord(WordCount(s,['/']) div 2,s,['/']),0);
            end;
          Posnet: begin
              if (firmy_nip<>'') and (wersja>=20.01) then Rozkaz('trnipset'#9'ni'+firmy_nip);

              if wg<>0
                Then PrintOut(Format('trpayment'#9'ty0'#9'wa%.0f'#9,[wg*100]));
              if wc<>0
                Then PrintOut(Format('trpayment'#9'ty3'#9'wa%.0f'#9,[wc*100]));
              if wb>0
                Then PrintOut(Format('trpayment'#9'ty4'#9'wa%.0f'#9,[wb*100]));
              if wk<>0
                Then PrintOut(Format('trpayment'#9'ty2'#9'wa%.0f'#9,[wk*100]));
              if tz<>0
                Then PrintOut(Format('trpayment'#9'ty6'#9'na- za zwrócony towar'#9'wa%.0f'#9,[tz*100]));

              if wb<0  //wg+wc+wb+wk>t
                Then PrintOut(Format('trpayment'#9're1'#9'ty4'#9'naBON UA'#9'wa%.0f'#9,[-wb*100])); //(wg+wc+wb+wk-t)*100

              if a<>0
                Then PrintOut(Format('trpayment'#9're1'#9'ty0'#9'wa%.0f'#9,[a*100])); //(wg+wc+wb+wk-t)*100

              a:=a+max(0,-wb);
              s:='trend'#9;
              if tp<>0   then s:=s+Format('to%.0f'#9,[(tp-rkt)*100]);
              if tk<>0   then s:=s+Format('op%.0f'#9,[tk*100]);
              if tkz<>0  then s:=s+Format('om%.0f'#9,[tkz*100]);
              if (wg+wc+max(wb,0)+wk+tz)<>0 then s:=s+Format('fp%.0f'#9,[(wg+wc+max(wb,0)+wk+tz)*100]);
              if a<>0 then s:=s+Format('re%.0f'#9,[a*100]);
              if (wersja<20.01) and ((aka<>nil) or (firmy_nip<>'')) then s:=s+Format('fe%d'#9,[0]);

              //Format('trend'#9'fe%d'#9'to%.0f'#9'op%.0f'#9'om%.0f'#9'fp%.0f'#9're%.0f',
              //       [{iif((aka=nil),1,0)}0,(tp-rkt)*100,tk*100,tkz*100,(wg+wc+max(wb,0)+wk+tz)*100,a*100]); //(wg+wc+wb+wk-t)*100
              Rozkaz(s);

              if (wersja<20.01) and ((aka<>nil) or (firmy_nip<>'')) Then begin
                if (aka<>nil) then for i:=0 To Length(aka)-1 do
                  PrintOut(Format('trpackprnend'#9'na%s'#9'ne%d'#9'pr%d'#9'il%.3f'#9'de%s'#9,
                       [aka[i].kak,iif(aka[i].p>0,0,1),System.Round(aka[i].ka*100.0),aka[i].il,aka[i].kan]));
                if (firmy_nip<>'') and (wersja<20.01) then begin
                   PrintOut('trftrln'#9'id30'#9'naNIP nabywcy '+firmy_nip);
                end;
                PrintOut('trftrend');
              end;

              s:=Pytanie(Rozkaz('scnt'),'bn');
              parnum:=StrToIntDef(s,0);

{
              s:=FormatDateTime('ddmmyyyy',date)+kasa+Format('%3.3d',[parnum]);
              Rozkaz('ftrcfg'#9'bc'+s);
}

            end;
        end;
      Except
{$ifdef OLDCEN}
        //unikam ponownego drukowania paragonu przed stornem
        lp:=0;
{$endif}
        AStornoExecute(Sender);
        AdsSettings1.ShowDeleted:=False;
        Paragony.EnableControls;
        Raise;
      end;

      if (tz<>0) //and (tk=0) and (tkz=0) and (lp=0)
      Then case dr of
         Thermal: RozkazTh('#z'+str(tz)+'/');
         Posnet: begin
             //Rozkaz('stocash'#9'kw'+CurrToStr(tz*100));
             Rozkaz('formstart',['fn42','fh0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl0','s1zwrotu towaru']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl11','s1                     Iloœæ Wartoœæ']);
             Rozkaz('formcmd' ,['fn42','cm1']);
             with Paragony do try
               DisableControls;
               Last;
               while (Copy(Paragonyindex.AsString,1,1)<'P') and not bof do begin
                 if ( Copy(ParagonyIndex.AsString,1,1)<>'B') and (ParagonyILOSC.AsCurrency<0) Then begin
                   s:=' '+CurrToStr(-ParagonyILOSC.AsCurrency)+' x'+CurrToStrF(ParagonyCena.AsCurrency,ffFixed,2)+' '+CurrToStrF(-ParagonyILOSC.AsCurrency*ParagonyCena.AsCurrency,ffFixed,2)+UpperCase(ParagonyStawka.AsString);
                   Rozkaz('formline' ,['fn42','fl19','s1'
                   +Copy(ParagonyNazwa.AsString+'                        ',1,38-Length(s))+s]);
                 end;
                 Prior;
               end;
             finally
               EnableControls;
             end;
             Rozkaz('formcmd' ,['fn42','cm1']);
             s:=CurrToStrF(tz,ffFixed,2);
             Rozkaz('formline' ,['fn42','fl29','s1'+StringOfChar(' ',32-Length(s))+s]);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl2','s1odbioru gotówki:']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl55']);
             Rozkaz('formline' ,['fn42','fl56','s1zwracaj¹cego towar']);
             Rozkaz('formend'  ,['fn42']);
             if parnum=0
               Then parnum:=StrToIntDef(Pytanie(Rozkaz('scnt'),'hn'),0);
           end;
      end;
      if (lp<>0) or (tk<>0) or (tkz<>0) or (tz<>0) then with Paragony do try
        DisableControls;
        if (lp<>0) or (tk<>0) or (tkz<>0) then begin
          Last;
          while (Copy(Paragonyindex.AsString,1,1)<'P') and not bof do
            Prior;

          Edit;
          Paragonyrabat_kwot.asCurrency:=rkt;
          Paragonyrabat_proc.asCurrency:=rpt;

          i:=0;
          if (tz<>0) or (tp<0) Then Inc(i,1); //'a'
          if wb>0 Then Inc(i,2);              //'b'
          if wk<>0 Then Inc(i,4);             //'d'
          if wg<>0 Then Inc(i,8);             //'h'
          if wc<>0 Then Inc(i,16);

          case dr of
            None: begin
                ParagonySTAWKA.AsString:=Char(i+$60); // lower
  {$ifdef NOPRINT}
                IF wk<>0 Then ParagonyIlosc.AsCurrency:=wk
                  else if wc<>0 Then ParagonyIlosc.AsCurrency:=wc
                  else if wb>0 Then ParagonyIlosc.AsCurrency:=wb
                  else ParagonyIlosc.AsCurrency:=0;
                ParagonyCena.AsCurrency:=wg;
  {$endif}
              end;
          else
            ParagonyCena.AsCurrency:=tp;
            ParagonyIlosc.AsFloat:=parnum+Time;
            ParagonySTAWKA.AsString:=Char(i+$40); // upper
          end;
        end;
{$ifdef PUNKTY}
        if (klij_nr<>0) then begin
          ParagonyRabat_proc.asCurrency:=klij_nr / 100;
          if (rabpkt<>0) then begin
            Append;
            Paragonyindex.AsString:='BPUNKTY';
            ParagonyIlosc.AsCurrency:=pktrab*10;
            ParagonyRABAT_KWOT.AsCurrency:=rabpkt;
            ParagonyRABAT_PROC.AsCurrency:=klij_nr / 100;
          end;
        end;
{$endif}
        Append;
        Paragonyindex.AsString:='KONIEC';
        Post;
      finally
        EnableControls;
      end else if (wb<0) Then case dr of
         Thermal: RozkazTh('#i'+str(-wb)+'/');
//         Posnet:  Rozkaz('cash'#9'wp1'#9'kw'+CurrToStr(-wb*100));
         Posnet: begin
             Rozkaz('formstart',['fn42','fh0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl0','s1pomocy UA']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             s:=CurrToStrF(-wb,ffFixed,2);
             Rozkaz('formline' ,['fn42','fl28','s1'+StringOfChar(' ',33-Length(s))+s]);
             Rozkaz('formend'  ,['fn42']);
             if parnum=0
               Then parnum:=StrToIntDef(Pytanie(Rozkaz('scnt'),'hn'),0);
           end;
      end;

      fixutarg;

      With Utarg do begin
        Edit;
        Utarg['PARAGON_do']:=parnum;
        Utarg['SPRZEDAZ']:=Utarg.FieldByName('SPRZEDAZ').AsCurrency+tp-rkt;
        Utarg['RABAT_par']:=Utarg.FieldByName('RABAT_par').AsCurrency+rkt;
        Utarg['RABAT_poz']:=Utarg.FieldByName('RABAT_poz').AsCurrency+rkp;
        Utarg['KAUCJA_POB']:=Utarg.FieldByName('KAUCJA_POB').AsCurrency+tk;
        Utarg['KAUCJA_ZWR']:=Utarg.FieldByName('KAUCJA_ZWR').AsCurrency+tkz;
        Utarg['ZWROTY']:=Utarg.FieldByName('ZWROTY').AsCurrency+tz;
        Utarg['GOTOWKA']:=Utarg.FieldByName('GOTOWKA').AsCurrency+tp-rkt-wb-wc-wk; //+tk-tkz
        Utarg['CZEKI']:=Utarg.FieldByName('CZEKI').AsCurrency+wc+Min(wb,0);
        Utarg['KARTY']:=Utarg.FieldByName('KARTY').AsCurrency+wk;
        if wb<>0 Then Utarg[nb]:=Utarg.FieldByName(nb).AsCurrency+Max(wb,0);


        //UtargKORONY.AsCurrency:=UtargKORONY.AsCurrency+ww;
        //UtargKORONY_Z.AsCurrency:=UtargKORONY_Z.AsCurrency+kor2zl(ww);

        Utarg['STAN_KON']:=Utarg.FieldByName('STAN_KON').AsCurrency+tp-rkt-wb-wc-wk+tk-tkz;
        Utarg['IL_STO_POZ']:=Utarg.FieldByName('IL_STO_POZ').AsInteger+storl;
        Utarg['IL_PAR_FIS']:=Utarg.FieldByName('IL_PAR_FIS').AsInteger+1;
        Utarg['IL_FIS_POZ']:=Utarg.FieldByName('IL_FIS_POZ').AsInteger+lp;
        IF rkt<>0 Then
          Utarg['IL_PAR_RAB']:=Utarg.FieldByName('IL_PAR_RAB').AsInteger+1;
        IF rkp<>0 Then
          Utarg['IL_POZ_RAB']:=Utarg.FieldByName('IL_POZ_RAB').AsInteger+rabl;
        Utarg['MINUT']:=(Time-Utarg.FieldByName('GODZINA').AsDateTime)*24*60;
        Post;
      end;
      Paragony.AdsFlushFileBuffers;
      Utarg.AdsFlushFileBuffers;
{$ifdef PUNKTY}
      if (rabpkt<>0) and (m.klij_nr>0) then try
        AdsSettings1.ShowDeleted:=True;
        Firmy.Open;
        KarKlij.Open;
        KarKlij.First;
        rabpktlp:=StrToIntDef(KarKlijTelefon.AsString,0)+1;
        KarKlij.Edit;
        KarKlijTelefon.AsInteger:=rabpktlp;
        KarKlij.Post;
        AdsSettings1.ShowDeleted:=False;
        KarKlij.SetRange([m.klij_nr],[m.klij_nr]);
        frReport1.LoadFromFile('kr.frf');
        if frReport1.PrepareReport
          Then frReport1.PrintPreparedReport('',1,True,frAll);//ShowPreparedReport;
      finally
        frReport1.Clear;
        KarKlij.Close;
        Firmy.Close;
        AdsSettings1.ShowDeleted:=False;
      end;
{$endif}
    finally
{$ifdef MULTIPAR}
      AdsSettings1.ShowDeleted:=True;
      Paragony.AdsCopyTableContents(ParJob);
      AdsSettings1.ShowDeleted:=False;
      Paragony.EmptyTable;
      ParJob.Last; //resetuje isempty dla ontimer !!!
{$endif}
    end;
    if (lp=0) and (wb<0)
      Then case dr of
         Thermal: RozkazTh('#i'+str(-wb)+'/');
//         Posnet:  Rozkaz('cash'#9'wp1'#9'kw'+CurrToStr(-wb*100));
         Posnet: begin
             Rozkaz('formstart',['fn42','fh0']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formline' ,['fn42','fl0','s1pomocy UA']);
             Rozkaz('formcmd' ,['fn42','cm0']);
             s:=CurrToStrF(-wb,ffFixed,2);
             Rozkaz('formline' ,['fn42','fl28','s1'+StringOfChar(' ',33-Length(s))+s]);
             Rozkaz('formcmd' ,['fn42','cm0']);
             Rozkaz('formend'  ,['fn42']);
             if parnum=0
               Then parnum:=StrToIntDef(Pytanie(Rozkaz('scnt'),'hn'),0);
           end;
    end;
{$ifdef ZAGRODA}
    if (AFak.Checked or (firmy_nip<>'') or naplacu) //and FileExists(hostdir+'pytopar.'+kasa)
    then try
      if bez_sygn
        then s:='bezsygn:=.t.'
        else s:='naplacu:=.t.';

      l:=TStringList.Create;

      if firmy_nip<>''
        then s:=s+', firmy_NIP:="'+firmy_nip+'"';

      if AFak.Checked then begin
        FakBtn.Down:=True;
        AFakExecute(Sender);//FakBtn.Click;  resetuje bazy itd
        AFak.Checked:=False;
        s:=s+', firmy_FAK:="'+firmy_fak+'"';
        firmy_fak:='';
        firmy_nip:='';
      end;

      l.Add(s);
      l.SaveToFile(hostdir+'p'+kasa+'.run');
    finally
      l.free;
    end;
{$endif}
 //{$ifndef NOPRINT}
    case dr of
      Thermal: PrintOutTh('1$d');
      Posnet:  PrintOut('opendrwr');
    end;
//{$endif}
    ZerujP(False);

    if AFak.Checked then begin
      PageControl1.ActivePage:=tsSpec;
      FakBtn.Down:=True;
      FakBtn.Click;
      AFak.Checked:=False;
    end;

    Timer1Timer(nil);
  end else begin
    Edit1.Text:='dop³ata';
    Edit1.SelectAll;
    If Edit1.Visible Then Edit1.SetFocus;
  end;
end;

procedure TMainForm.ARazemExecute(Sender: TObject);
var p: Currency;
    s: String;
begin
    with m^ do begin
        razem;

        if rzt<>0 then begin //by³y promocyjne produkty
{$ifndef ZAGRODA}
           p:=ts-rkt-rks;
           if p>=rabat_od Then begin
             rs:=rs+tp-rkt-ts;
             rks:=rks+rzt;
             rzt:=0;
             rps:=0;
{$else}
           if kuponrab<>0 Then begin
             rs:=tp-rkt-ts;
             rks:=Round(rs*kuponrab,0)/100; //naliczam na nowo
             if (rs=tp)
                then rps:=kuponrab
                else rps:=0;
{$endif}
           end;
        end;


        p:=tp-rkt-rks+tk-tz-tkz+max(0,-wb);
        displayList.Text:=Format(' Razem: %*.2f'#10#10#10#10#10#10#10,[max(4,colnum-8),p]);
        DisplayList[6]:=Format('Liczba pozycji: %*d',[max(2,colnum-16),lp]);

        if rkt+rks<>0
          Then Label4.Color:=clLime
          Else Label4.Color:=Label4.Parent.Brush.Color;
        Label4.Caption:=Format('%7.2f',[p]);
        IF wg+wc+wb+wk>0 then begin
          displayList[1]:=Format(' Wp³ata: %*.2f',[max(colnum-8,4),wg+wc+max(0,wb)+wk]);
          displayList[2]:=Format('%7s: %*.2f',[iif(wg+wc+max(0,wb)+wk-p>=0,iif(wg+wc+max(0,wb)+wk=0,'WYP£ATA','Reszta'),'DOP£ATA'),max(colnum-8,4),abs(wg+wc+max(0,wb)+wk-p)]);
        end else if rks+rkt+rkp<>0 then begin
          s:=Format(': %.2f',[rkt+rkp+rks]);
          displayList[1]:=Format('%*s%s',[colnum-Length(s),iif(rks+rkt+rkp>=0,'RABAT','DOP£ATA'),s]);
        end;
        IF rks+rkt+rkp<>0 Then
           DisplayList[3]:=iif(rkp+rkt+rks>0,'R','D');
        Edit1.Text:='Gotówka';
        Edit1.SelectAll;
        If Edit1.Visible Then Edit1.SetFocus;
        //ARabat.Caption:='Rabat'#10'podsumy';
        //ARabat.Enabled:=True;
        //Rabat.Flat:=True;
      {
        IF (lp=0) and (tz=0) and (tkz=0) and (tk=0)
           Then Exit;
       }
       //{$ifdef ELAVON}
        {$ifdef MULTIPAR}
          //teoretycznie mo¿liwoœæ cofniecia sie i dokupienia, stornowania a w miedzyczasie inny paragon leci
          //ale czy nie lepiej jak klient widzi ju¿ na drukarce swoj¹ kwote?
          Application.ProcessMessages;
          PrintUpToNow;
        {$endif}
       //{$endif}
    end;
end;

procedure TMainForm.fixutarg;
var c: Currency;
begin
        With utarg do begin
          Last;
          if (Utarg.FieldByName('Kasjer').AsInteger<>kasjr) or (Utarg.FieldByName('data').AsDateTime<>date)
          Then begin
            c:=utarg.FieldByName('stan_kon').AsCurrency;
            if not isempty and ( Utarg.FieldByName('data').AsDateTime<>date ) then begin
               utargi.open;
               AdsCopyTableContents(utargi);
               utargi.close;
               EmptyTable;
               c:=0;
            end;
            Append;
            utarg['paragon_od']:=parnum+1;
            Utarg['stan_pocz']:=c;
            Utarg['stan_kon']:=c;
            Utarg['data']:=date;
            Utarg['godzina']:=FormatDateTime('hh:nn',time);
            Utarg['Kasa']:=kasa;
            Utarg['Kasjer']:=kasjr;
            Post;
          end;
        end;
end;

procedure TMainForm.ATowarExecute(Sender: TObject);
var l: TStringList;
    i: Integer;
    r,s: String;
    c: Currency;
begin
      s:=Edit1.Text;
      i:=Length(s);
      if i=0 Then Exit;
{$ifdef SCANKLAW}
      if (i=5) and (s[1] in ['K','k']) and (StrToIntDef(copy(s,2,maxint),0)>1000) Then begin
        Keylock:=Byte(s[2])-48;
        s:=copy(s,3,maxint);
        i:=3;
        if Keylock<1 Then begin
          AStornoExecute(Sender);
          Kasjer:='';
          Edit1.Text:='';
          Label4.Color:=clRed;
          Label4.Caption:='Kluczyk';
          DisplayList[6]:=Label4.Caption;
        end;
      end;
{$endif}
      if (i=3) and (Kasjer='') Then begin
        try
          Kasjr:=0;
          l:=TStringList.Create;
          l.LoadFromFile('Kasjerzy.txt');
          For i:=0 To l.Count-1 do
            if Copy(l[i],1,3)=s
               Then begin
                  r:=Copy(l[i],5,maxint);
                  kasjr:=i+1;
                  break;
               end;
        finally
          FreeandNil(l);
        end;
        if Kasjr<>0 Then begin
 //{$ifndef NOPRINT}
        case dr of
          Posnet: rozkaz('login'#9'na          godzina'#9'nk'+IntToStr(StrToIntDef(Kasa,0)*100+kasjr));
          Farex: rozkaz(99,intToStr(kasjr)+s);
        end;
//{$endif}
        Edit1.Font.Color:=clBlack;
        Edit1.Text:='ILOŒÆ/KOD';
        Edit1.SelectAll;
        If Edit1.Visible
           Then Edit1.SetFocus;
        DisplayList.Text:=#10#10#10#10#10#10#10;
        Kasjer:=r;
        //tsSpec.Caption:=IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+Kasjer;
        Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
        Label4.Color:=Label4.Parent.Brush.Color;
        Label4.Caption:='';
        //Caption:='Kasa: '+Kasa+' '+Kasjer;
        fixutarg;
        Exit;
        end;
      end;
      if Kasjr=0 Then begin
           Edit1.Text:='Kasjer';
           Label4.Color:=clYellow;
           Label4.Caption:='Kasjer';
           DisplayList[6]:=Label4.Caption;
           Edit1.SelectAll;
           If Edit1.Visible
             Then Edit1.SetFocus;
           Exit;
//           Raise EInOutError.Create('Brak takiego kasjera'#10'Podaj kod kasjera !');
      end;
{$ifdef PUNKTY}
      if (i=7) and (s[1]='$') then begin
         if 0<>pos('%',s) then begin
           m.kuponrab:=StrToCurr(copy(s,5,2));
           //m.klij_nr:=-1; //albo rabat albo punkty, -1 blokuje
           //Razem; //wymuszam rabat od paragonu
           //Edit1.Text:=copy(s,5,3);
           //ARabatExecute(Sender);
           ARazemExecute(Sender);
           Exit;
         end else begin
         c:=StrToIntDef('$'+copy(s,5,3),-1);
         if (StrToIntDef(copy(s,1,4),-1)>=0) and (c>0) Then begin
           razem;
           Edit1.Clear;
           if m.tp<c Then Exit;
           m.wc:=m.wc+c;
           AGotowkaExecute(Sender);
           Exit;
         end;
         end;
      end;
{$endif}
      try
        c:=StrToCurr(s);
      except
        c:=0;
      end;
{$ifdef PUNKTY}
      if (i=6) and (c>700000) and (c<800000) then begin
        (*
          if  (m.rps<>0) or (m.klij_nr=-1) then begin
              ShowMessage('Dajemy rabat wiêc bez punktów!');
              Exit;
          end;
        *)
         m.klij_nr:=System.Round(c);
         try
           KarKlij.Filtered:=False;
           Firmy.Open;
           KarKlij.Open;
           if not KarKlij.Locate('ID',m.klij_nr,[]) then begin
             if KarKlijNazwisko.IsNull and KarKlijPunkty.isNull
               Then KarKlij.Edit
               Else KarKlij.Insert;
             KarKlijID.Readonly:=False;
             KarKlijRAB_ZA100.Readonly:=False;
             m.klij_nr:=System.Round(c); //jeszcze raz bo insert ustawia
             KarKlijID.AsInteger:=m.klij_nr;
             KarKlijRAB_ZA100.AsInteger:=3;
             KarKlijDATA_ZAL.AsDateTime:=Date;
             KarKlij.Post;
             KarKlijID.Readonly:=True;
             KarKlijRAB_ZA100.Readonly:=True;
             KarKlijBtn.Down:=True;
             AKarKLijExecute(KarKlijBtn);
             MdDbGrid1.SelectedField:=KarKlijNazwisko;
             MdDbGrid1.CanSearch:=False;
             MdDbGrid1.Options:=MdDbGrid1.Options + [dgAlwaysShowEditor];
             Application.ProcessMessages;
             MdDbGrid1.EditorMode:=True;
             Exit;
           end;
           if KarKlijALARM.AsBoolean or not KarKlijPUNKTY.isnull and (KarKlijNAZWISKO.isnull or KarKlijADRES.isnull)
             then begin
               Panel4.Color:=clOlive
             end else Panel4.Color:=clYellow;
         except
           Panel4.Color:=clYellow;
           //KarKlij.Close;
         end;
         AKlijAlert.Visible:=True;
         Edit1.Clear;
         Panel4.Caption:=m.firmy_fak+' '+
             'Klient: '+IntToStr(m.klij_nr)+' '+
             'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
         If Edit1.Visible
           Then Edit1.SetFocus;
         Exit;
      end;
{$endif}
      if (i=10) and (c<>0) Then begin
        m.firmy_nip:=s;
        Edit1.Clear;
        Panel4.Caption:=m.firmy_fak+' '+
             'Klient: '+s+' '+
             'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
         If Edit1.Visible
           Then Edit1.SetFocus;
        Exit;
      end;
      if (i>0) and (c=0) Then begin
          MdDbGrid2.SelectedField:=CenyNazwa;
          MdDBGrid2.Klucz:=s;
          if MdDBGrid2.Klucz='' Then Exit;
          if PageControl1.ActivePage<>tsABC then begin
            PageControl1.ActivePage:=tsABC;
            PageControl1Change(nil);
          end;
          //MdDbGrid2.SelectedField:=CennikNazwa;
          //MdDBGrid2.Klucz:=s;
          MdDbGrid2.SetFocus;
          Exit;
      end;
{$ifdef BAR}
      if (i<3) and (c<>0) Then begin
          MdDbGrid2.SelectedField:=CenyIndex;
          MdDBGrid2.Klucz:='00'+s;
          if MdDBGrid2.Klucz='' Then Exit;
          if PageControl1.ActivePage<>tsABC then begin
            PageControl1.ActivePage:=tsABC;
            PageControl1Change(nil);
          end;
          //MdDbGrid2.SelectedField:=CennikIndex;
          //MdDBGrid2.Klucz:='00'+s;
          MdDbGrid2.SetFocus;
          Exit;
      end;
{$endif}
      towar(s);
      If Edit1.Visible
        Then Edit1.SetFocus;
end;

procedure TMainForm.AIleExecute(Sender: TObject);
var p: Currency;
    v: Variant;
begin
   try
     p:=StrToCurr(Edit1.Text);
   except
     p:=0;
   end;
   with m^ do begin
   IF (p=0) and (tow<>'') then begin
{$ifdef STANY}
        IF rk<>0 Then razem;
        if ilp<>0
          Then il:=il+ilp
          Else il:=il+1;
        v:=showline(True);
        if VarIsArray(v) and ((v[2]=null) and (il>0) or (il>v[2])) then begin
           Label4.Color := clYellow;
           DisplayList[3]:= 'Brak na magazynie';
        end;
        // ShowMessage('Brak na magazynie');
        //Raise EUnderflow.Create('Brak na magazynie');
{$else}
      v:=Cennik.Lookup('INDEX',tow,'JM;RABAT;WAZNOSC;PROMOCJA');
      if VarIsArray(v)
{$ifdef OLDCEN}
       and (Copy(v[0],1,3)='szt')
{$endif}
      then begin
        if v[1]=Null
          Then v[1]:=0;
        if v[2]=Null
          Then v[2]:=0;
        if v[3]=Null
          Then v[3]:=False;
        if (rk<>0) and (rp=0) (*or (rp<>v[1])*)
         then Razem();
        if ilp<>0
          Then il:=il+ilp
          Else il:=il+1;
        if  il>=v[2]
          Then rp:=v[1];
        showline(True);
      end;
{$endif}
      Exit;
   end;

   if p<0 then begin
      IF keylock<2 Then begin
        Label4.Color:=clRed;
        Label4.Caption:='Klucz 2';
        DisplayList[6]:=Label4.Caption;
        Raise EInOutError.Create('Przekrêæ kluczyk do 2!');
      end;
      Keylock:=1;
      Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
      'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
      'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
   end;

   Edit1.Text:='ILOŒÆ/KOD';
   Edit1.SelectAll;
   If Edit1.Visible Then Edit1.SetFocus;
   razem;
   il:=p;
   ilp:=p;
   v:=showline(True);
(*
{$ifdef STANY}
   if VarIsArray(v) and ((v[2]=null) and (il>0) or (il>v[2])) then ShowMessage('Brak na magazynie');
   //Raise EUnderflow.Create('Brak na magazynie');
{$endif}
*)
   end;
end;

procedure TMainForm.AStornoExecute(Sender: TObject);
var i: Integer;
    s: String;
begin
// lp:=0 podstaw przedtem to unikniesz drukowania paragonu przed stornem
{$ifdef OLDCEN}
    with m^ do if (lp=0) and (Tow<>'') and ((w<>0) or (ka<>0)) then
      Razem;

//---------
{$ifdef MULTIPAR}
    with m^ do begin
      with Paragony do if (lp<>0) then begin
        PrintUpToNow;
        if rks<>0 Then case dr of
            Thermal: if Wersja<39 Then begin
                 s:='';
                 if nz<>'' then
                    s:=nz;

                 if rks<0 Then i:=4 Else i:=3;
                 RozkazTh(Format('%d$n%s'#13'%s/',[i,s,str(abs(rks))]));
              end;
            Posnet: begin
             if nz=''
                Then Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9,[rks*100]))
                Else Rozkaz(Format('trdiscntbill'#9'rw%.0f'#9'na%s'#9,[rks*100,nz]));
             if rt=0 Then rpt:=rps;
             rt:=rt+rs;
             rkt:=rkt+rks;
             //ts:=ts-rks;
             rs:=0;rks:=0;rps:=0;
            end;
        end;
      end;
    end;
{$else}
{$endif}
{$endif}

    case dr of
      Thermal: begin
        ComPort1.WriteStr(#$18);
        PrintOutTh('0$e');
      end;
      Posnet: PrintOut('trcancel');
    end;
    ZerujP(True);
    AFak.Checked:=False;

    With m^, Paragony do try
      DisableControls;
      last;
      if isempty or (FieldByName('INDEX').AsString='KONIEC') then Exit;
      WHILE (Copy(FieldByName('INDEX').AsString,1,1)<'P') and not bof
      do begin
        delete;
        //prior;
      end;
      if bof Then //EmptyTable
      else begin
        Edit;
        FieldValues['INDEX']:='KONIEC';
        Post;
      end;
{$ifdef MULTIPAR}
      AdsSettings1.ShowDeleted:=True;
      AdsCopyTableContents(ParJob);
      AdsSettings1.ShowDeleted:=False;
      EmptyTable;
      ParJob.Last; //resetuje isempty dla ontimer !!!
{$endif}
    finally
      AdsSettings1.ShowDeleted:=False;
      EnableControls;
      AdsFlushFileBuffers;
    end;
    fixutarg;
    with utarg do
    begin
       Edit;
       UTARG['IL_PAR_STO']:=UTARG.FieldByName('IL_PAR_STO').AsInteger+1;
       Post;
       AdsFlushFileBuffers;
    end;
end;

procedure TMainForm.AEscExecute(Sender: TObject);
begin
  if PageControl1.ActivePageIndex<>0 Then begin
    PageControl1.ActivePageIndex:=0;
    PageControl1Change(PageControl1);
    Exit;
  end;
  with m^ do begin

{$ifdef OLDCEN}
    if (lp=0) and (Tow<>'') and ((w<>0) or (ka<>0)) then
    begin
      //Razem;
      AStornoExecute(Sender);
    end else
{$endif}
    begin
      wb:=0;wc:=0;wk:=0;wg:=0;
      Tow:='';
      il:=0;
      ilp:=0;
      ce:=0;
      Razem;
    end;
    Edit1.Text:='ILOŒÆ/KOD';
    Edit1.SelectAll;
    If Edit1.Visible Then Edit1.SetFocus;
    showline(True);
  end;
end;

procedure TMainForm.TabSheet1Enter(Sender: TObject);
begin
   Panel1.Visible:=True;
   Panel3.Visible:=True;
   Edit1.SelectAll;
   Edit1.SetFocus;
//   MdDbGrid1.Top:=160;
//   MdDbGrid1.Height:=MdDbGrid1.Parent.ClientHeight - 164
end;

procedure TMainForm.ARabatExecute(Sender: TObject);
var p: Integer;
    buf: String;
begin
  buf:=Edit1.Text;
  Edit1.Clear;
  p:=pos('%',buf);
  with m^ do begin
    if p=0 Then try
      rp:=0;
      rk:=Round(StrToCurr(buf),2)
    except
      rk:=0;
    end else rp:=Round(StrToCurr(Trim(copy(buf,1,p-1))),2);
    if w<>0 Then Showline(True)
    else if (tp<>0) or (rp<>0) then begin
    //poprzedni rks kasowany
      rs:=tp-rt;
      if rp<>0 Then begin
        rks:=Round(rs*rp,0)/100;
        rps:=rp;
      end Else rks:=rk;
      rk:=0;rp:=0;
      ARazemExecute(Sender);
    end;
  end;
end;

procedure TMainForm.AStorPozExecute(Sender: TObject);
begin
  if m.zwrot='S' Then begin
     DBCtrlGrid1Click(DBCtrlGrid1);
     Exit;
  end;
  if (m.lp=0) Then Begin
     AEscExecute(Sender);
     Exit;
  end;
  Razem;
  Showline(False);
  Edit1.Text:='CO STORNOWAÆ?';
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
  m.zwrot:='S';
end;

procedure TMainForm.AZwrotKaExecute(Sender: TObject);
var p: Currency;
begin
  razem();
  p:=StrToIntDef(Edit1.Text,0);
  if m.il=0 Then m.il:=p;
  Edit1.Text:='JAKA BUTELKA?';
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
  m.zwrot:='B';
end;

function scan(const str: String; Przesuw: Boolean):string;
const a: array [0..31] of string = ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
      p: Integer = 0;
      c: Integer = 0;
var i: Integer;
begin
  Result:=str;
  if str='' Then begin
     if p<>c Then begin
        Result:=a[c];
        if not przesuw Then Exit;
        c:=(c+1) mod Length(a);
     end;
  end else begin
     i:=(p+1) mod Length(a);
     if i<>c Then begin
        a[p]:=str;
        p:=i;
        Result:='';
     end;
  end;
end;

procedure TMainForm.ActionIdle(Action: TBasicAction;
  var Handled: Boolean);
  var s: String;
procedure ScanExec(str: String);
begin
   if (str='') Then Exit;
   if str[1]='K' Then begin
      Keylock:=Byte(str[2])-48;
      if Keylock<1 Then begin
         AStornoExecute(Action);
         Kasjer:='';
         Edit1.Text:='';
         Label4.Color:=clRed;
         Label4.Caption:='Kluczyk';
         DisplayList[6]:=Label4.Caption;
         Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
         'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
         'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
      end else if Kasjer='' Then begin
         Edit1.Text:=Copy(str,3,maxint);
         ATowarExecute(Action);
         if Kasjer='' Then Begin
            Label4.Color:=clYellow;
            Label4.Caption:='Kasjer';
            DisplayList[6]:=Label4.Caption;
            Edit1.Text:='Podaj kod kasjera.';
            DisplayList[6]:=Label4.Caption;
            Edit1.Font.Color:=Edit1.Color;
         end;
      end;
      Edit1.SelectAll;
      If Edit1.Visible Then Edit1.SetFocus;
   end else if (Keylock<1) Then begin
     Label4.Color:=clRed;
     Label4.Caption:='Kluczyk';
     DisplayList[6]:=Label4.Caption;
     Raise EInOutError.Create('Przekrêæ kluczyk !');
   end else if PageControl1.ActivePage=tsABC then with MdDBGrid2 do begin
     Klucz:='';
     Ceny.IndexFieldNames:=CenyINDEX.FieldName;
     if not Ceny.FindKey([str]) then Exit;
     SelectedField:=CenyCENA;
     SetFocus;
   end else with Edit1 do begin
     //DisplayList[6]:=Str;
     If Visible Then SetFocus;
     Text:=str;
     SelectAll;
     ATowarExecute(Action);
   end;
end;

begin
  s:=Scan('',True);
  if s <> '' Then begin
    ScanExec(s);
    Exit;
  end;
  Timer1Timer(Action);
end;

procedure TMainForm.koniec_z(k: integer);
var stp,gt,kp,wpl,kz,wypl,zwr,sp,kar,cze,kor,kor_z,ifv,ipf,ips,isp,zw,rabpa,rabpz,ipar,ipor,iwg: Currency;
    b: array of Currency;
    i: Integer;
    d1 : TDateTime;
    s: String;
    l: TStringList;
    f: TField;
begin
//{$ifndef NOPRINT}
  if dr=Farex Then begin
     Rozkaz(88);
     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
     Exit;
  end;
//{$endif}
  //Rozkaz('shiftrep',['zr1','sh'+IntToStr(StrToIntDef(kasa,0)*100+kasjr)]);
  with utarg do try
  {
    Last;
    Edit;
    UtargSTAN_KON.AsCurrency:=UtargSTAN_POCZ.AsCurrency + UtargGotowka.AsCurrency
    + UtargKaucja_pob.AsCurrency - UtargKaucja_Zwr.AsCurrency - UtargZwroty.AsCurrency
    + UtargWplaty.AsCurrency - UtargWyplaty.AsCurrency ;
    Post;
  }
    Filter:=iif(k=0,'','kasjer='+IntToStr(k));
    Filtered:=k<>0;
    FindFirst;
    stp:=Utarg.FieldByName('Stan_pocz').AsCurrency;
    d1:=Utarg.FieldByName('data').AsDateTime + Utarg.FieldByName('Godzina').AsDateTime;
    SetLength(b,Length(bony));

    repeat
      zw   :=zw    +Utarg.FieldByName('zwroty').AsCurrency;
      rabpa:=rabpa +Utarg.FieldByName('rabat_par').AsCurrency;
      rabpz:=rabpz +Utarg.FieldByName('rabat_poz').AsCurrency;
      gt   :=gt    +Utarg.FieldByName('gotowka').AsCurrency;
      kp   :=kp    +Utarg.FieldByName('kaucja_pob').AsCurrency;
      wpl  :=wpl   +Utarg.FieldByName('wplaty').AsCurrency;
      kz   :=kz    +Utarg.FieldByName('kaucja_zwr').AsCurrency;
      wypl :=wypl  +Utarg.FieldByName('wyplaty').AsCurrency;
      sp   :=sp    +Utarg.FieldByName('sprzedaz').AsCurrency;
      kar  :=kar   +Utarg.FieldByName('karty').AsCurrency;
      cze  :=cze   +Utarg.FieldByName('czeki').AsCurrency;

      for i:=0 to Length(b)-1 do begin
        f:=Utarg.FindField(bony[i]);
        if f<>nil
          then b[i] := b[i] + f.AsCurrency;
      end;
      kor  :=kor   +Utarg.FieldByName('korony').AsCurrency;
      kor_z:=kor_z +Utarg.FieldByName('korony_z').AsCurrency;
      ipf  :=ipf   +Utarg.FieldByName('il_par_fis').AsInteger;
{$ifdef ZAGRODA}
      ifv  :=ifv   +Utarg.FieldByName('il_fak_vat').AsInteger;
{$endif}
      ips  :=ips   +Utarg.FieldByName('il_par_sto').AsInteger;
      isp  :=isp   +Utarg.FieldByName('il_sto_poz').AsInteger;
      ipar :=ipar  +Utarg.FieldByName('il_par_rab').AsInteger;
      ipor :=ipor  +Utarg.FieldByName('il_poz_rab').AsInteger;
      iwg  :=iwg   +Utarg.FieldByName('il_wyp_got').AsInteger;
    until not FindNext;
    case dr of
{$ifdef NOPRINT}
      None: if FileExists(hostdir+'pytopar.'+kasa) Then
      try
        l:=TStringList.Create;
        l.Add('JUMP KZ');
        if k=0 then begin
          l.Add(IntToStr(StrToIntDef(kasa,0)*100));
          l.Add(' * wszyscy *');
        end else begin
          l.Add(IntToStr(StrToIntDef(kasa,0)*100+kasjr));
          l.Add(kasjer);
        end;
        l.Add(CurrToStrF(sp+kp+wpl,ffFixed,2));
        l.Add(CurrToStrF(gt,ffFixed,2));
        l.Add(CurrToStrF(kar,ffFixed,2));
        for i:=0 to Length(b)-1 do
          l.Add(CurrToStrF(b[i],ffFixed,2));
        l.Add(CurrToStrF(wpl,ffFixed,2));
        l.Add(CurrToStrF(kp,ffFixed,2));
        l.Add(CurrToStrF(zw+kz+wypl,ffFixed,2));
        l.Add(CurrToStrF(wypl,ffFixed,2));
//        l.Add(CurrToStrF(zw,ffFixed,2));
        l.Add(CurrToStrF(kz,ffFixed,2));
        l.Add(CurrToStrF(gt+wpl-zw-wypl,ffFixed,2));
        l.Add(CurrToStrF(kar,ffFixed,2));
        for i:=0 to Length(b)-1 do
          l.Add(CurrToStrF(b[i],ffFixed,2));
        l.Add(CurrToStrF(kp-kz,ffFixed,2));
        l.Add(CurrToStrF(gt+wpl-zw-wypl+kp-kz,ffFixed,2));
        l.Add(CurrToStrF(ipf,ffFixed,0));
        l.Add(CurrToStrF(ips,ffFixed,0));
        l.Add(CurrToStrF(ifv,ffFixed,0));
        l.Add(CurrToStrF(isp,ffFixed,0));
        l.Add(DateToStr(d1)+' '+TimeToStr(d1));
        d1:=Utarg.FieldByName('data').AsDateTime + Utarg.FieldByName('Godzina').AsDateTime + Utarg.FieldByName('Minut').AsFloat/24/60;
        l.Add(DateToStr(d1)+' '+TimeToStr(d1));
        l.SaveToFile(hostdir+'p'+kasa+'.run');
        deletefile(hostdir+'pytopar.'+kasa);
    finally
        l.free;
    end;
{$endif}
      Thermal: begin
        s:='1;1;2#f'+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+#13+iif(k=0,' * wszyscy *',Copy(kasjer,1,32))+StringOfChar(#13,9)+'zwrócony towar'+StringOfChar(#13,4)
           +bony[0]+#13+bony[1]+StringOfChar(#13,3)+FormatDateTime('yy/mm/dd  hh:nn',d1)+#13+FormatDateTime('yy/mm/dd  hh:nn',Utarg.FieldByName('data').AsDateTime + Utarg.FieldByName('Godzina').AsDateTime)+#13
           +str(sp)+'/'+str(gt)+'/'+str(kar)+'////////'+str(zw)+'////'+str(b[0])+'/'+str(b[1])+'///'
           +str(wpl)+'/'+str(kp)+'/'+str(wypl)+'/'+str(kz)+'/'+str(Utarg.FieldByName('stan_kon').AsCurrency)+'/'+str(ipf)+#13+str(ips)+#13+str(isp)+#13;
        RozkazTh(s);
      end;
      Posnet: begin
        Rozkaz('formstart',['fn26','fh0']);
        if k=0 then begin
          Rozkaz('formline' ,['fn26','fl0','s1'+IntToStr(StrToIntDef(kasa,0)*100)]);
          Rozkaz('formline' ,['fn26','fl1','s1 * wszyscy *']);
        end else begin
          Rozkaz('formline' ,['fn26','fl0','s1'+IntToStr(StrToIntDef(kasa,0)*100+kasjr)]);
          Rozkaz('formline' ,['fn26','fl1','s1'+kasjer]);
        end;
        Rozkaz('formline' ,['fn26','fl2','s1'+CurrToStrF(sp+kp+wpl,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl3','s1'+CurrToStrF(gt,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl4','s1'#10+CurrToStrF(kar,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl6','s11'#10+CurrToStrF(b[0],ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl6','s12'#10+CurrToStrF(b[1],ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl7','s1'+CurrToStrF(wpl,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl8','s1'+CurrToStrF(kp,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl9','s1'+CurrToStrF(zw+kz+wypl,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl10','s1'+CurrToStrF(wypl,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl11','s1'+CurrToStrF(zw,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl11','s1'+CurrToStrF(kz,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl12']);
        Rozkaz('formline' ,['fn26','fl13','s1'+CurrToStrF(gt+wpl-zw-wypl,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl14','s1'#10+CurrToStrF(kar,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl16','s11'#10+CurrToStrF(b[0],ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl16','s12'#10+CurrToStrF(b[1],ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl17','s1'+CurrToStrF(kp-kz,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl18']);
        Rozkaz('formline' ,['fn26','fl19','s1'+CurrToStrF(gt+wpl-zw-wypl+kp-kz,ffFixed,2)]);
        Rozkaz('formline' ,['fn26','fl20','s1'+CurrToStrF(ipf,ffFixed,0)]);
        Rozkaz('formline' ,['fn26','fl21','s1'+CurrToStrF(ips,ffFixed,0)]);
        Rozkaz('formline' ,['fn26','fl22','s1'+CurrToStrF(isp,ffFixed,0)]);
        Rozkaz('formline' ,['fn26','fl23','s1'+DateToStr(d1)]);
        Rozkaz('formline' ,['fn26','fl23','s1'+TimeToStr(d1)]);
        d1:=Utarg.FieldByName('data').AsDateTime + Utarg.FieldByName('Godzina').AsDateTime + Utarg.FieldByName('Minut').AsFloat/24/60;
        Rozkaz('formline' ,['fn26','fl24','s1'+DateToStr(d1)]);
        Rozkaz('formline' ,['fn26','fl24','s1'+TimeToStr(d1)]);
        Rozkaz('formend'  ,['fn26']);
      end
    end;
  finally
    Filtered:=False;
    Last;
  end;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.AKasjerExecute(Sender: TObject);
begin
  if (m.lp<>0) or (m.aka<>nil) Then Exit;
  if keylock<2 Then begin
     Label4.Color:=clRed;
     Label4.Caption:='Klucz 2';
     DisplayList[6]:=Label4.Caption;
     Raise EInOutError.Create('Przekrêæ kluczyk do 2 - '+kasjer+#10'do 3 - wszyscy');
  end;
  if keylock=2
     then koniec_z(kasjr)
     else koniec_z(0);
  Keylock:=0;
  Kasjer:='';
  //tsSpec.Caption:=IntToStr(StrToIntDef(Kasa,0)*100);
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  Edit1.Text:='Podaj kod kasjera.';
  Edit1.Font.Color:=Edit1.Color;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.AKartaExecute(Sender: TObject);
var a,t: Currency;
    i,l: Integer;
begin
  with m^ do begin
  t:=tp-rkt-rks+tk-tz-tkz;
  try
     a:=StrToCurr(Edit1.Text);
     a:=max(0,min(a,t-wg-wc-wb-wk));
  except
     a:=t-wg-wc-wb-wk;
  end;
  if a<=0 Then Exit;
  Edit1.Text:='Zap³ata Kart¹';
{$ifdef ELAVON}
  if (TerminalIP<>'') and (a>0) then repeat
    with CoStatus.Create do begin
      GetTerminalState;
      if DiagRequestOut <> 0 Then Begin
         DisplayList[6]:='B£¥D TERMINALA';
         Edit1.Text:=DisplayList[6];
         Edit1.SelectAll;
         Exit; //Raise EInOutError.Create('B£¥D POBRANIA STATUSU TERMINALA P£ATNICZEGO');
      end;
      DisplayList[6]:=TerminalStates[StateOut];
      Edit1.Text:=DisplayList[6];
      Edit1.SelectAll;
      if StateOut<>1 then begin
        Application.ProcessMessages;
        if (IDRETRY<>Application.MessageBox(TerminalStates[StateOut], 'DoprowadŸ terminal p³atniczy do porz¹dku:', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
           then Exit; //Raise EInOutError.Create('TERMINAL P£ATNICZY: '+DisplayList[6]);
        Continue;
      end;
    end;

    Application.ProcessMessages;
    MessageNumber := (MessageNumber+1) mod 100;
    with CoTransaction.Create do begin
      TransactionTypeIn   := '0';
      MessageNumberIn     := Format('%.2d',[MessageNumber]);
      Amount1LabelIn      := 'KWOTA';
      Amount1In           := Format('%.12d',[System.Round(a*100)]);

      DoTransaction;

      if DiagRequestOut <> 0 Then Begin
         DisplayList[6]:='B£¥D TERMINALA: '+inttostr(DiagRequestOut);
         Exit;
      end;
      if TransactionStatusOut='0' Then Break;
      i:=StrToInt(TransactionStatusOut);
      DisplayList[6]:='ODMOWA: '+TransactStates[i];
      Edit1.Text:=DisplayList[6];
      Edit1.SelectAll;

      if (IDRETRY<>Application.MessageBox(TransactStates[i], 'Problem z p³atnoœcia kart¹ p³atnicz¹:', MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
        Then Exit;
    end;
  until False;
     Edit1.Text:='Zap³acono Kart¹';
{$endif}
  wk:=wk+a;
  end;
  DisplayList[6]:=Edit1.Text;
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
  AGotowkaExecute(Sender);
end;

procedure TMainForm.ASzufladaExecute(Sender: TObject);
var l: TStringList;
begin
  case dr of
{$ifdef NOPRINT}
    None: if FileExists(hostdir+'pytopar.'+kasa) Then
    try
      l:=TStringList.Create;
      l.Text := 'JUMP SZUFLADA';
      l.SaveToFile(hostdir+'p'+kasa+'.run');
      deletefile(hostdir+'pytopar.'+kasa);
    finally
      l.free;
    end;
{$endif}
    Thermal: PrintOutTh('1$d');
    Posnet: PrintOut('opendrwr');
    Farex: Rozkaz(82);
  end;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.AWyplataExecute(Sender: TObject);
var a: Currency;
begin
  try
     a:=StrToCurr(Edit1.Text);
//{$ifndef NOPRINT}
     case dr of
        Thermal: PrintOutTh('1$d');
        Posnet: PrintOut('opendrwr');
        Farex: Rozkaz(36,Format('%10.10d',[System.Round(a*100)]));
     end;

     case dr of
       Thermal: RozkazTh('#d'+str(a)+'/');
       Posnet: Rozkaz('cash'#9'wp0'#9'kw'+CurrToStr(a*100));
     end;
//{$endif}
     Edit1.Text:='Wyp³acono gotówkê';
     DisplayList[6]:=Edit1.Text;
     Edit1.SelectAll;
     If Edit1.Visible Then Edit1.SetFocus;
     fixutarg;
     With Utarg do begin
        Edit;
        Utarg['STAN_KON']:=Utarg.FieldByName('STAN_KON').AsCurrency-a;
        Utarg['Wyplaty']:=Utarg.FieldByName('Wyplaty').AsCurrency+a;
        Utarg['IL_WYP_GOT']:=Utarg.FieldByName('IL_WYP_GOT').AsInteger+1;
        Post;
     end;
  except
     a:=0;
  end;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.AZwrotExecute(Sender: TObject);
begin
  if keylock<2 Then begin
     Label4.Color:=clRed;
     Label4.Caption:='Klucz 2';
     DisplayList[6]:=Label4.Caption;
     Raise EInOutError.Create('Przekrêæ kluczyk do 2!');
  end;
  Razem;
  m.Zwrot:='Z';
  Keylock:=1;
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  Edit1.Text:='Co zwracamy';
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.ComDataPacketScanerPacket(Sender: TObject;
  const Str: String);
begin
   if (Str<>'') Then
      scan(str,True);
   //DisplayList[6]:=str;
   //PostMessage(Edit1.Handle,WM_KEYDOWN,9,0);
end;

procedure TMainForm.AWplataExecute(Sender: TObject);
var a: Currency;
    l: TStringList;
    s: String;
    i: Integer;
begin
  try
     a:=StrToCurr(Edit1.Text);
     case dr of
{$ifdef NOPRINT}
        None: if FileExists(hostdir+'pytopar.'+kasa) Then
    try
        l:=TStringList.Create;
        l.Add('JUMP BO');
        l.Add(CurrToStrF(a,ffFixed,2));
        s:='$'+IntToHex(System.Round(a),6);
        l.Add(s);
        l.SaveToFile(hostdir+'p'+kasa+'.run');
        deletefile(hostdir+'pytopar.'+kasa);
    finally
        l.free;
    end;
{$endif}
       Thermal: PrintOutTh('1$d');
       Posnet: PrintOut('opendrwr');
       Farex: Rozkaz(35,Format('%10.10d',[System.Round(a*100)]));
     end;

     case dr of
       Thermal: RozkazTh('#i'+str(a)+'/');
       Posnet: Rozkaz('cash'#9'wp1'#9'kw'+CurrToStr(a*100));
     end;
     Edit1.Text:='Wp³acono gotówkê';
     DisplayList[6]:=Edit1.Text;
     Edit1.SelectAll;
     If Edit1.Visible Then Edit1.SetFocus;
     fixutarg;
     With Utarg do begin
        Edit;
        Utarg['STAN_KON']:=Utarg.FieldByName('STAN_KON').AsCurrency+a;
        Utarg['Wplaty']:=Utarg.FieldByName('Wplaty').AsCurrency+a;
        Post;
     end;
  except
     a:=0;
  end;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.AWagaExecute(Sender: TObject);
var s: String;
    w: Currency;
    v: Variant;
    c: Char;

begin
  if not ComPortWaga.Connected Then Exit;
  ComPortWaga.ClearBuffer(True,True);
  SetLength(s,12);
  if ComPortWaga.Tag>0 then begin
  // elzab proto 1
    ComPortWaga.WriteStr(#$1B#$4D#$3#$61#$A);
    ComPortWaga.ReadStr(s,10);
    s:=copy(s,3,7);
  end else begin
    ComPortWaga.WriteStr(#5);
    ComPortWaga.ReadStr(s,12);
    s:=copy(s,4,7);
  end;
  c:=DecimalSeparator;
  try
    DecimalSeparator:='.';
    W:=StrToCurr(s);
  finally
    DecimalSeparator:=c;
  end;
  if w=0 Then Exit;
  razem;
  m.il:=w;
  v:=ShowLine(True);
  (*
{$ifdef STANY}
  if VarIsArray(v) and ((v[1]=null) and (m.il>0) or (m.il>v[1])) then ShowMessage('Brak na magazynie');
  //Raise EUnderflow.Create('Brak na magazynie');
{$endif}
  //PageControl1.ActivePageIndex:=4;
  //PageControl1Change(PageControl1);
  *)
end;

procedure TMainForm.ARozkazExecute(Sender: TObject);
var i: Integer;
    s: String;
    iFileHandle: Integer;
    iFileLength: Integer;
    iBytesRead: Integer;
begin
    If FileExists(Edit1.Text)
    Then begin
      iFileHandle := FileOpen(Edit1.Text, fmOpenRead);
      iFileLength := FileSeek(iFileHandle,0,2);
      FileSeek(iFileHandle,0,0);
      SetLength(s,iFileLength + 1);
      FileRead(iFileHandle, s[1], iFileLength);
      FileClose(iFileHandle);
    end Else s:=Edit1.Text;
    case dr of
      None:;
      Farex: DisplayList[6]:=Rozkaz(0,s);
      Posnet,Thermal: DisplayList[6]:=Rozkaz(s);
    end;
    If Edit1.Visible Then Edit1.SetFocus;
end;

procedure TMainForm.AKoniecExecute(Sender: TObject);
begin
   Close;
end;

procedure TMainForm.StringGrid0Click(Sender: TObject);
var buf,s: String;
    j,k: Integer;
    i,c,p,r,ip: Currency;
    v: Variant;
    d: Char;
begin
     if Kasjer='' Then Exit;
     With TStringGrid(Sender) do begin
        if tag>-1 then buf:=Cells[ Tag mod 3, Tag div 3] //ColCount zamiast 3
        else buf:=Cells[Col,Row];
        Tag:=-1;
     end;

     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
     Edit1.SetFocus;

     if (m.il<>0) and (m.tow='') Then begin
       ip:=m.il;
       m.il:=0;
     end else try
        ip:=StrToCurr(Edit1.Text);
     except
        ip:=1;
     end;

     repeat

     i:=ip;
     c:=0;
     k:=pos(';',buf);
     if k=0
       Then k:=Length(buf)+1;

     j:=pos('k',buf);
     if (j>0) and (j<k) Then begin
        buf:=copy(buf,1,j-1)+copy(buf,k,maxint);
        dec(k,k-j);
     end;

     j:=pos('i',buf);
     p:=0;
     if (j>0) and (j<k) Then begin
        //Razem;
        s:=copy(buf,1,j-1);
        d:=DecimalSeparator;
        try
        if pos('.',s)<>0 Then DecimalSeparator:='.';
        p:=StrToCurr(s);
        finally
        DecimalSeparator:=d;
        end;
        i:=i*p;
        buf:=copy(buf,j+1,maxint);
        dec(k,j);
     end;
     j:=pos('c',buf);
     if (j>0) and (j<k) Then begin
        //Razem;
        s:=copy(buf,1,j-1);
        d:=DecimalSeparator;
        try
        if pos('.',s)<>0 Then DecimalSeparator:='.';
        c:=StrToCurr(s);
        finally
        DecimalSeparator:=d;
        end;
        buf:=copy(buf,j+1,maxint);
        dec(k,j);
     end;

     s:=copy(buf,1,k-1);
     buf:=copy(buf,k+1,maxint);

     if (length(s)<=6) Then
       s:=Format('%6.6d',[StrToIntDef(s,0)]);

     if ((m.tow<>'') and (s<>m.tow)) or ((c<>0) and (m.ce<>c))
      or (m.rk<>0){$ifdef HURT} and (m.rp=0)
      (* or (m.rp<>Cennik.Lookup('INDEX',s,'RABAT')) *){$endif}
       Then Razem;

     if p<>0 Then m.ilp:=p;
     m.il:=m.il+i;

     if c<>0 Then m.ce:=c;

     //If Edit1.Visible Then Edit1.SetFocus;

     if (s<>m.tow)
       Then Towar(s)
       Else begin
        v:=Showline(True);
{$ifdef STANY}
        if VarIsArray(v) and ((v[2]=null) and (m.il>0) or (m.il>v[2])) then  begin
           Label4.Color := clYellow;
           DisplayList[3]:= 'Brak na magazynie';
        end;
        // ShowMessage('Brak na magazynie');
        //Raise EUnderflow.Create('Brak na magazynie');
{$endif}
       end;

     until buf='';

end;

procedure rmove(var r:TRect);
const d: Byte = 0;
begin
  case d of
    0: r.Left:= r.Left+2;
    1: r.Top := r.Top+2;
    2: r.Left:= r.Left-2;
    3: begin
         r.Top := r.Top-1;
         r.Left:= r.left+1;
       end;
  end;
  d:=(d+1) mod 4;
end;

procedure TMainForm.StringGrid0DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var buf,s,n,na,jm: String;
      j,k,l: Integer;
      v: Variant;
      r: TRect;
      c,ce,i,il: Currency;
      d: Char;
begin
  with TStringGrid(Sender) do begin

      r.Top:=Rect.Top+2;
      r.Bottom:=Rect.Bottom-2;
      r.Left:=Rect.Left+2;
      r.Right:=Rect.Right-2;

    if [gdSelected,gdFocused] = State
      Then Canvas.Rectangle(R)
      Else Canvas.FillRect(R);

      r.Top:=Rect.Top+4;
      r.Bottom:=Rect.Bottom-4;
      r.Left:=Rect.Left+4;
      r.Right:=Rect.Right-4;

    if objects[acol,arow]<>nil Then begin
      if objects[acol,arow] is TGraphic
       Then Canvas.StretchDraw(r,TGraphic(objects[acol,arow]))
       Else Canvas.StretchDraw(r,TPicture(objects[acol,arow]).Graphic);
    end;


    buf:=Cells[aCol,aRow];
    if buf='' Then Exit;
       Canvas.Brush.Style := bsClear;
{$ifndef BAR}
       Canvas.Font.Height:=-8;
{
       Canvas.Font.Color:=clWhite;
       r.Top:=Rect.Top+2;
       r.Bottom:=Rect.Bottom-2;
       r.Left:=Rect.Left+2;
       r.Right:=Rect.Right-2;
       Canvas.TextOut(r.Left,r.Top,buf);
       rmove(r);
       Canvas.TextOut(r.Left,r.Top,buf);
       rmove(r);
       Canvas.TextOut(r.Left,r.Top,buf);
       rmove(r);
       Canvas.TextOut(r.Left,r.Top,buf);
       rmove(r);
}
       Canvas.Font.Color:=clBlack;
       Canvas.TextOut(r.Left,R.Top,buf);
{$endif}
       Canvas.Font.Color:=clWhite;
       if Cennik.Active Then try
         ce:=0;
         il:=0;
         na:='';
         jm:='';
         repeat
         k:=pos(';',buf);
         if (k=0)
            Then k:=Length(buf)+1;

         l:=pos('k',buf);
         if (l=0) or (l>k)
            Then l:=k;

         j:=pos('i',buf);
         if (j>0) and (j<l) Then begin
           s:=copy(buf,1,j-1);
        d:=DecimalSeparator;
        try
           if pos('.',s)<>0 Then DecimalSeparator:='.';
           i:=strtocurr(s);
        finally
        DecimalSeparator:=d;
        end;
           buf:=copy(buf,j+1,maxint);
           dec(k,j);
           dec(l,j);
         end else i:=1;

         il:=il+i;

         j:=pos('c',buf);
         if (j>0) and (j<k) Then begin
           s:=copy(buf,1,j-1);
        d:=DecimalSeparator;
        try
           if pos('.',s)<>0 Then DecimalSeparator:='.';
           c:=strtocurr(s);
        finally
        DecimalSeparator:=d;
        end;
           buf:=copy(buf,j+1,maxint);
           dec(k,j);
           dec(l,j);
         end else c:=0;

         if (l>0) and (l<k) Then begin
           s:=copy(buf,1,l-1);
           buf:=copy(buf,l+1,maxint);
           dec(k,l);
         end else begin
           s:=copy(buf,1,k-1);
           buf:=copy(buf,k+1,maxint);
           k:=0;
         end;

         n:=copy(buf,1,k); //ze œrednikiem
         buf:=copy(buf,k+1,maxint);

         if Length(s)<6
           Then s:=Format('%6.6d',[StrToIntDef(s,0)]);

         v:=Cennik.Lookup('INDEX',copy(s,1,12),{$ifdef STANY}'NAZWA;CENA;JM;STAN'{$else}'NAZWA;CENA;JM;CENA_H;RABAT;WAZNOSC;PROMOCJA'{$endif});
         if VarIsArray(v) Then begin
           if (n='')
              Then n:=v[0];// +#13+#10;
           na:=na+n;
{$ifdef STANY}
           if v[3]<=0
             then Canvas.Font.Color:=clRed;
{$endif}
           if c=0 Then
            c:=v[1];
{$ifdef HURT}
            if HurtBtn.Down
              Then c:=v[3]
              Else if (v[4]<>Null) and (v[5]<>Null) and (v[4]<>0) and (i>=v[5]) then begin
                 Canvas.Font.Color:=clLime;
                 c:=Round(c*(100-v[4])/100,2);
              end;
{$endif}
              jm:=v[2];
         end;

           ce:=ce+i*c;

         until buf='';

           s:=CurrToStrF(ce,ffFixed,2);
           if (il=1) and (copy(jm,1,3)<>'szt')
              Then s:=s+'/'+jm;
           Canvas.Font.Height:=-20;
           r.Top:=Rect.Top+12;
           r.Bottom:=Rect.Bottom-2;
           r.Left:=Rect.Left+2;
           r.Right:=Rect.Right-2;
           DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_CENTER );
           rmove(r);
           DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_CENTER );
           rmove(r);
           DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_CENTER );
           rmove(r);
           DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_CENTER );
           rmove(r);
           Canvas.Font.Color:=clBlack;
           k:=DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_CENTER );
           l:=Canvas.TextWidth(na);
           r:=Rect;
           j:=DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_CALCRECT + DT_WORDBREAK);
           r:=Rect;
           if (j>k) or (l>r.Right-r.Left) Then Begin
             Canvas.Font.Height :=-10;
             Canvas.Brush.Style := bsSolid;
             j:=DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_CALCRECT + DT_WORDBREAK);
             r:=Rect;
             r.Top:=Rect.Bottom-j;
           end else begin
             r:=Rect;
             r.Top:=Rect.Bottom-j-2;
             Canvas.Font.Color:=clWhite;
             DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_WORDBREAK);
             rmove(r);
             DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_WORDBREAK);
             rmove(r);
             DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_WORDBREAK);
             rmove(r);
             DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_WORDBREAK);
             rmove(r);
           end;
           r.Bottom:=Rect.Bottom;
           r.Right:=Rect.Right;
           Canvas.Font.Color:=clBlack;
           DrawText(Canvas.Handle, PChar(na), Length(na), R, DT_WORDBREAK);
       except
         Cennik.Close;
       end;
       Canvas.Brush.Style := bsSolid;
    end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const ak: array [0..25] of word =
(48,49,50,51,52,53,54,55,56,84,122,123,191,186,187,219,220,221,222,192,190,245,106,189,120,121); //literki z beetla
k: Word = 0;
s: TShiftState = [];
f: Boolean = False;
var i: Integer;
begin

{$ifdef KLAWBEETLE}
   for i:=0 To 25 do
   if Key=ak[i] Then begin
     if f Then begin
        if (Keylock=0) and (i>0) Then begin
           Label4.Color:=clYellow;
           Label4.Caption:='Kasjer';
           DisplayList[6]:=Label4.Caption;
           Edit1.Text:='Kasjer';
           Edit1.Font.Color:=Edit1.Color;
           Edit1.SelectAll;
        end;
        keylock:=i;
        Key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        //TComponent(Sender).Tag:=-2;
        if Keylock<1 Then begin
           AStornoExecute(Sender);
           Kasjer:='';
           Edit1.Text:='Kluczyk';
           Label4.Color:=clRed;
           Label4.Caption:='Kluczyk';
           DisplayList[6]:='Kluczyk';
           Edit1.SelectAll;
        end;
        Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
     end else if PageControl1.ActivePage=tsABC
     Then begin
        MdDbGrid2.Klucz:=MdDbGrid2.Klucz+Char(97+i);
        Key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        Exit;
     end else with StringGrid0 do begin
       //col:=i mod ColCount;
       //row:=i div ColCount;
       Tag:=i;
       Key:=0;
       k:=0;
       s:=[];
       KeyFlag:=True;
       //TComponent(Sender).Tag:=-2;
       StringGrid0Click(StringGrid0);
     end;
     If Edit1.Visible Then Edit1.SetFocus;
     Exit;
   end;

   f:=(s=[ssCtrl]) and (k=17) and (Key=75) and (shift=[]);
   if f Then begin
      Key:=0;
      k:=0;
      s:=[];
      KeyFlag:=True;
      //TComponent(Sender).Tag:=-2;
      Exit;
   end;
{$endif}
   if Shift = [] Then
   case Key of
     VK_UP: if Edit1.Focused Then begin
        DBCtrlGrid1.SetFocus;
        key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        Exit;
       end;
{$ifdef KLAWBEETLE}
     Word('X'):
      begin
        key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        if PageControl1.ActivePage<>tsABC
          Then PageControl1.ActivePage:=tsABC
          Else PageControl1.ActivePage:=ts0;
        PageControl1Change(PageControl1);
        Exit;
       end;
{$else}
{$ifdef ZAGRODA}
     VK_F1..VK_F12:
{$else}
     VK_F1..VK_F8:
{$endif}
      begin
        i:=key-VK_F1+1;
        key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        if PageControl1.ActivePageIndex<>i
          Then PageControl1.ActivePageIndex:=i
          //Else PageControl1.ActivePage:=ts0
          ;
        PageControl1Change(PageControl1);
        Exit;
       end;
{$endif}
   else For i:=0 To ActionList1.ActionCount-1 do
     With ActionList1.Actions[i] do if Tag<>0 then begin
      ShortcutToKey(Tag,k,s);
      if (k=Key) and (Shift=s)
      Then begin
        Key:=0;
        k:=0;
        s:=[];
        KeyFlag:=True;
        //TComponent(Sender).Tag:=-2;
        Execute;
        Exit;
      end;
    end;
   end;
   s:=Shift;
   k:=Key;
   KeyFlag:=False;
   //TComponent(Sender).Tag:=-1;
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //if TComponent(Sender).Tag=-2 Then Key:=#0;
  if KeyFlag Then Key:=#0;
  //TComponent(Sender).Tag:=-1;
  KeyFlag:=False;
end;

procedure TMainForm.ARFDExecute(Sender: TObject);
var r: Char;
    s: String;
    t: TDateTime;
    l: TStringList;
begin
  if (m.lp<>0) or (m.aka<>nil) or (m.tz<>0) Then Exit;
  if keylock<3 Then begin
     Label4.Color:=clRed;
     Label4.Caption:='Klucz 3';
     DisplayList[6]:=Label4.Caption;
     Raise EInOutError.Create('Przekrêæ kluczyk do 3!');
  end;
  koniec_z(0);
  case dr of
{$ifdef NOPRINT}
    None: begin
    if keylock>3 Then begin
      ShowMessage('OK, jeszcze raport kasjera '+kasjer);
      koniec_z(kasjr);
    end;
    ShowMessage('OK, jeszcze raport fiskalny...');
    if FileExists(hostdir+'pytopar.'+kasa) then
    try
      l:=TStringList.Create;
      l.Add('JUMP RFD');
      l.add(inttostr(System.Round(Time*24*60*60)));
      l.SaveToFile(hostdir+'p'+kasa+'.run');
      deletefile(hostdir+'pytopar.'+kasa);
    finally
      l.free;
    end;
    end;
{$endif}
    Thermal: begin
     RozkazTh(FormatDateTime('1;yy;mm;dd#r',date));
     s:=RozkazTh('#c',False);
     r:=TimeSeparator;
     try
       TimeSeparator:=';';
       s:=Copy(s,WordPosition(4,S,[TimeSeparator]),maxint);
       t:=StrToTime(s);
     finally
       TimeSeparator:=r;
     end;
     If Abs(Time - t)>0.001 Then
       rozkazTh(FormatDateTime('yy;mm;dd;hh;nn;ss',now)+'$c');
    end;
    Posnet: Begin
     rozkaz('dailyrep'#9'da'+DateToStr(date));
     s:=Rozkaz('rtcget');
     If Abs(Time - StrToTime(Copy(s,Pos(';',s)+1,5)))>0.001 Then
       rozkaz('rtcset'#9'da'+FormatDateTime('yyyy-mm-dd;hh:nn',now));
     //Rozkaz('logout');
    end;
    Farex: Rozkaz(20);
  end;
  utargi.open;
  utarg.AdsCopyTableContents(utargi);
  utargi.close;
  utarg.EmptyTable;
  Keylock:=0;
  Kasjer:='';
  //tsSpec.Caption:=IntToStr(StrToIntDef(Kasa,0)*100);
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
  'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  Edit1.Text:='Kluczyk';
  Label4.Color:=clRed;
  Label4.Caption:='Kluczyk';
  DisplayList[6]:='Kluczyk';
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.ARFOExecute(Sender: TObject);
var s: String;
    Y, Mo, D: Word;
    l: TStringList;
begin

  if (m.lp<>0) or (m.aka<>nil) or (m.tz<>0) Then Exit;
  if keylock<2 Then begin
     Label4.Color:=clRed;
     Label4.Caption:='Klucz 2';
     DisplayList[6]:=Label4.Caption;
     Raise EInOutError.Create('Przekrêæ kluczyk do 2!');
  end;

  Application.CreateForm(TRFODialog,RFODialog);
  With RFODialog do try
    DecodeDate(date,y,mo,d);
    td.Date:=Date - d;
    DecodeDate(td.date,y,mo,d);
    fd.Date:=td.Date - d +1;
    if ShowModal=mrOK Then
    case dr of
{$ifdef NOPRINT}
      None: try
      l:=TStringList.Create;
      l.Add('JUMP RFO');
      l.add(FormatDateTime('yymmdd;',fd.Date)+FormatDateTime('yymmdd;',td.Date));
      l.SaveToFile(hostdir+'p'+kasa+'.run');
      deletefile(hostdir+'pytopar.'+kasa);
    finally
      l.free;
    end;
{$endif}
      Thermal: rozkazTh(FormatDateTime('yy;mm;dd;',fd.Date)+FormatDateTime('yy;mm;dd#o',td.Date));
      Posnet:  rozkaz('periodicrepbydates'#9'fd'+DateToStr(fd.Date)+#9'td'+DateToStr(td.Date));
      Farex: Rozkaz(22,FormatDateTime('ddmmyy',fd.Date)+FormatDateTime('ddmmyy1',td.Date));
    end;
  finally
    RFODialog.Release;
  end;
  Keylock:=1;
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
  'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.ABon2Execute(Sender: TObject);
var a,t: Currency;
begin
  with m^ do try
     t:=tp-rkt-rks+tk-tz-tkz;
     a:=StrToCurr(Edit1.Text);
  except
     a:=t-wg-wc-wb-wk;
  end;
  m.wb:=-a;
  m.nb:=bony[TAction(Sender).HelpContext];

  Edit1.Text:=iif(TAction(Sender).HelpContext = 1,TAction(Sender).Caption,iif(m.wb>0,'Przyjêto ','Wydano ')+m.nb);
  DisplayList[6]:=Edit1.Text;
  Edit1.SelectAll;
  AGotowkaExecute(Sender);
end;

procedure TMainForm.ABon1Execute(Sender: TObject);
var a,t: Currency;
begin
  with m^ do try
     t:=tp-rkt-rks+tk-tz-tkz;
     a:=StrToCurr(Edit1.Text);
  except
     a:=t-wg-wc-wb-wk;
  end;
  m.wb:=m.wb+a;
  m.nb:=bony[TAction(Sender).HelpContext];

  Edit1.Text:=iif(TAction(Sender).HelpContext = 1,'Zap³ata przelewem',iif(m.wb>0,'Przyjêto ','Wydano ')+m.nb);
  DisplayList[6]:=Edit1.Text;
  Edit1.SelectAll;
  AGotowkaExecute(Sender);
{$ifdef PUNKTY}
  if TAction(Sender).HelpContext = 1 then
    if (m.lp=0) and (m.tk-m.tz-m.tkz=0) Then begin
      Update;
      AFakExecute(Sender);
    end else begin
      //nie uda³o siê zakonczyæ paragonu
      FakPrzelBtn.down:=False;
      PageControl1.ActivePageIndex:=0;
      PageControl1Change(PageControl1);
    end;
{$endif}
end;

procedure TMainForm.AOpakowanieExecute(Sender: TObject);
var p: Currency;
begin
  razem();
  p:=StrToIntDef(Edit1.Text,0);
  m.il:=p;
  Edit1.Text:='JAKA BUTELKA?';
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
  m.zwrot:='O';
end;

procedure TMainForm.AKodExecute(Sender: TObject);
begin
  case dr of
    Thermal: begin
      rozkazTh('0;3$w');
      rozkazTh('3;254;0$w'+Edit1.Text+#13);
      rozkazTh('1;3$w');
    end;
    Posnet: begin
      rozkaz('formstart'#9'fn3');
      rozkaz('formbarcode'#9'fn3'#9'bc'+Edit1.Text);
      rozkaz('formend'#9'fn3');
    end;
  end;
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
end;

procedure TMainForm.DBCtrlGrid1Click(Sender: TObject);
begin
  with m^,Paragony do try
    if Kasjer='' Then Exit;
    if zwrot<>'S' Then Exit;
    il:=FieldByName('ILOSC').AsCurrency;
    ce:=FieldByName('CENA').AsCurrency;
    rk:=FieldByName('RABAT_KWOT').AsCurrency;
    rp:=FieldByName('RABAT_PROC').AsCurrency;
{$ifdef PUNKTY}
    rabpktpoz:=0;
{$endif}
    Towar(FieldByName('INDEX').AsString);
  finally
    PageControl1.ActivePageIndex:=0;
    PageControl1Change(PageControl1);
  end;
end;

procedure TMainForm.APaneleExecute(Sender: TObject);
var l: TStringList;
  procedure grsave(grid: TStringGrid; plik: TFileName);
  var i,j,k: integer;
      s: String;
      p: TObject;
  begin
    l.Clear;
    With grid do begin
       RowCount:=12;
       ColCount:=12;
//{$ifdef ZAGRODA}
      l.Append(TTabSheet(Parent).Caption);
//{$endif}
      For i:=0 To ColCount*RowCount-1 do begin
        j:=i mod ColCount;
        k:=i div ColCount;
        s:=Cells[j,k];
        if s='' Then Continue;
        {if plik='klawisze.ini'
          Then l.Append(chr(i+ord('A'))+'='+s)
          Else} l.Append(chr(j+ord('A'))+IntToStr(k+1)+'='+s);
//          Else l.Append(IntToStr(k+1)+IntToStr(j+1)+'='+s);
        p:=Objects[j,k];
        if p=nil Then Continue;
        j:=pos(';',s);
        if j<>0 Then
          s:=copy(s,1,j-1);
        j:=pos('k',s);
        if j<>0 Then
          s:=copy(s,1,j-1);
        j:=pos('i',s);
        if j<>0 Then
          s:=copy(s,j+1,maxint);
        j:=pos('c',s);
        if j<>0 Then
          s:=copy(s,j+1,maxint);
        if Length(s)<6
          Then s:=Format('%6.6d',[StrToIntDef(s,0)]);
        ForceDirectories(HostDir+'..\etykiety\kreski\'+copy(s,1,4));
        s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint);//+'.bmp';
        if (p<>nil) and not FileExists(s+'.jpg') Then try
          if p is TJpegImage Then begin
            s:=s+'.jpg';
            TJpegImage(p).SaveToFile(s);
          end Else begin
            s:=s+'.bmp';
            TPicture(p).SaveToFile(s);
          end;
        Except
          s:='';
        end;
      end;
    end;
    //DeleteFile(plik);
    l.SaveToFile(plik);
    //DeleteFile(HostDir+plik);
    l.SaveToFile(HostDir+plik);
  end;
begin
  l:=TStringList.Create;
  l.Capacity:=64;
  try
    grsave(StringGrid0,'klawisze.ini');
    grsave(StringGrid1,'kl1.ini');
    grsave(StringGrid2,'kl2.ini');
    grsave(StringGrid3,'kl3.ini');
    grsave(StringGrid4,'kl4.ini');
    grsave(StringGrid5,'kl5.ini');
    grsave(StringGrid6,'kl6.ini');
{$ifdef ZAGRODA}
    grsave(StringGrid7,'kl7.ini');
    grsave(StringGrid8,'kl8.ini');
    grsave(StringGrid9,'kl9.ini');
    grsave(StringGrid10,'kl10.ini');
{$endif}
  finally
    freeandnil(l);
  end;
end;

procedure TMainForm.Panel1Resize(Sender: TObject);
begin
  With DBCtrlGrid1 do
    RowCount:=ClientHeight div 36;
end;

procedure TMainForm.ALogoutExecute(Sender: TObject);
begin
  AStornoExecute(Sender);
  Keylock:=0;
  Kasjer:='';
  //tsSpec.Caption:=IntToStr(StrToIntDef(Kasa,0)*100);
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
  'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  Edit1.Text:='Kluczyk';
  Label4.Color:=clRed;
  Label4.Caption:='Kluczyk';
  DisplayList[6]:='Kluczyk';
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
  const tm: TDateTime = 0.0;
        fc: Byte = 20;
        inside: Boolean = False;
  var p,q,r,s,t: String;
  l: TStringList;
  d: TDate;
  f: TSearchRec;
{$ifndef MULTIPAR}
  ParJob: TTbl;
  i: Integer;
{$endif}
begin
  if inside or Application.Terminated or ( sender<>nil ) and ( Time<tm ) or
{$ifdef MULTIPAR}
   (not ParJob.Active or not ParJob.isempty and (ParJobIndex.AsString<>'KONIEC'))
{$else}
   (not Paragony.Active or not Paragony.isempty and (ParagonyIndex.AsString<>'KONIEC'))
{$endif}
   Then Exit;

  inside:=True;
  tm:=Time+1/8192;

  Paragony.AdsFlushFileBuffers;
  Utarg.AdsFlushFileBuffers;
  q:=hostdir+'aktc.'+kasa;
  try
{$ifdef MULTIPAR}
  if (dr=Farex) Then begin
    dec(fc);
    if fc=0 Then begin
      fc:=20;
      PrintOutFr('47');
      ComPort1.ClearBuffer(True,False);
    end;
  end;
{$endif}

  IF FileExists(q) Then try
     DisplayList[6]:='WYMIANA DANYCH: C';
     AdsConnection1.Disconnect;

     if FindFirst(hostdir+'*.frf',0,f)=0 Then
     repeat
        s:=f.name;
        r:=hostdir+s;
        CopyFile(PChar(r),PChar(s),False);
     until FindNext(f)<>0;
     FindClose(f);

     if FindFirst(hostdir+'k*.ini',0,f)=0 Then
     repeat
        s:=f.name;
        r:=hostdir+s;
        CopyFile(PChar(r),PChar(s),False);
     until FindNext(f)<>0;
     FindClose(f);

     if FindFirst(hostdir+'k*.txt',0,f)=0 Then
     repeat
        s:=f.name;
        r:=hostdir+s;
        CopyFile(PChar(r),PChar(s),False);
     until FindNext(f)<>0;
     FindClose(f);

     s:='index.ntx';
     r:='o_'+s;
     DeleteFile(r);
     RenameFile(s,r);
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

     s:='cennik.dbf';
     r:='o_'+s;
     DeleteFile(r);
     RenameFile(s,r);
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

{$ifdef OLDCEN}
     s:='zmiany.dbf';
     r:='o_'+s;
     DeleteFile(r);
     RenameFile(s,r);
     r:=hostdir+'zmiany'+kasa+'.dbf';
     CopyFile(PChar(r),PChar(s),False);
     DeleteFile(r);
     r:='oldcen.dbf';
     Cennik.Open;
     if FileExists(r) then try
        OldCen.Open;
        Job.DatabaseName:='';
        Job.TableName:='zmiany.dbf';
        Job.Open;
        OldCen.AdsCopyTableContents(Job);
     except
        Job.Close;
        OldCen.Close;
     end;
     Job.Close;
     OldCen.Close;
     CopyFile(PChar(s),PChar(r),False);

     s:='firm_naz.ntx';
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

     s:='firm_num.ntx';
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

     s:='firm_nip.ntx';
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

     s:='firmy.dbf';
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

     s:='firmy.dbt';
     r:=hostdir+s;
     CopyFile(PChar(r),PChar(s),False);

{$endif}

     if DeleteFile(q) Then
       DisplayList[6]:=DisplayList[6]+'-OK';

  finally
     ReadPictures;
     FormResize(Self);
     OpenTables;
     Color:=clBtnFace;
  end;
  q:=hostdir+'pytout.'+kasa;
  IF FileExists(q) Then try
     DisplayList[6]:='WYMIANA DANYCH: U';
     fixutarg;
     //Color:=clGreen;
     //Update;
     Utargi.Open;
     Job.DatabaseName:=hostdir;
     Job.TableName:='u'+kasa+'.dbf';
     if FileExists(hostdir+Job.TableName) Then begin
        Job.Open;
        Utargi.AdsCopyTableContents(Job);
     end Else Utargi.AdsCopyTable(hostdir+Job.TableName);
     Job.Close;
     Job.DataBaseName:='Archiwum';
     Job.TableName:='utargi.dbf';
     Job.Open;
     Utargi.AdsCopyTableContents(Job);
     Job.Close;
     Utargi.EmptyTable;
     if DeleteFile(q) Then
       DisplayList[6]:=DisplayList[6]+'-OK';
     //Color:=clBtnFace;
  finally
     OpenTables;
  end;

{$ifndef MULTIPAR}
//--------------------------------------------
  q:=hostdir+'archpar.'+kasa;
  s:=ExtractFileExt(Paragony.TableName);
  r:=hostdir+'a'+kasa+s;
  if FileExists(q) and not FileExists(r) Then try
     DisplayList[6]:='WYMIANA DANYCH: A';
     l:=TStringList.Create;
     l.LoadFromFile(q);
     s:=l.Values['dzien:'];
     l.Free;
     s:=copy(s,2,Length(s)-2);
     r:=ShortDateFormat;
     ShortDateFormat:='dd-MM-yyyy';
     d:=StrToDate(StringReplace(s,'.','-',[rfReplaceAll]));
     ShortDateFormat:='yyyyMMdd';
     s:=DateToStr(d);
     ShortDateFormat:=r;

     Job.DatabaseName:=hostdir;
     Job.TableName:='a'+kasa+'.dbf';
     AdsSettings1.ShowDeleted:=True;

     ParJob:=TTbl.Create(nil);
     ParJob.DataBaseName:='Archiwum';
     ParJob.TableName:=Paragony.TableName;
     ParJob.TableType:=Paragony.TableType;
     ParJob.AdsTableOptions.AdsCharType:=Paragony.AdsTableOptions.AdsCharType;
     ParJob.ReadOnly:=True;
     ParJob.Open;
     ParJob.Last;
     with ParJob do while true do begin
        r:=FieldValues['INDEX'];
        p:=copy(r,1,1);
        if p>='P' then begin
           r:=copy(r,5,8);
           if not bof and (r>=s) then begin
              if r=s
                then t:=Bookmark;
              Prior;
              Continue;
           end else if (bof or (r<s)) and (t<>'') then begin
             if not FileExists(hostdir+Job.TableName) Then
                ParJob.AdsCopyTableStructure(hostdir+Job.TableName);
             Job.Open;

             Bookmark:=t;

             repeat
               Job.Append;
               for i:=0 to FieldCount-1 do
                 Job.Fields[i].Assign(ParJob.Fields[i]);
               Job.Post;
               Next;
               r:=FieldValues['INDEX'];
               p:=copy(r,1,1);
               r:=copy(r,5,8);
             until eof or (p>='P') and (r>s);

           end;
           break;

        end else if bof Then break;

        Prior;
     end;

     if DeleteFile(q) then
       DisplayList[6]:=DisplayList[6]+'-OK';

  finally
     AdsSettings1.ShowDeleted:=True;
     ParJob.Close;
     ParJob.Free;
     Job.Close;
  end;

//---------------------------------------------
{$endif}

  q:=hostdir+'pytopar.'+kasa;
  s:=ExtractFileExt(Paragony.TableName);
  if
{$ifndef BAR}
{$ifdef MULTIPAR}
  not ParJob.IsEmpty and
{$else}
  not Paragony.IsEmpty and (ParagonyIndex.AsString='KONIEC') and
{$endif}
{$endif}
  FileExists(q) Then try
     DisplayList[6]:='WYMIANA DANYCH: P';
     //Color:=clGreen;
     //Update;
     Paragony.DisableControls;
{$ifdef MULTIPAR}
//     Paragony.AdsCopyTableContents(ParJob);
//     Paragony.EmptyTable;
{$else}
     ParJob:=Paragony;
{$endif}
     Job.DatabaseName:=hostdir;
     Job.TableName:='p'+kasa+'.dbf';
     AdsSettings1.ShowDeleted:=True;
     if FileExists(hostdir+Job.TableName) Then Begin
        Job.Open;
        ParJob.AdsCopyTableContents(Job);
     end Else ParJob.AdsCopyTable(hostdir+Job.TableName);
     AdsSettings1.ShowDeleted:=False;
     Job.Close;
     Job.DataBaseName:='Archiwum';
     Job.TableName:='paragony.dbf';
     Job.Open;
     ParJob.AdsCopyTableContents(Job);
     Job.Close;
     ParJob.EmptyTable;
     if DeleteFile(q) then
       DisplayList[6]:=DisplayList[6]+'-OK';
     //Color:=clBtnFace;
  finally
     AdsSettings1.ShowDeleted:=False;
     OpenTables;
     Paragony.EnableControls;
  end;
  except // nie czyta pytan z hosta
     FindClose(f);
     inside:=False;
  end;
  inside:=False;
end;

procedure TMainForm.SpeedButton15Click(Sender: TObject);
begin
  SendMessage(ActiveControl.Handle,WM_UNDO,0,0);
end;

procedure TMainForm.Kopiuj1Click(Sender: TObject);
begin
  if PopupMenu1.PopupComponent is TStringGrid
  Then with TStringGrid(PopupMenu1.PopupComponent) do
    Clipboard.AsText:=Cells[Col,Row]
  else if PopupMenu1.PopupComponent is TCustomDBGrid
  Then Clipboard.AsText:=CenyINDEX.AsString;
end;

procedure TMainForm.PopupMenu1Popup(Sender: TObject);
var s: String;
begin
  if PopupMenu1.PopupComponent is TStringGrid Then
  with TStringGrid(PopupMenu1.PopupComponent) do begin
    Wklej1.Visible:=True;
    KopiujObraz1.Visible:=Objects[col,row]<>nil;
    Edytuj1.Visible:=True;
    Usu1.Visible:=KopiujObraz1.Visible or (Cells[Col,Row]<>'');
  end else if PopupMenu1.PopupComponent=MdDbGrid2 Then begin
    s:=CenyIndex.AsString;
    s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint)+'.jpg';
    Wklej1.Visible:=True;
    KopiujObraz1.Visible:=FileExists(s);
    Edytuj1.Visible:=False;
    Usu1.Visible:=KopiujObraz1.Visible;
  end else begin
    Wklej1.Visible:=False;
    KopiujObraz1.Visible:=False;
    Edytuj1.Enabled:=Visible;
    Usu1.Enabled:=Visible;
  end;
end;

procedure TMainForm.KopiujObraz1Click(Sender: TObject);
var p: TObject;
    s: String;
begin
  if PopupMenu1.PopupComponent is TStringGrid Then with TStringGrid(PopupMenu1.PopupComponent) do begin
    p:=Objects[Col,Row];
    if p<>nil Then if p is TGraphic
      then Clipboard.Assign(TGraphic(p))
      else Clipboard.Assign(TPicture(P).Graphic);
  end else if PopupMenu1.PopupComponent = MdDbGrid2 then begin
    s:=CenyIndex.AsString;
    s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint)+'.jpg';
    if FileExists(s) then try
      p:=TJpegImage.Create;
      TJpegImage(p).LoadFromFile(s);
      Clipboard.Assign(TJpegImage(p));
    finally
      freeandnil(p);
    end;
  end;
end;

procedure TMainForm.Wklej1Click(Sender: TObject);
var o,p: TObject;
    s,t: String;
    j: Integer;
begin
  if PopupMenu1.PopupComponent is TStringGrid Then with TStringGrid(PopupMenu1.PopupComponent) do begin
    if Clipboard.HasFormat(CF_PICTURE) then begin
      Objects[Col,Row].free;
      p:=TPicture.Create;
      try
        TPicture(p).Assign(Clipboard);
      //p.bitmap.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap), 0);
        Objects[Col,Row]:=TJpegImage.Create;
        TJpegImage(Objects[Col,Row]).Assign(TPicture(p).Bitmap);
      finally
        p.free;
      end;
    end else if Clipboard.HasFormat(CF_TEXT) Then Cells[Col,Row]:=Clipboard.AsText;
    invalidate;
  end else if (PopupMenu1.PopupComponent = MdDbGrid2) then begin
      s:=CenyIndex.AsString;
      ForceDirectories(HostDir+'..\etykiety\kreski\'+copy(s,1,4));
      s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint)+'.jpg';
      if Clipboard.HasFormat(CF_PICTURE) then
      try
        p:=TPicture.Create;
        TPicture(p).Assign(Clipboard);
        O:=TJpegImage.Create;
        TJpegImage(O).Assign(TPicture(p).Bitmap);
        TJpegImage(O).SaveToFile(s);
        MdDbGrid2.invalidate;
      finally
        o.Free;
        p.free;
      end else if Clipboard.HasFormat(CF_TEXT) Then begin
        t:=Clipboard.AsText;
        j:=pos(';',t);
        if j<>0 Then
          t:=copy(t,1,j-1);
        j:=pos('k',t);
        if j<>0 Then
          t:=copy(t,1,j-1);
        j:=pos('i',t);
        if j<>0 Then
          t:=copy(t,j+1,maxint);
        j:=pos('c',t);
        if j<>0 Then
          t:=copy(t,j+1,maxint);
        if Length(t)<6
          Then t:=Format('%6.6d',[StrToIntDef(t,0)]);
        t:=HostDir+'..\etykiety\kreski\'+copy(t,1,4)+'\'+copy(t,5,maxint)+'.jpg';
        if not FileExists(t) Then Exit;
        CopyFile(PChar(t),PChar(s),False);
        MdDbGrid2.invalidate;
      end;
  end;
end;


procedure TMainForm.StringGrid0MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var aRow, aCol: Integer;
begin


  if Button = mbRight Then
  With TStringGrid(Sender) do begin
    MouseToCell(X, Y,aCol,aRow);
    Row:=aRow;Col:=aCol;
    //Cells[Col,Row]:=CenyINDEX.AsString;
  end
  else StringGrid0Click(Sender);
end;

procedure TMainForm.Edytuj1Click(Sender: TObject);
begin
  if PopupMenu1.PopupComponent is TStringGrid Then with TStringGrid(PopupMenu1.PopupComponent) do begin
     if goEditing in Options Then begin
       Options:=Options - [goEditing];
       EditorMode:=False;
       Edytuj1.Checked:=False;
     end else begin
       Options:=Options + [goEditing];
       EditorMode:=True;
       Edytuj1.Checked:=True;
     end;
  end;
end;

procedure TMainForm.Usu1Click(Sender: TObject);
var s: String;
begin
  if PopupMenu1.PopupComponent is TStringGrid Then with TStringGrid(PopupMenu1.PopupComponent) do begin
     Objects[Col,Row].Free;
     Objects[Col,Row]:=nil;
     Cells[Col,Row]:='';
     Invalidate;
  end else if PopupMenu1.PopupComponent = MdDbGrid2 Then begin
     s:=CenyIndex.AsString;
     s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint)+'.jpg';
     DeleteFile(s);
     MdDbGrid2.Invalidate;
  end;
end;

procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 Then begin
     ATowarExecute(Sender);
     Key:=#0
  end;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
var i: Integer;
begin
{$ifdef ZAGRODA}
  Panel1.Visible:={(ClientWidth>=1280) or }not (PageControl1.ActivePageIndex in [1..10]);
  Panel3.Visible:=(PageControl1.ActivePageIndex>10);
{$else}
  Panel3.Visible:={(ClientHeight>=920) and (PageControl1.ActivePageIndex = 0) or }(PageControl1.ActivePageIndex>6);
{$endif}
  Edit1.SelectAll;
  if (PageControl1.ActivePage<>ts0) and (PageControl1.ActivePage.Controls[0] is TStringGrid)
   Then with PageControl1.ActivePage.Controls[0] as TStringGrid do SetFocus
   Else Edit1.SetFocus;

  if PageControl1.ActivePage=tsABC Then begin
     MdDBGrid2.SetFocus;
     MdDBGrid2.SelectedField:=CenyNAZWA;
  end else begin
    MdDBGrid2.Klucz:='';
    if Ceny.Filtered then
      Ceny.Filtered:=False;
    Ceny.Filter:='';
  end;

  if (PageControl1.ActivePage<>tsSPEC) and MdDBGrid1.visible Then begin
     MdDBGrid1.Hide;
(*
    For i:=0 To Panel5.ControlCount-1 do
    with Panel5.Controls[i] as TSpeedButton do
    if Down Then begin
       Down:=False;
       Click;
    end
*)
  end;
end;

procedure TMainForm.BtnOKClick(Sender: TObject);
var a,t: String;
    b,c,d,e,f: Extended;
    v,n: Array of Extended;
    i: Integer;
    p: TAdsTable;
begin
  if (Edit1.Text<>'') and ((Keylock<1) or (Kasjer='')) Then begin
     AKluczykExecute(Sender);
     Exit;
  end;

  Case PageControl1.ActivePageIndex {$ifdef ZAGRODA} - 4 {$endif} of
   7:
    begin
      Towar(MdDbGrid2.DataSource.DataSet.FieldByName('INDEX').AsString);
      MdDbGrid2.Klucz:='';
      Ceny.Filtered:=False;
      Ceny.Filter:='';
      PageControl1.ActivePageIndex:=0;
      PageControl1Change(PageControl1);
    end;
  else
    begin
{$ifdef PUNKTY}
      if KarKlijBtn.Down then begin
        aKarKlijExecute(nil);
        Exit;
      end;
{$endif}
{$ifdef MULTIPAR}
      if MemoBtn.Down Then begin
        aMemoryExecute(nil);
        Exit;
      end;
      if FakPrzelBtn.Down then
        m.firmy_fak := FakPrzelBtn.Hint
      else
{$endif}
      if FakBtn.Down then
        m.firmy_fak := FakBtn.Hint
      else Exit;
{$ifdef PUNKTY}
      if (MdDBGrid1.DataSource.DataSet=KarKlij) Then begin
         Firmy.Scoped := False;
         Firmy.Filtered := False;
         Firmy.Open;
         m.firmy_nr:=KarKlijID.AsInteger;
         if (KarKlijKONTRAHENT.AsString<>'') and Firmy.Locate('NUMER_KOL', KarKlijKONTRAHENT.AsString, []) then begin
            m.firmy_nr:=KarKlijKONTRAHENT.AsInteger;
            m.firmy_nip:=FirmyIDENT.AsString;
         end else begin
            m.firmy_nr:=KarKlijID.AsInteger;
            m.firmy_nip:='';
         end;
         m.firmy_naz:=KarKlijNazwisko.AsString;
         m.firmy_adr:=KarKlijAdres.AsString;
         DM['Dost_Odb']:=KarKlijNazwisko.AsString+';'+KarKlijAdres.AsString;
      end else
{$endif}
      begin
        m.firmy_nr:=Firmy.FieldByName('NUMER_KOL').AsInteger;
        m.firmy_nip:=Firmy.FieldByName('IDENT').AsString;
        m.firmy_adr:=Firmy.FieldByName('ADRES').AsString;
        m.firmy_naz:=Firmy.FieldByName('LONGNAME').AsString;
      end;
    end;
    PageControl1.ActivePageIndex:=0;
    PageControl1Change(PageControl1);
    Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
    'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
    'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  end;
end;

procedure TMainForm.AFakExecute(Sender: TObject);
var i: Integer;
    p: TDataSet;
begin
  if FakBtn.Down {$ifdef MULTIPAR} or FakPrzelBtn.Down {$endif} Then Try
{$ifdef PUNKTY}
    with DbMemo1 do begin
      Hide;
      DataSource:=nil;
      DataField:='UWAGI';
    end;
{$endif}
    OpenTables;
    DM.ReadOnly:=False;
    DM.Scoped:=False;
    Firmy.Filter:='P_R<>"P"';//.and. IDENT<>" "';
    with MdDbGrid1 do begin
      Hide;
      CanSearch:=True;
      Options:=MdDbGrid1.Options - [dgAlwaysShowEditor];
      DataSource.DataSet:=Firmy;
      Firmy.Filtered:=True;
      if m.firmy_nip<>'' then begin
         SelectedField:=FirmyIdent;
         Klucz:=m.firmy_nip;
      end else begin
         SelectedField:=FirmyNAZWA;
      end;
      Firmy.Open;
    end;

{$ifdef PUNKTY}
    if (m.klij_nr<>0) then begin
      KarKlij.Open;
      if KarKlij.Locate('ID',m.klij_nr,[]) and (mrYes=MessageDlg('Czy dane do faktury z karty klienta?', mtConfirmation, mbYesNoCancel,0))
      then with MdDbGrid1 do begin
         DBMemo1.DataSource:=nil;
         DataSource.DataSet:=KarKlij;
         if KarKlijNazwisko.IsNull
           Then SelectedField:=KarKlijNazwisko
           Else SelectedField:=KarKlijAdres;
         CanSearch:=False;
         Options:=MdDbGrid1.Options + [dgAlwaysShowEditor];
         EditorMode:=True;
         DBMemo1.DataField :='DO_ZALATW';
      end else Firmy.Locate('NUMER_KOL',KarKlijKONTRAHENT.AsString,[]);
    end;
    with DbMemo1 do begin
      DataSource:=MdDbGrid1.DataSource;
      Show;
    end;
{$endif}
     MDDBGrid1.RowsHeight:=32;
     MdDbGrid1.RebuildColumns;
     with MDDbGrid1 do
       for i:=0 to Columns.Count-1 do
         with Columns[i] do begin
           if Field.CanModify and (Field.DataType=ftBoolean)
              Then ButtonStyle:=cbsEllipsis;
               //PickList.Text:='Tak'#13'Nie';
           if Width>=(MDDbGrid1.ClientWidth-10)
              Then Width:=MDDbGrid1.ClientWidth-50;
         end;
     MDDBGrid1.RowsHeight:=32;
     MDDbgrid1.Show;
     MDDbGrid1.SetFocus;
     m.firmy_nr:=0;
  except
     FakBtn.Down:=False;
{$ifdef MULTIPAR}
     FakPrzelBtn.Down:=False;
{$endif}
     Raise;
  end else try
     FormStorage1.IniNeeded(False);
     if MDDbgrid1.DataSource.State in dsEditModes
        Then MDDbgrid1.DataSource.DataSet.Post;
     MDDbgrid1.InternalSaveLayout(FormStorage1.IniFile,MDDbgrid1.DataSource.DataSet.Name);
     MDDbgrid1.Hide;
{$ifdef PUNKTY}
     DBMemo1.Hide;
     DBMemo1.DataSource:=nil;
{$endif}
     MDDbgrid1.Klucz:='';
     MdDbGrid1.DataSource.DataSet.Close;

     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
  finally
     FormStorage1.IniFree;
  end;
end;

procedure TMainForm.AKluczykExecute(Sender: TObject);
begin
  if (Edit1.Text<>'') Then begin
     Keylock:=StrToIntDef(Edit1.Text[1],0);
     Edit1.Text:=Copy(Edit1.Text,2,maxint);
     if Keylock<1 Then begin
       AStornoExecute(Sender);
     end;
  end;
  if Kasjer='' Then begin
     ATowarExecute(Sender);
     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
  end;
  if Kasjer='' Then begin
     Label4.Color:=clYellow;
     Label4.Caption:='Kasjer';
     DisplayList[6]:=Label4.Caption;
     Edit1.Text:='Podaj kod kasjera.';
     DisplayList[6]:=Label4.Caption;
     Edit1.Font.Color:=Edit1.Color;
  end;
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
  'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
  Edit1.SelectAll;
  If Edit1.Visible Then Edit1.SetFocus;
end;

procedure TMainForm.PelnyEkranBtnClick(Sender: TObject);
begin
  AdsConnection2.Disconnect;
  FormStorage1.Version:=1;
  if PelnyEkranBtn.Down Then begin
     BorderStyle:=bsNone;
     WindowState:=wsMaximized;
{$ifdef ZAGRODA}
     if Screen.Width>=1280
       Then PageControl1.TabWidth:=( Screen.Width - Panel1.Width ) div PageControl1.PageCount - 10
       Else PageControl1.TabWidth:= Screen.Width div PageControl1.PageCount - 10
{$else}
     PageControl1.TabWidth:=( Screen.Width - Panel1.Width ) div PageControl1.PageCount - 10;
{$endif}
  end else begin
     BorderStyle:=bsSizeable;
     WindowState:=wsNormal;
     ClientWidth:=1024;
     ClientHeight:=768;
{$ifdef ZAGRODA}
     PageControl1.TabWidth:= ClientWidth div PageControl1.PageCount - 10;
{$else}
     PageControl1.TabWidth:= (ClientWidth - Panel1.Width ) div PageControl1.PageCount - 10;
{$endif}
  end;
  FormStorage1.Version:=0;
{$ifdef STANY}
  try
    Stany.Open;
  except
  end;
{$endif}
end;

procedure TMainForm.ts4Show(Sender: TObject);
begin
  AWagaExecute(Sender);
end;

procedure TMainForm.A2Update(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>=2) and (kasjer<>'') and (m.lp=0) and (m.aka=nil) and (m.tz=0);
end;

procedure TMainForm.A3Update(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>=3) and (kasjer<>'') and (m.lp=0) and (m.aka=nil) and (m.tz=0);
end;

procedure TMainForm.AWplataUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and (m.lp=0) and (m.aka=nil) and (m.tz=0);
end;

procedure TMainForm.AZwrotUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>=2) and (kasjer<>'');
end;

procedure TMainForm.AFakUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and (m.w=0);
end;

procedure TMainForm.AGotowkaUpdate(Sender: TObject);
begin
 TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and
{$ifdef BAR}
  ((m.w<>0) or (m.lp<>0) or (m.aka<>nil) or (m.tz<>0));
{$else}
  (m.w=0) and ((m.lp<>0) or (m.aka<>nil) or (m.tz<>0) or (m.wb<0));
{$endif}
end;

procedure TMainForm.ARabatUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and (m.zwrot=#0) and ((m.w<>0) or (m.lp<>0));
  if (m.w<>0)
    Then TAction(Sender).Caption:='Rabat'#10'pozycji'
    Else TAction(Sender).Caption:='Rabat'#10'podsumy'
end;

procedure TMainForm.ARazemUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'');
end;

procedure TMainForm.ProcentClick(Sender: TObject);
begin
  KeyFlag:=False;
  //Edit1.Text:=Edit1.Text+'%';
  ActiveControl.Perform(WM_CHAR,37,0);
  //Edit1.Update;
  ARabatExecute(Sender);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  FormStorage1.Version:=0;
  MDDBGrid1.RowsHeight:=32;
  MDDBGrid2.RowsHeight:=32;
end;

procedure TMainForm.tsABCShow(Sender: TObject);
begin
  Panel1.Visible:=True;
  MDDBGrid2.SetFocus;
end;

procedure TMainForm.APercentClickUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'');
end;
{
procedure TMainForm.MdDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var s: String;
    p: TJpegImage;
begin
    if Column.Title.Caption<>'Obraz' Then Exit;
    s:=CenyIndex.AsString;
    s:=HostDir+'..\etykiety\kreski\'+copy(s,1,4)+'\'+copy(s,5,maxint)+'.jpg';
    if FileExists(s)
    Then try
      p:=TJpegImage.Create;
      p.Performance:=jpBestSpeed;
      p.Scale:=jsQuarter;
      p.LoadFromFile(s);
      TMDDBGrid(Sender).Canvas.StretchDraw(Rect,p)
    finally
      p.free;
    end;
end;
}

procedure TMainForm.FirmyBeforeInsert(DataSet: TDataSet);
var a,b: string;
    f: Boolean;
begin
  With TTbl(DataSet) do if State = dsInsert
  Then begin
    With FieldByName('NUMER_KOL') do begin
      ReadOnly:=False;
      AsString:=Format('%*.*d',[Size,Size,m.firmy_nr]);
    end;
    with FieldByName('P_R') do begin
      ReadOnly:=False;
      AsString:='R';
    end;
    Post;
    FieldByName('P_R').ReadOnly:=True;
    FieldByName('NUMER_KOL').ReadOnly:=True;
    Edit;
  end else begin
    if (Firmy.FieldByName('Nazwa').AsString='') and (Firmy.FieldByName('LONGNAME').AsString='')
      Then abort;
    DisableControls;
    b:=Bookmark;
    f:=Filtered;
    a:=IndexFieldNames;
    Filtered:=False;
    IndexFieldNames:='NUMER_KOL';
    Last;
    m.firmy_nr:=FieldByName('NUMER_KOL').AsInteger+1;

    IndexFieldNames:=a;
    Filtered:=f;
    Bookmark:=b;
    EnableControls;
    MdDbGrid1.Klucz:='';
  end;
end;

procedure TMainForm.FirmyBeforeEdit(DataSet: TDataSet);
begin
  if (Keylock<2) and (FirmyAdres.AsString<>'')
   Then begin
     ShowMessage('Edycja: Kluczyk do 2!');
     Abort;
   end Else m.firmy_nr:=Firmy.FieldByName('NUMER_KOL').AsInteger;
end;

procedure TMainForm.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
   if Paragony.FieldByName('INDEX').AsString='' Then Exit;
   If Copy(Paragony.FieldByName('INDEX').AsString,1,1)>'B'
     Then DBText1.Font.Color:=clBlue
     Else DBText1.Font.Color:=cl3DDkShadow; //clBlack;
   IF ParagonyRabat_Kwot.AsCurrency<>0
      Then DBText2.Color:=clLime
      Else DBText2.Color:=DBText2.Parent.Brush.Color;
   //DBText5.Visible:=not (ParagonyRABAT_PROC.AsCurrency=0);
   //DBText4.Visible:=not (ParagonyILOSC.AsCurrency=1);
   //DBText3.Visible:=DBText4.Visible;
   //Label2.Visible:=DBText4.Visible;
   //Label3.Visible:=DBText4.Visible;
end;

procedure TMainForm.FormActivate(Sender: TObject);
var s: string;
    x: Integer;
    tm: SYSTEMTIME;
    d: Char;
begin

  if WindowState=wsMaximized then begin
{$ifdef ZAGRODA}
     if Screen.Width>=1280
       Then PageControl1.TabWidth:=( Screen.Width - Panel1.Width ) div PageControl1.PageCount - 10
       Else PageControl1.TabWidth:= Screen.Width div PageControl1.PageCount - 10;
{$else}
     PageControl1.TabWidth:=( Screen.Width - Panel1.Width ) div PageControl1.PageCount - 10;
{$endif}
  end;

  Kasa:=FormStorage1.StoredValue['Kasa'];
  if ParamCount>=1
     Then Kasa:=ParamStr(1);
  Panel4.Caption:=m.firmy_fak+' '+
     'Kasa: '+kasa;

  HostDir:=FormStorage1.StoredValue['Host'];
  if ParamCount>=2
     Then HostDir:=ParamStr(2);

  FormStorage1.StoredValue['Kasa']:=Kasa;
  FormStorage1.StoredValue['Host']:=HostDir;
  DisplayList.Text:='Drukarka nie pod³¹czona.'#10#10#10#10#10#10#10;
{$ifdef KLAWBEETLE}
  KlawiaturaClick(Klawiatura);
{$else}
  For x:=0 to ComponentCount-1 do
   with TSpeedButton(Components[x]) do
     if InheritsFrom(TSpeedButton) and (Action<>nil) and (Action.Tag<>0)
      Then begin
        Hint:=ShortCutToText(Action.Tag);
        ShowHint:=True;
      end;
{$endif}

  Edit1.Text:='Kluczyk';
  Label4.Color:=clRed;
  Label4.Caption:='Kluczyk';
  DisplayList[6]:='Kluczyk';
  dr:=None;

  Update;
  ReadPictures;
  FormResize(Self);
  Update;

  OpenTables;
  If Paragonyindex.AsString<>'KONIEC' then With PARAGONY do begin
        WHILE (Copy(Paragonyindex.AsString,1,1)<'P') and not bof
          do delete;
        if bof Then //EmptyTable
        else begin
            Edit;
            Paragonyindex.AsString:='KONIEC';
            Post;
        end;
  end;
{$ifdef MULTIPAR}
  try
        AdsSettings1.ShowDeleted:=True;
        Paragony.AdsCopyTableContents(ParJob);
        AdsSettings1.ShowDeleted:=False;
        Paragony.EmptyTable;
        ParJob.Last; //resetuje isempty dla ontimer !!!
  finally
        AdsSettings1.ShowDeleted:=False;
  end;
{$endif}

  ZerujP(False);

  if utarg['DATA']<>date then begin
    utargi.open;
    utarg.AdsCopyTableContents(utargi);
    utargi.close;
    utarg.EmptyTable;
  end;

  With ComPortScanner do try
  if Port<>'NUL'
    then Open;
  except;
    if ShowSetupDialog = mrOK
    Then Open
  end;

  With ComPortWaga do try
  if Port='NUL'
    then AWaga.Visible:=False
    else Open;
  except;
    if ShowSetupDialog = mrOK
    Then Open
  end;

//{$ifndef NOPRINT}
//???????????
  With ComPort1 do
  if Port<>'NUL' then try begin
{$ifdef ELZAB}
       if (CommunicationInit(StrToIntDef(copy(Port,4,maxint),0),19200,5000)=0)
       then dr:=Elzab else
{$endif}
       Open;
    end
  except;
    if ShowSetupDialog = mrOK
    Then Open
  end;

  if ComPort1.Connected Then begin
    //ComPort1.ClearBuffer(True,False);
    //ComPort1.WriteStr(#0); //pobudka Farex
    s:=#0;
    MainForm.ComPort1.WriteStr(#$C0#1#$AA'U47'#$94#$C0#2'trcancel'#9#$18#$10#9'#06AB'#3);
    //PrintOutFr('47');
    //PrintOut('trcancel'#9#$18#$10#9);
    if ComPort1.Read(s[1],1) = 0 Then
       Raise EInOutError.Create('Drukarka nie odpowiada');

    case s[1] of
     #$70 .. #$77: dr:=Thermal;
     #2: dr:=Posnet;
     'F',#$C0: begin
        if s[1]='F'
           Then ComPort1.ReadStr(s,254)
           Else ComPort1.ReadStr(s,8);
        dr:=Farex;
       end;
    end;
  end;

  case dr of
{$ifdef NOPRINT}
    None: DisplayList.Text:='Drukarka na '+HostDir+#10#10#10#10#10#10#10;
{$endif}

    Thermal: begin
      ErrorList.LoadFromFile('ErrorTh.txt');

      ComPort1.WriteStr(#$18);
      PrintOutTh('0$e');
      PrintOutTh('1#e');
      s:=Copy(RozkazTh('#v',False),4,maxint);
      DisplayList[0]:=s;
      x:=pos('/',s);
      s:=copy(s,x+1,4);
      DisplayList[1]:=s;
      d:=DecimalSeparator;
      Try
        DecimalSeparator:='.';
        Wersja:=StrToCurr(s);
      Except
        Wersja:=0;
      end;
      DecimalSeparator:=d;

      s:=RozkazTh('#s',False);
      x:=WordCount(s,['/']);
      s:=ExtractWord(x div 2,s,['/']);
      DisplayList[3]:='Ostatni paragon: '+s;
      parnum:=StrToIntDef(s,0);

      IF (wersja < 39) //rodzaj rabatów
        Then RozkazTh('0$r'); //stare rabaty
    end;
    Posnet: begin
      ErrorList.LoadFromFile('Error.txt');
      s:=Rozkaz('sid');
      DisplayList[0]:=Copy(s,2,colnum);
      DisplayList[1]:=Copy(s,2+colnum,colnum);
      s:=Pytanie(s,'vr');
      d:=DecimalSeparator;
      Try
        DecimalSeparator:='.';
        Wersja:=StrToCurr(s);
      Except
        Wersja:=0;
      end;
      DecimalSeparator:=d;

      s:=Rozkaz('scomm');
      DisplayList[2]:=Copy(s,2,colnum);
      s:=Pytanie(s,'ts');

        if s[1]<>'0' then begin
          case s[1] of
    //       '0' : txt:='brak';
           '1' : s:='paragon';
           '2' : s:='faktura';
           '3' : s:='opakowania';
           '4' : s:='faktura';
          end;
          DisplayList[0]:='Rozpoczêta transakcja:';
          DisplayList[1]:='          '+s;
        end;

      s:=Pytanie(Rozkaz('scnt'),'bn');
      DisplayList[3]:='Ostatni paragon: '+s;
      parnum:=StrToIntDef(s,0);

      PrintOut('discounttypeset'#9'dt1');
    end;
    Farex: begin
      ErrorList.LoadFromFile('ErrorFr.txt');
      s:=Rozkaz(41);
      if S[1]<>'O' Then Begin
        dr:=None;
        Raise EInOutError.Create('Drukarka nie odpowiada');
      end;
      DisplayList[0]:='Farex DF-01 ver '+copy(s,44,4);
      DisplayList[1]:='';
      DisplayList[2]:=' Data   Czas Paragon';
      DisplayList[3]:=Copy(s,3,20);
{
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
}
      tm.wDay:=StrToInt(copy(s,3,2));
      tm.wMonth:=StrToInt(copy(s,5,2));
      tm.wYear:=StrToInt(copy(s,7,4));
      tm.wHour:=StrToInt(copy(s,11,2));
      tm.wMinute:=StrToInt(copy(s,13,2));
      tm.wSecond:=StrToInt(copy(s,15,2));
      SetLocalTime(tm);
      parnum:=StrToInt(Copy(s,17,6));
    end;
  end;
//{$endif}

  Edit1.SetFocus;
  Edit1.SelectAll;

{$ifdef ELAVON}
  s:=FormStorage1.StoredValue['TerminalIP'];
  TerminalIP:='';
  if s<>'NUL' then begin
    with CoTerminalIPAddress.Create do begin
      IPAddressIn:=s;
      SetIPAddress;
      if DiagRequestOut <> 0 Then Begin
         DisplayList[6]:='B£¥D TERMINALA';
         Raise EInOutError.Create('B£¥D ADRESU IP TERMINALA P£ATNICZEGO');
      end;
      DisplayList[6]:='IP TERMINALA: '+IPAddressOut;
    end;
    with CoStatus.Create do repeat
      GetTerminalState;
      if DiagRequestOut <> 0 Then Begin
         DisplayList[6]:='B£¥D TERMINALA';
         Raise EInOutError.Create('B£¥D POBRANIA STATUSU TERMINALA P£ATNICZEGO');
      end;
      DisplayList[6]:=TerminalStates[StateOut];
      if StateOut=1 then
          break;

      if (IDRETRY<>Application.MessageBox(TerminalStates[StateOut], 'DoprowadŸ terminal p³atniczy do porz¹dku:' , MB_RETRYCANCEL + MB_APPLMODAL + MB_ICONHAND ))
      then Raise EInOutError.Create('TERMINAL P£ATNICZY: '+DisplayList[6]);

    until False;
    TerminalIP:=s;

    with CoInitTxnReceiptPrint.Create do begin
        StatusIn := 1; //FormStorage1.StoredValue['TerminalPrint'];
        SetTxnReceiptPrintStatus;
      if DiagRequestOut <> 0 Then Begin
         DisplayList[6]:='B£¥D TERMINALA';
         Raise EInOutError.Create('B£¥D KONFIGUROWANIA TERMINALA P£ATNICZEGO');
      end;
    end;

  end;

{
0x00: No Error
0x01: Unable to Connect to the Terminal
0x02: Unable to Send to the Terminal
0x03: Bad Request Format
0x05: Reception Timeout
0x06: Reception Error
0x07: Bad Response Format 0x08: Bad Response Size
0x09: PED Not Authenticated

STATE_UNKNOWN: 0
STATE_IDLE: 1
STATE_BUSY: 2
STATE_CARD_INSERT: 3
STATE_PIN_ENTRY_FIRST_ATTEMPT: 4
STATE_PIN_ENTRY_SECOND_ATTEMPT: 5
STATE_PIN_ENTRY_THIRD_ATTEMPT: 6
STATE_PIN_ENTRY_FAILED: 7
STATE_GRATUITY_ENTRY: 8
STATE_AUTHORIZING: 9
STATE_COMPLETION: 10
STATE_CANCELLED: 11
STATE_AMOUNT_CONFIRMATION : 12
STATE_SENDING: 13
STATE_RECEIVING: 14
STATE_UNSPECIFIED_INPUT: 15
STATE_PROCESSING: 16
STATE_CARD_REMOVAL: 17
STATE_PRINTING_MERCHANT_COPY: 18
STATE_PRINTING_CUSTOMER_COPY: 19
STATE_NO_MORE_PAPER: 20
STATE_LOYALTY_OPTION_SELECTION: 21
STATE_PHONE_ENTRY:22
STATE_PROMO_CODE_ENTRY: 23
STATE_LOYALTY_MEMBER_SELECTION: 24
STATE_REWARD_OFFER: 25
STATE_EXISTING_ACCOUNT: 26
STATE_INVALID_ACCOUNT: 27
STATE_LINK_CARD_PAYMENT: 28
STATE_ADD_CARD_PAYMENT: 29
STATE_CASHBACK_ENTRY: 30
STATE_COMMERCIAL_CODE_ENTRY: 31
STATE_WAITING_CARD:32
STATE_WAITING_DCC_ACCEPTANCE: 33

}
{$endif}

end;

procedure TMainForm.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
  var i: Extended;
      l: TStringList;
      j: Integer;
      d: TDataSet;
      f: TMemoField;
      s: String;

   function Slow(t: string): string;
    const
      {Nazwy grupy jednoœci}
      J: array ['1'..'9'] of string[20] =
         (' jeden', ' dwa', ' trzy', ' cztery', ' piêæ', ' szeœæ', ' siedem', ' osiem', ' dziewiêæ');
         {Nazwy liczb z zakresu 10..19. Wyj¹tki w jêzyku polskim}
      N: array [10..19] of string[20] =
         (' dziesiêæ', ' jedenaœcie', ' dwanaœcie', ' trzynaœcie', ' czternaœcie', ' piêtnaœcie',
         ' szesnaœcie', ' siedemnaœcie', ' osiemnaœcie', ' dziewiêtnaœcie');
      {Nazwy grupy dziesi¹tek}
      D: array ['0'..'9'] of string[20] =
         ('', '', ' dwadzieœcia', ' trzydzieœci', ' czterdzieœci', ' piêædziesi¹t', ' szeœædziesi¹t',
         ' siedemdziesi¹t', ' osiemdziesi¹t', ' dziewiêædziesi¹t');
      {Nazwy grupy setek}
      S: array ['0'..'9'] of string[20] =
         ('', ' sto', ' dwieœcie', ' trzysta', ' czterysta', ' piêæset', ' szeœæset', ' siedemset',
         ' osiemset', ' dziewiêæset');
   begin
      Result := '';
      case t[2] of
         '1': Result := S[t[1]]+N[StrToInt(t[2]+t[3])];
         '0', '2'..'9': Result := S[t[1]]+D[t[2]]+J[t[3]];
      end;
   end;

   function LiczbaSlownie(Liczba: Int64): string;
   const
   {Nazwy grup}
   G: array [0..7, 1..3] of string[20] =
      (('', '', ''),
      (' tysi¹c', ' tysi¹ce', ' tysiêcy'),
      (' milion', ' miliony', ' milionów'),
      (' miliard', ' miliardy', ' miliardów'),
      (' bilion', ' biliony', ' bilionów'),
      (' biliard', ' biliardy', ' biliardów'),
      (' trylion', ' tryliony', ' trylionów'),
      (' tryliard', ' tryliardy', ' tryliardów')); //Tego to ju¿ raczej nie da siê...

   var
   sl, t1, t: string;
   i, k, dl: Byte;
   begin
   t := IntToStr(Liczba);
   dl := Length(t);
   for i := 0 to (dl-1) div 3 do
      begin
      t1 := Copy(t, Length(t)-2, 3);
      Delete(t, Length(t)-2, 3);

      {Wyrównanie do 3 cyfr}
      for k := 1 to 3-Length(t1) do
         t1 := '0' + t1;

      {Je¿eli wszystkie 3 to 0 to nie ma po co dodawaæ nazwy grupy}
      if t1 = '000' then
        Continue;

      {Przypadek liczby pojedynczej}
      if (t1 = '001') then
         sl := Slow(t1) + G[i,1] + sl
         else
            {Liczby koñcz¹ce siê na 2, 3 lub 4 oprócz 12, 13 i 14. Ach ten jêzyk polski}
            if (t1[3] in ['2'..'4']) and (t1[2] <> '1') then
               sl := Slow(t1) + G[i,2] + sl
               else
                  sl := Slow(t1) + G[i,3] + sl;
      end;
   Result := Trim(sl);
   end;

begin
  if name='SLOWNIE' then begin
    i:=frParser.calc(p1);
    if i<0
      Then s:='minus '
      Else s := '';
    Val := s + LiczbaSlownie(Trunc(abs(i))) + ', '+intToStr(System.Round(abs(i)*100) mod 100)+'/100';
  end else if name='UWAGI' then try
    d:=TDataSet(FindComponent(frParser.calc(p1)));
    if d=nil Then Exit;
    f:=TMemoField(d.FindField('UWAGI'));
    if f=nil Then Exit;
    l:=TStringList.Create;
    l.Assign(f);
    j:=frParser.calc(p2);
    if (j>0) and (j<=l.Count)  Then begin
       Val := l[j-1];
    end Else begin
       Val := l.Text;
       (*
       s:=frParser.calc(p3);
       if s<>'' Then begin
         l.Text:=s;
         d.Edit;
         f.Assign(l);
         d.Post;
       end;
       *)
    end;
  finally
    freeandnil(l);
  end;
end;

procedure TMainForm.SpeedButton125Click(Sender: TObject);
begin
  if (ActiveControl=MdDBGrid1) and (MdDBGrid1.DataSource.DataSet<>DM)
    Then MdDBGrid1.DataSource.DataSet.Insert
    else ActiveControl.Perform(WM_CHAR,Ord(TSpeedButton(Sender).Caption[1]),0);
end;

procedure TMainForm.DBCtrlGrid1Enter(Sender: TObject);
begin
  DBCtrlGrid1.SelectedColor:=clHighlight;
end;

procedure TMainForm.DBCtrlGrid1Exit(Sender: TObject);
begin
  DBCtrlGrid1.SelectedColor:=clBtnFace;
end;

procedure TMainForm.DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
     VK_RETURN: begin
      DBCtrlGrid1Click(Sender);
      Key:=0;
     end;

    VK_DOWN: with Paragony do begin
      Next;
      Key:=0;
      if eof Then begin
        Edit1.SetFocus;
        Edit1.SelectAll;
      end;
    end;
  end;
end;

procedure TMainForm.ParagonyRABAT_PROCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not DisplayText or (ParagonyRabat_Kwot.AsCurrency=0) Then Exit;
  if  ParagonyRabat_Kwot.AsCurrency<0 Then Text:='N '
  else Text:='R ';
  if Sender.isnull
    Then Text:=Text+CurrToStrF(abs(ParagonyRabat_Kwot.AsCurrency),ffFixed,2)
    Else Text:=Text+CurrToStrF(Abs(Sender.AsCurrency),ffGeneral,0)+'%'
end;

procedure TMainForm.AProjFakUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(MDDbGrid1.DataSource.DataSet=DM) and DM.Active;
end;

procedure TMainForm.ProjFakBtnClick(Sender: TObject);
var a,t: String;
    i: Integer;
begin
    if DM.Active Then begin
      Firmy.Filtered:=False;
      Firmy.IndexName:='firm_num';
      Firmy.Open;
      t:=DM['SMB_DOW'];
{$ifdef MULTIPAR}
      if not DM.FieldByName('Kontrahent').IsNull and Firmy.Locate('NUMER_KOL',DM.FieldByName('Kontrahent').AsString,[])
      Then begin
         m.firmy_naz:=FirmyLongname.AsString;
{$else}
      if Firmy.Locate('NUMER_KOL',copy(DM.FieldByName('Dost_odb').AsString,1,5),[])
      Then Begin
         m.firmy_naz:=FirmyNazwa.AsString;
{$endif}
         m.firmy_nr:=FirmyNUMER_KOL.AsInteger;
         m.firmy_nip:=FirmyIdent.AsString;
         m.firmy_adr:=FirmyAdres.AsString;
      end else begin
         m.firmy_naz:=DM.FieldByName('Dost_odb').AsString;
         i:=Pos(';',m.firmy_naz);
         if i>1 Then begin
           m.firmy_adr:=copy(m.firmy_naz,i+1,maxint);
           m.firmy_naz:=copy(m.firmy_naz,1,i-1);
         end;
         m.firmy_nip:='';
         m.Firmy_nr:=0;
      end;
    end else raise EInOutError.Create('Wybierz dokument na wzór! - Faktury');
   frReport1.LoadFromFile(ChangeFileExt(LowerCase(t),'.frf'));
   frReport1.DesignReport;
   //-tu zapisz na host ???
end;

procedure TMainForm.FormResize(Sender: TObject);
  procedure grresize(grid: TStringGrid);
  begin
    with grid do begin
      RowCount:= (Self.ClientHeight - PageControl1.TabHeight -12) div (DefaultRowHeight+ 2);
{$ifdef ZAGRODA}
      //if Self.ClientWidth<1280 Then
       ColCount:= (Self.ClientWidth - Left -10) div (DefaultColWidth + 2);
       //else
{$else}
      ColCount:= (Self.ClientWidth - Panel2.Left - Left -10) div (DefaultColWidth + 2);
{$endif}
    end;
  end;
begin
{$ifdef ZAGRODA}
    Panel1.Visible:={(ClientWidth>=1280) or }not (PageControl1.ActivePageIndex in [1..10]);
{$else}
    Panel3.Visible:={(ClientHeight>=920) and (PageControl1.ActivePageIndex = 0) or} (PageControl1.ActivePageIndex>6);
{$endif}
    with StringGrid0 do begin
      RowCount:=(Self.ClientHeight - PageControl1.TabHeight -12) div (DefaultRowHeight+ 2);
      {$ifdef ZAGRODA}
      if Self.ClientWidth<1280
         Then RowCount:=RowCount-1;
      {$else}
      if Self.ClientHeight>=920
         Then RowCount:=(Self.ClientHeight {- Panel3.Height} - PageControl1.TabHeight -12) div (DefaultRowHeight+ 2);
      {$endif}
      ColCount:=(Self.ClientWidth - Panel2.Left - Left -10 ) div (DefaultColWidth + 2)
    end;
    grresize(StringGrid1);
    grresize(StringGrid2);
    grresize(StringGrid3);
    grresize(StringGrid4);
    grresize(StringGrid5);
    grresize(StringGrid6);
{$ifdef ZAGRODA}
    grresize(StringGrid7);
    grresize(StringGrid8);
    grresize(StringGrid9);
    grresize(StringGrid10);
{$endif}
end;

procedure TMainForm.StringGrid0KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if TStringGrid(Sender).EditorMode
     Then Exit;
  if Key = VK_RETURN Then begin
     StringGrid0Click(Sender);
     Key:=0;
  end Else
{$ifdef KLAWBEETLE}
  if Klawiatura.Down Then
{$endif}
  Begin
    FormKeyDown(Sender,Key,Shift);
  end;
end;

procedure TMainForm.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName ='KASJER'
     Then ParValue:=kasjer
{$ifdef PUNKTY}
  else if ParName ='RABATPKT'
     Then ParValue:=m.rabpkt
  else if ParName ='RABPKTLP'
     Then ParValue:=m.rabpktlp
{$endif}
  else if ParName ='FIRMY_NAZ'
     Then ParValue:=m.firmy_naz
  else if ParName ='FIRMY_ADR'
     Then ParValue:=m.firmy_adr
  else if ParName ='FIRMY_NIP'
     Then ParValue:=m.firmy_nip
end;

procedure TMainForm.MdDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN Then begin
    key:=0;
    BtnOK.Click;
  end;
end;

procedure TMainForm.MdDBGrid1EditButtonClick(Sender: TObject);
var i: Integer;
begin
  With TMdDbGrid(Sender), Columns[SelectedIndex] do
    if SelectedField.DataType=ftBoolean Then begin
       DataSource.Edit;
       SelectedField.AsBoolean:=not SelectedField.AsBoolean;
//       DataSource.DataSet.Post;
    end
end;

procedure TMainForm.ACenaExecute(Sender: TObject);
var p: Currency;
begin
  try
    p:=Round(StrToCurr(Edit1.Text),2);
    Edit1.Text:='ILOŒÆ/KOD';
    Edit1.SelectAll;
    If Edit1.Visible Then Edit1.SetFocus;
    razem;
    m.ce:=p;
    showline(True);
  except
  end;
end;
{$ifdef MULTIPAR}
procedure TMainForm.MdDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (MdDBGrid1.DataSource.DataSet=Memory) then
  if (Key=VK_RETURN) then begin
     Key:=0;
     with MdDbGrid1.DataSource.DataSet do if State in dsEditModes
       Then Post;
     BtnOK.Click;
  end
  else if (Key=AMemory.Tag) Then begin
     Key:=0;
     MemoBtn.Down:=False;
     MemoBtn.Click;
  end;
end;
{$endif}

{$ifdef STANY}
procedure TMainForm.CennikCalcFields(DataSet: TDataSet);
begin
  if stany.Active
   Then try
     DataSet['STAN']:=Stany.Lookup('INDEX;NR_MAG',VarArrayOf([DataSet.FieldByName('INDEX').AsString,' 1']),'STAN')
   except
     DataSet['STAN']:=1000000.0;
     Stany.Close;
   end Else DataSet['STAN']:=1000000.0;
end;
{$endif}

{$ifdef HURT}
procedure TMainForm.MdDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if CenyRabat.AsCurrency<>0 Then Background:=clLime;
end;

procedure TMainForm.ACenHurtExecute(Sender: TObject);
begin
  if HurtBtn.Down
    Then Panel4.Color:=clYellow
    Else Panel4.ParentColor:=True;
end;
{$endif}

{$ifdef OLDCEN}
procedure TMainForm.OldCenINDEXGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text:=Sender.AsString;
  Text:=Text+StringOfChar(' ',12-length(Text));
end;

procedure TMainForm.CenHisBtnClick(Sender: TObject);
begin
  if CenHisBtn.Down Then Try
     MdDbGrid1.DataSource:=DSOldCen;
     MdDbGrid1.CanSearch :=True;
     MdDbGrid1.Options   := MdDBGrid1.Options - [dgAlwaysShowEditor];
     OldCen.Open;
     MDDBGrid1.RowsHeight:=32;
//     MdDbGrid1.Top:=160;
     MdDBGrid1.SelectedField:=OldCenINDEX;
     MdDbGrid1.Klucz:='      ';
     //OldCen.Last;
//     OldCen.MoveBy( - MDDBGrid1.Height div 32 + 3 );
     MDDbgrid1.Show;
     MDDbGrid1.SetFocus;
  except
     CenHisBtn.Down:=False;
     Raise;
  end else begin
     OldCen.Close;
     MDDbgrid1.Hide;
     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
  end;

end;
{$endif}

{$ifdef MULTIPAR}
procedure TMainForm.AMemoryUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and (m.lp_printed=0);
end;


procedure TMainForm.AMemoryExecute(Sender: TObject);
var
  i,j,k,l: Integer;
  s: String;
  a: TKar;
begin

if (Sender<>NIL) Then try //klawisz zapisz
  FormStorage1.IniNeeded(False);
  if MDDBGrid1.Visible and (MdDBGrid1.DataSource.DataSet=Memory) Then begin
     MemoBtn.Down:=False;
     if not (Memory.State = dsBrowse) Then Memory.Post;
     MDDbgrid1.InternalSaveLayout(FormStorage1.IniFile,MDDbgrid1.DataSource.DataSet.Name);
     MDDbgrid1.Hide;
     PageControl1.ActivePage:=ts0;
     PageControl1Change(PageControl1);

     Showline(False);
     Edit1.SelectAll;
     If Edit1.Visible
       Then Edit1.SetFocus;

  end else With m^ do begin
     MemoBtn.Down:=True;
     MdDbGrid1.Klucz:='';
{$ifdef PUNKTY}
     DBMemo1.Hide;
     DBMemo1.DataSource:=nil;
{$endif}
     MdDBGrid1.DataSource.DataSet:=Memory;
     MdDbGrid1.CanSearch := False;
     MdDbGrid1.Options := MdDbGrid1.Options - [dgAlwaysShowEditor];
     Memory.Open;
     MdDbGrid1.RebuildColumns;
     MdDbGrid1.InternalRestoreLayout(FormStorage1.IniFile,MdDbGrid1.DataSource.DataSet.Name);
     With Memory do If IsEmpty or not Locate('id',id,[loCaseInsensitive])
       Then Append
       Else Edit;
     mat:=mat-MemoryTp.AsCurrency;
     Memoryid.AsInteger:=id;
     MemoryLp.AsInteger:=lp;
     MemoryTp.AsCurrency:=tp+w-rk-rkt-rks-tz-tkz+tk;
     If MemoryKlucz.IsNull
       Then MemoryKlucz.AsString:=MemoryId.AsString;
     Memory.Post;
     mat:=mat+MemoryTp.AsCurrency;

     MDDBGrid1.RowsHeight:=32;
     if PageControl1.ActivePage<>tsSpec Then begin
       PageControl1.ActivePage:=tsSpec;
       PageControl1Change(PageControl1);
     end;
     MDDbgrid1.Show;
     MDDbGrid1.SetFocus;
     MdDbGrid1.Columns[1].ReadOnly:=True;
     MdDbGrid1.Columns[2].ReadOnly:=True;
     FormResize(Self);
  end;
  Exit;
finally
  FormStorage1.IniFree;
end;

  MdDbGrid1.Columns[1].ReadOnly:=False;
  MdDbGrid1.Columns[2].ReadOnly:=False;

  m := nil;
  For i:=0 To Length(ma)-1 do
    if ma[i].Id = MemoryId.AsInteger Then begin
      m:=@(ma[i]);
      Break;
    end;

  if m = nil Then begin
    i:=Length(ma);
    SetLength(ma,i+1);
    m:=@(ma[i]);
    m.Id:=MemoryId.AsInteger;
    OpenTables;
    Paragony.EmptyTable;
  end Else begin
    Memory.Edit;
    mat:=mat-MemoryTp.AsCurrency;
    MemoryTp.AsCurrency:=0;
    Memory.Post;
    OpenTables;
  end;
  m.firmy_nr:=0;

{$ifdef PUNKTY}
  if m.klij_nr=0
    Then Panel4.ParentColor:=True
    Else Panel4.Color:=clYellow;
{$endif}
  Panel4.Caption:=m.firmy_fak+' '+
{$ifdef PUNKTY}
        'Klient: '+IntToStr(m.klij_nr)+' '+
{$endif}
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);


  if mat=0
    Then Color:=clBtnFace
    Else Color:=clYellow;

  AMemoryExecute(AMemory); //zamyka
end;

procedure TMainForm.MemoryAfterInsert(DataSet: TDataSet);
begin
   MemoryId.AsInteger:=Memory.RecordCount+1;
   MemoryKlucz.AsInteger:=Memory.RecordCount+1;
end;

procedure TMainForm.MemoryBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;
{$endif}

{$ifdef PUNKTY}
procedure TMainForm.AKlijAlertUpdate(Sender: TObject);
begin
//    TAction(Sender).Visible:=(m.klij_nr<>0);
//    if TAction(Sender).Visible then
      TAction(Sender).Enabled:=KarKlij.Active and (m.klij_nr=KarKlijID.asInteger) and (KarKlijALARM.AsBoolean);
end;

procedure TMainForm.KarKlijIDValidate(Sender: TField);
begin
  if (KarKlijPUNKTY.AsCurrency<>0) Then begin
    KarKlij.Cancel;
    Abort;
  end;
end;

procedure TMainForm.KarKlijAfterScroll(DataSet: TDataSet);
begin
  KarKlijID.ReadOnly:=(KarKlijPUNKTY.AsCurrency<>0) or (KarKlijWYBRANE.AsCurrency<>0);
  KarKlijNAZWISKO.ReadOnly:=KarKlijID.ReadOnly and (keylock<2);
end;

procedure TMainForm.AKlijAlertExecute(Sender: TObject);
begin
  KarKlijBtn.Down:=True;
  aKarKlijExecute(Sender);
end;

procedure TMainForm.AKarKlijExecute(Sender: TObject);
var l: TStringList;
    i: integer;
begin
  if (Sender=NIL) Then begin //klawisz zapisz
    m.klij_nr:=KarKlijID.AsInteger;
    AKlijAlert.Visible:=True;
    Panel4.Color:=clYellow;
    Panel4.Caption:=m.firmy_fak+' '+
        'Klient: '+IntToStr(m.klij_nr)+' '+
        'Kasa: '+IntToStr(StrToIntDef(Kasa,0)*100+kasjr)+' '+intToStr(Keylock);
    MDDbgrid1.Hide;
    DBMemo1.Hide;
    DBMemo1.DataSource:=nil;
    if not (KarKlij.State = dsBrowse) Then KarKlij.Post;
    MdDbGrid1.Klucz:='';
    try
      KarKlij.SetRange([m.klij_nr],[m.klij_nr]);
      frReport1.LoadFromFile('kk.frf');
      if frReport1.PrepareReport
        Then frReport1.PrintPreparedReport('',1,True,frAll);//ShowPreparedReport;
    finally
      frReport1.Clear;
      KarKlij.Close;
      KarKlij.Filtered:=False;
      KarKlijBtn.Down:=False;
      PageControl1.ActivePageIndex:=0;
      PageControl1Change(PageControl1);
    end;
    Exit;
  end;
  if KarKlijBtn.Down Then Try
     FormStorage1.IniNeeded(False);
     try
     with MdDBGrid1,DataSource do if (DataSet<>nil) then try
        if state in [dsEdit, dsInsert] Then DataSet.Post;
        InternalSaveLayout(FormStorage1.IniFile,DataSet.Name);
     except
     end;
     PageControl1.ActivePage:=tsSpec;
     PageControl1Change(PageControl1);
     MdDBGrid1.DataSource.DataSet:=KarKlij;
     MdDbGrid1.Klucz:='';
     MdDbGrid1.CanSearch:=keylock>1;
     MdDbGrid1.Options:=MdDBGrid1.Options - [dgAlwaysShowEditor];

     //OpenTables;
     Firmy.Open;
     KarKlij.Open;
     KarKlij.Filtered:=False;
     KarKlij.FindNearest([m.klij_nr]);
     Edit1.Clear;
       MdDbGrid1.RebuildColumns;
       //MdDbGrid1.InternalRestoreLayout(FormStorage1.IniFile,MdDbGrid1.DataSource.DataSet.Name);
     finally
       FormStorage1.IniFree;
     end;
     with MDDbGrid1 do
       for i:=0 to Columns.Count-1 do
         with Columns[i] do begin
           if Field.CanModify and (Field.DataType=ftBoolean)
              Then ButtonStyle:=cbsEllipsis;//PickList.Text:='Tak'#13'Nie';
           if Width>=(MDDbGrid1.ClientWidth-10)
              Then Width:=MDDbGrid1.ClientWidth-50;
         end;
     DBMemo1.DataSource:=nil;
     DBMemo1.DataField:='DO_ZALATW';
     DBMemo1.DataSource:=MdDBGrid1.DataSource;
     DBMemo1.Show;
     MDDBGrid1.RowsHeight:=32;
     MDDbgrid1.Show;
     MDDbGrid1.SetFocus;
  except
     KarKlijBtn.Down:=False;
     KarKlij.Close;
     Firmy.Close;
     DBMemo1.Hide;
     DBMemo1.DataSource:=nil;
  end else begin
     FormStorage1.IniNeeded(False);
     try
     with MdDBGrid1,DataSource do if (DataSet<>nil) then begin
        if state in [dsEdit, dsInsert] Then DataSet.Post;
        InternalSaveLayout(FormStorage1.IniFile,DataSet.Name);
     end;
     finally
       FormStorage1.IniFree;
     end;
     MDDbgrid1.Klucz:='';
     MDDbgrid1.Hide;
     DBMemo1.Hide;
     DBMemo1.DataSource:=nil;
     KarKlijBtn.Down:=False;
     KarKlij.Close;
     PageControl1.ActivePageIndex:=0;
     PageControl1Change(PageControl1);
  end;
end;

procedure TMainForm.MdDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  with TMdDBGrid(Sender) do
  if (DataSource.DataSet=KarKlij) and not (IsCurRow) and (Keylock<2) and (Field<>Pole)// and not Highlight
    Then Abort                 //AFont.Color:=Background; //.Name:='Wingdings';
end;

procedure TMainForm.KarKlijBeforeInsert(DataSet: TDataSet);
var a,b: string;
    f: Boolean;
begin
  With TTbl(DataSet) do if State = dsInsert
  Then begin
    KarKlijID.Readonly:=False;
    KarKlijRAB_ZA100.Readonly:=False;
    KarKlijDATA_ZAL.Readonly:=False;

    KarKlijID.AsInteger:=m.Klij_nr;
    KarKlijRAB_ZA100.AsInteger:=3;
    KarKlijDATA_ZAL.AsDateTime:=Date;
    Post;
    KarKlijRAB_ZA100.Readonly:=True;
    KarKlijID.Readonly:=True;
    KarKlijDATA_ZAL.Readonly:=True;
    Edit;
  end else begin
    if (m.klij_nr=0) and (KarKlijNazwisko.AsString='') and (KarKlijPunkty.AsCurrency=0)
    Then abort;
    DisableControls;
    b:=Bookmark;
    a:=IndexFieldNames;
    Filtered:=False;
    IndexFieldNames:='ID';
    Last;
    m.Klij_nr:=KarKlijID.AsInteger+1;
    AKlijAlert.Visible:=True;
    IndexFieldNames:=a;
    Bookmark:=b;
    EnableControls;
    MdDbGrid1.Klucz:='';
  end;
end;

procedure TMainForm.KarKlijBeforeDelete(DataSet: TDataSet);
begin
  if (KarKlijPUNKTY.AsCurrency<>0) Then Abort;
end;

procedure TMainForm.KarKlijCalcFields(DataSet: TDataSet);
begin
  KarKlijPLN.AsCurrency:=Round( KarKlijPUNKTY.AsCurrency * 3 / 10, 2 );
  KarKlijPKT.AsCurrency:=KarKlijPUNKTY.AsCurrency;
end;

procedure TMainForm.ARabatPktUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:=(keylock>0) and (kasjer<>'') and (m.Klij_nr<>0) and (m.zwrot=#0) and ((m.w<>0) or (m.lp<>0));
end;

procedure TMainForm.ARabatPktExecute(Sender: TObject);
var buf: String;
begin
  with m^ do try
    Firmy.Open;
    KarKlij.Open;
    if KarKlij.Locate('id',klij_nr,[]) then begin
      if w<>0 then begin
        rp:=0;
        rk:=min(Round(il*100*ce-1,0)/100,Round(KarKlijPLN.AsCurrency - rabpkt + rabpktpoz,2));
        pktrab:=pktrab+(rk - rabpktpoz)* 10 / 3;
        rabpkt:=rabpkt+(rk - rabpktpoz);
        rabpktpoz:=rk;
        Showline(True);
      end else if tp<>0 then begin
        rk:=0;
        rp:=0;
        rps:=0;
        rs:=tp-rt;
        rks:=min(Round(rs * 100 - 1,0)/100,Round(KarKlijPLN.AsCurrency - rabpkt + rabpkttot,2));
        pktrab:=pktrab+(rks - rabpkttot) * 10 / 3;
        rabpkt:=rabpkt+(rks - rabpkttot);
        rabpkttot:=rks;
        ARazemExecute(Sender);
      end;
    end;
  finally
    KarKlij.Close;
    Firmy.Close;
  end;
end;

procedure TMainForm.ProjKarBtnClick(Sender: TObject);
begin
   OpenTables;
   Firmy.Open;
   KarKlij.Open;
   frReport1.LoadFromFile('kk.frf');
   frReport1.DesignReport;
   //-tu zapisz na host ???
   OpenTables;
end;
{$endif}

{$ifdef KLAWBEETLE}
procedure TMainForm.KlawiaturaClick(Sender: TObject);
begin
  if Klawiatura.Down then begin
     Edit1.OnKeyDown:=FormKeyDown;
     Edit1.OnKeyPress:=FormKeyPress;
  end else begin
     Edit1.OnKeyDown:=nil;
     Edit1.OnKeyPress:=Edit1KeyPress;
  end;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(PageControl1);
end;
{$endif}

{$ifdef ZAGRODA}
procedure TMainForm.ABezSygUpdate(Sender: TObject);
begin
  ABezSyg.Enabled:=(keylock>0) and (kasjr>0) and m.naplacu;
  BezSygBtn.Down:=m.Bez_sygn;
  ABezSyg.Checked:=m.Bez_sygn;
end;

procedure TMainForm.ABezSygExecute(Sender: TObject);
begin
  m.Bez_sygn:= not m.Bez_sygn;
end;

procedure TMainForm.ASerwisExecute(Sender: TObject);
var a,t :string;
    i :integer;
begin
  if SerwisForm=nil
   Then SerwisForm:=TSerwisForm.Create(Application);
  Firmy.Open;
  with DM do begin
    DSDM.DataSet:=DM;
    Close;
    ReadOnly:=False;
    Scoped:=False;
    Open;
  // po co? DM.IndexFieldNames:='NR_MAG;SMB_DOW;NR_DOWODU';

        t:='SE';
        FindNearest([' 1',t,'@']);
        If DMSMB_DOW.AsString>t Then Prior;
        a:=DMNR_DOWODU.AsString;

        if DMSMB_DOW.AsSTring<>t Then begin
          a:='   1 ';
          Append;
        end else if (DMPOZYCJA.AsInteger<>0) or (DMZaplacono.AsCurrency<>0)  Then begin
          a:=Format('%*d',[Length(TrimRight(DMNR_DOWODU.AsString)),DMNR_DOWODU.AsInteger+1]);
          Append;
        end Else begin
          Edit;
          ClearFields;
        end;
        For i:=0 to FieldCount-1 do with Fields[i] do
          if pos('DATA',FieldName)=1 Then AsDateTime:=Date;
        DMTermin_p.AsDateTime:=Date+14;
        DMNR_MAG.AsString:=' 1';
        DMSMB_DOW.AsString:=t;
        DMNR_DOWODU.AsString:=a;
        with DMPOZYCJA do
           AsString:=Format('%*d',[Size,0]);
        DMZaplacono.AsCurrency:=1;
        Post;
        Edit;


  with SerwisForm do try
     if not (Showmodal=mrOK) Then begin
       DMZaplacono.Clear;
       Post;
       Exit
     end;
     DMKto_Pisal.AsString:=Kasjer;
     Post;
     Firmy.IndexName:='firm_num';

{$ifdef MULTIPAR}
      if Firmy.Locate('NUMER_KOL',DM.FieldByName('Kontrahent').AsString,[])
      Then begin
         m.firmy_naz:=FirmyLongname.AsString;
{$else}
      if Firmy.Locate('NUMER_KOL',copy(DM.FieldByName('Dost_odb').AsString,1,5),[])
      Then Begin
         firmy_naz:=FirmyNazwa.AsString;
{$endif}
         m.firmy_nr:=FirmyNUMER_KOL.AsInteger;
         m.firmy_nip:=FirmyIdent.AsString;
         m.firmy_adr:=FirmyAdres.AsString;
      end else begin
         m.firmy_naz:=DM.FieldByName('Dost_odb').AsString;
         i:=Pos(';',m.firmy_naz);
         if i>1 Then begin
           m.firmy_adr:=copy(m.firmy_naz,i+1,maxint);
           m.firmy_naz:=copy(m.firmy_naz,1,i-1);
         end;
         m.firmy_nip:='';
         m.Firmy_nr:=0;
      end;
      i:=2; //-1 - na ekran

    with frReport1 do try
      LoadFromFile(ChangeFileExt(LowerCase(t),'.frf'));
      DefaultCopies:=abs(i);
      if PrepareReport Then
         if i<0 Then ShowPreparedReport
                Else PrintPreparedReport('',i,True,frAll);
    finally
        Clear;
    end;
  finally
    SerwisForm.Release;
    OpenTables;
  end;
  end;
end;

procedure TMainForm.DMKONTRAHENTSetText(Sender: TField;
  const Text: String);
var v :variant;
begin
  Sender.AsString:=Text;
  v:=Firmy.Lookup('NUMER_KOL',Text,'NAZWA;LONGNAME');
  if varisarray(v) Then
     Sender.DataSet['DOST_ODB']:=v[0]+' * '+v[1];
end;

{$else}//-------------------------------------------------

{$endif}

procedure TMainForm.calcClick(Sender: TObject);
begin
  with TFrParser.Create do Try
    Edit1.Text:=Calc(Edit1.Text);
  finally
    Free;
  end;
end;

procedure TMainForm.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var s: String;
    TextBounds: TRect;
    i: integer;
begin
   s:=TPageControl(Control).Pages[TabIndex].Caption;
   TextBounds:=Rect;

  with Control.Canvas do begin
{$ifndef KLAWBEETLE}
   if (TabIndex>0) and (strtointdef(s,0)<>TabIndex) then begin
      //TextBounds.Bottom:=Rect.Top+(Rect.Bottom-Rect.Top) div 3 * 2;
      s:='F'+inttostr(TabIndex);
      DrawText(Handle, PChar(s), Length(s), TextBounds,
       DT_RIGHT or DT_BOTTOM or DT_SINGLELINE or DT_NOCLIP);
      s:=TPageControl(Control).Pages[TabIndex].Caption;
      TextBounds:=Rect;
   end;
{$endif}
   for i:=1 to WordCount(s,[' ']) do
   while (Abs(Font.Size)>6)
    and (TextWidth(ExtractWord(i,s,[' ']))>(Rect.Right-Rect.Left))
      do Font.Height:=Abs(Font.Height)-1;
   if i<=2
      Then i:= DT_CENTER or DT_VCENTER or DT_SINGLELINE or DT_NOCLIP
      Else i:= DT_CENTER or DT_WORDBREAK or DT_NOCLIP;
   DrawText(Handle, PChar(s), Length(s), TextBounds, i);
   //TextOut(Rect.Left,Rect.Top,s);
  end;

end;

initialization
  keyflag:=False;
  dr:= None;
{$ifdef MULTIPAR}
  SetLength(ma,1);
  m:=@ma[0];
  mat:=0;
  m.id:=1;
{$else}
  m:=@ma;
{$endif}

finalization
{$ifdef MULTIPAR}
  SetLength(ma,0);
{$endif}
end.
