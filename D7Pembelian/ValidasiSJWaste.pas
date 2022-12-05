unit ValidasiSJWaste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Oracle, wwDialog, wwrcdvw, Wwdatsrc, OracleData, wwdblook,
  Wwdbdlg, wwcheckbox, wwSpeedButton, wwDBNavigator, wwclearpanel,
  ExtCtrls, wwdbedit, StdCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, wwdbdatetimepicker, QuickRpt, QRCtrls, ComCtrls,
  Mask, Wwdbspin, Buttons, jpeg;

type
  TValidasiSJWasteFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    QTransaksi: TOracleDataSet;
    dsQTransaksi: TwwDataSource;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    cbTanggal: TCheckBox;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid2: TwwDBGrid;
    QTransaksiTANGGAL: TDateTimeField;
    QTransaksiNO_NOTA: TStringField;
    QTransaksiKETERANGAN: TStringField;
    QTransaksiISPOST: TStringField;
    QTransaksiSTATUS: TStringField;
    QTransaksiTGL_INSERT: TDateTimeField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailQTY_STOK: TFloatField;
    QDetailQTY: TFloatField;
    QDetailSTATUS: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel9: TPanel;
    Label7: TLabel;
    DBText4: TDBText;
    DBText3: TDBText;
    Label6: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwCheckBox1: TwwCheckBox;
    RadioGroup1: TRadioGroup;
    QJnsTransaksi: TOracleDataSet;
    QJnsTransaksiKD_TRANSAKSI: TStringField;
    QJnsTransaksiNAMA_TRANSAKSI: TStringField;
    QJnsTransaksiTTD1: TStringField;
    QJnsTransaksiTTD2: TStringField;
    QJnsTransaksiTTD3: TStringField;
    QJnsTransaksiTTD4: TStringField;
    QJnsTransaksiBAG1: TStringField;
    QJnsTransaksiBAG2: TStringField;
    QJnsTransaksiBAG3: TStringField;
    QJnsTransaksiBAG4: TStringField;
    QJnsTransaksiJAB1: TStringField;
    QJnsTransaksiJAB2: TStringField;
    QJnsTransaksiJAB3: TStringField;
    QJnsTransaksiJAB4: TStringField;
    QJnsTransaksiDISTRIBUSI: TStringField;
    dsQJnsTransaksi: TwwDataSource;
    DBText5: TDBText;
    rvdTTD: TwwRecordViewDialog;
    DBText6: TDBText;
    Label12: TLabel;
    QTransaksiKD_TRANSAKSI: TStringField;
    BitBtn2: TBitBtn;
    QDetailSATUAN: TStringField;
    QBrowse: TOracleDataSet;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseTANGGAL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSAT1: TStringField;
    QBrowseID_BAG: TStringField;
    QBrowseBAGIAN: TStringField;
    QBrowseID_SUB_BAG: TStringField;
    QBrowseSUB_BAGIAN: TStringField;
    QBrowseQTY: TFloatField;
    QBrowseSTATUS: TStringField;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLTitle: TQRLabel;
    QTransaksiNO_REFF: TStringField;
    wwDBEdit1: TwwDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    vRecord: TwwDBSpinEdit;
    Button1: TButton;
    cbPreview: TCheckBox;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    dbcField: TwwDBComboBox;
    vOperand: TLabel;
    QDetailNO_REG_BON: TIntegerField;
    QDetailQTY_BON: TFloatField;
    QBrowseNO_REG_PEMAKAIAN: TIntegerField;
    QTransaksiNO_REG_PEMAKAIAN: TIntegerField;
    QTransaksiNO_REG_BON: TIntegerField;
    QDetailQTY_VALID: TFloatField;
    QDetailKD_SUB_LOKASI: TStringField;
    QDetailKD_LOKASI: TStringField;
    QDetailLOKASI: TStringField;
    QLookLokasi: TOracleDataSet;
    QLookLokasiSUB_LOKASI: TStringField;
    QLookLokasiKD_JNS_ITEM: TStringField;
    QLookLokasiKD_SUB_LOKASI: TStringField;
    QLookLokasiKD_LOKASI: TStringField;
    LookLokasi: TwwDBLookupComboDlg;
    BtnFormulasi: TBitBtn;
    QAmbilNota: TOracleQuery;
    QDetailNO_REG_PEMAKAIAN: TIntegerField;
    QDetailHARGA: TFloatField;
    QDetailKD_JNS_ITEM: TStringField;
    QDetailMESIN: TStringField;
    QJnsKoreksi: TOracleDataSet;
    QJnsKoreksiJNS_KOREKSI: TStringField;
    QTransaksiJNS_KOREKSI: TStringField;
    LookKoreksi: TwwDBLookupCombo;
    LK1: TLabel;
    LK2: TLabel;
    QLookMesin: TOracleDataSet;
    QLookMesinKODE: TStringField;
    QLookMesinMESIN: TStringField;
    QLookMesinJENIS: TStringField;
    LookMesin: TwwDBLookupComboDlg;
    QDetailKD_MESIN: TStringField;
    QTransaksiOPR_INSERT: TStringField;
    QDetailOPR_INSERT: TStringField;
    QDetailTANGGAL: TDateTimeField;
    QJnsTransaksiDOC_ISO: TStringField;
    QDetailKD_PROYEK: TStringField;
    LookProyek: TwwDBLookupComboDlg;
    QTransaksiISPUSAT: TStringField;
    QUpdateNota: TOracleQuery;
    wwDBGrid3: TwwDBGrid;
    QDetailKK: TStringField;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel29: TQRLabel;
    QRBand4: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand5: TQRBand;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRSysData5: TQRSysData;
    QRDBText51: TQRDBText;
    QRLabel38: TQRLabel;
    QRBand6: TQRBand;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRBand7: TQRBand;
    QRSysData6: TQRSysData;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRBand8: TQRBand;
    QRLabel39: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText66: TQRDBText;
    QDetailID_BAG: TStringField;
    QDetailID_SUB_BAG: TStringField;
    QBrowseNO_REFF: TStringField;
    DBMemo2: TDBMemo;
    LookSuplier: TwwDBLookupComboDlg;
    wwDBEdit2: TwwDBEdit;
    Label21: TLabel;
    QSuplier: TOracleDataSet;
    QSuplierKD_REKANAN: TStringField;
    QSuplierNAMA_REKANAN: TStringField;
    QSuplierALAMAT: TStringField;
    QSuplierKOTA: TStringField;
    QSuplierTELEPON: TStringField;
    QTransaksiKD_REKANAN: TStringField;
    QTransaksiREKANAN: TStringField;
    QLookItem: TOracleDataSet;
    QLookItemNAMA_ITEM: TStringField;
    QLookItemKD_ITEM: TStringField;
    QLookItemNO_PART: TStringField;
    QLookItemSAT1: TStringField;
    QLookItemKELOMPOK: TStringField;
    QLookItemSTOK: TFloatField;
    QLookItemKD_SUB_LOKASI: TStringField;
    QLookItemKD_JNS_ITEM: TStringField;
    QLookItemOPNAME: TStringField;
    LookItem: TwwDBLookupComboDlg;
    QTransaksiISPJK: TStringField;
    QAmbilKontrak: TOracleDataSet;
    QAmbilKontrakNO_NOTA: TStringField;
    QAmbilKontrakNO_KONTRAK: TStringField;
    Label1: TLabel;
    Label17: TLabel;
    QTransaksiMAKLON: TStringField;
    wwDBEdit3: TwwDBEdit;
    QSubTotal: TOracleDataSet;
    QSubTotalSUBTOTAL: TFloatField;
    QDetailNO_REFF: TStringField;
    LookLOT: TwwDBLookupComboDlg;
    QDetailNO_MESIN_TENUN: TStringField;
    RGKop: TRadioGroup;
    QuickRep2: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel28: TQRLabel;
    TitleBand2: TQRBand;
    QRLTitle2: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText67: TQRDBText;
    QRImage1: TQRImage;
    QRDBText68: TQRDBText;
    QRLAlamat: TQRLabel;
    QRLTelepon: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRSysData3: TQRSysData;
    SummaryBand2: TQRBand;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText21: TQRDBText;
    PageFooterBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText29: TQRDBText;
    QRDBText42: TQRDBText;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QuickRep4: TQuickRep;
    QRBand9: TQRBand;
    QRDBText23: TQRDBText;
    QRDBText69: TQRDBText;
    QRLabel45: TQRLabel;
    QRBand10: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr5: TQRExpr;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText74: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText75: TQRDBText;
    QRImage2: TQRImage;
    QRDBText76: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRBand11: TQRBand;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRBand12: TQRBand;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRSysData7: TQRSysData;
    QRBand13: TQRBand;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRBand14: TQRBand;
    QRSysData8: TQRSysData;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRBand15: TQRBand;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRExpr6: TQRExpr;
    QRShape1: TQRShape;
    QRGroup3: TQRGroup;
    QBrowseJNS_KOREKSI: TStringField;
    TabSheet3: TTabSheet;
    wwDBGrid4: TwwDBGrid;
    Panel10: TPanel;
    GroupBox2: TGroupBox;
    Panel11: TPanel;
    CheckBox1: TCheckBox;
    BitBtn3: TBitBtn;
    dsQRealisasi: TwwDataSource;
    QRealisasi: TOracleDataSet;
    QRealisasiNO_NOTA: TStringField;
    QRealisasiNO_KONTRAK: TStringField;
    QRealisasiKD_REKANAN: TStringField;
    QRealisasiREKANAN: TStringField;
    QRealisasiKD_ITEM: TStringField;
    QRealisasiNAMA_ITEM: TStringField;
    QRealisasiKETERANGAN: TStringField;
    QRealisasiQTY1: TFloatField;
    QRealisasiQTY2: TFloatField;
    QRealisasiQTY3: TFloatField;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    vTglAwal2: TwwDBDateTimePicker;
    vTglAkhir2: TwwDBDateTimePicker;
    QProcRealisasi: TOracleQuery;
    QRealisasiCQTY1: TFloatField;
    QBrowseKD_REKANAN: TStringField;
    QBrowseREKANAN: TStringField;
    Etahun: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure QTransaksiAfterPost(DataSet: TDataSet);
    procedure wwDBGrid2Enter(Sender: TObject);
    procedure QTransaksiNewRecord(DataSet: TDataSet);
    procedure QTransaksiBeforePost(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QTransaksiBeforeInsert(DataSet: TDataSet);
    procedure QTransaksiBeforeEdit(DataSet: TDataSet);
    procedure DBText1Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseBeforeOpen(DataSet: TDataSet);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QDetailBeforeInsert(DataSet: TDataSet);
    procedure QTransaksiAfterDelete(DataSet: TDataSet);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ColumnHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure QLookLokasiBeforeOpen(DataSet: TDataSet);
    procedure LookLokasiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookLokasiEnter(Sender: TObject);
    procedure BtnFormulasiClick(Sender: TObject);
    procedure LookKoreksiEnter(Sender: TObject);
    procedure LookMesinCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookMesinEnter(Sender: TObject);
    procedure LookMesinUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure wwCheckBox1Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure LookSuplierCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookSuplierEnter(Sender: TObject);
    procedure QLookItemBeforeOpen(DataSet: TDataSet);
    procedure LookItemEnter(Sender: TObject);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookLOTEnter(Sender: TObject);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure vTglAwal2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure QRealisasiAfterScroll(DataSet: TDataSet);
    procedure QRealisasiCalcFields(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure QRealisasiFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBGrid4TitleButtonClick(Sender: TObject;
      AFieldName: String);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
    vkd_jns_item, vkd_transaksi, vkd_transaksi_bon: String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
  end;

var
  ValidasiSJWasteFrm: TValidasiSJWasteFrm;

implementation

uses DM, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan, Sisdur,
  ValidasiBonNBB;

{$R *.dfm}

procedure TValidasiSJWasteFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  ValidasiSJWasteFrm:=Nil;
end;

procedure TValidasiSJWasteFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TValidasiSJWasteFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TValidasiSJWasteFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TValidasiSJWasteFrm.cbTanggalClick(Sender: TObject);
begin
  if cbTanggal.Checked then
  begin
    VTglAwal.Enabled:=cbTanggal.Checked;
    vTglAkhir.Enabled:=cbTanggal.Checked;
    VTglAwal.SetFocus;
  end
  else
    ECari.SetFocus;
end;

procedure TValidasiSJWasteFrm.QTransaksiAfterPost(DataSet: TDataSet);
begin
  wwDBGrid2.SetFocus;
  TabSheet1.TabVisible:=QTransaksiISPOST.AsString='1';
end;

procedure TValidasiSJWasteFrm.wwDBGrid2Enter(Sender: TObject);
begin
  if QTransaksi.State<>dsBrowse then
        try
          QTransaksi.Post;
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
            end;
        end;
  if QTransaksiISPOST.AsString='1' then
     wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect]
     else
     wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect];
end;

procedure TValidasiSJWasteFrm.QTransaksiNewRecord(DataSet: TDataSet);
begin
QTransaksiISPOST.AsString:='0';
  QTransaksiTANGGAL.AsDateTime:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  QTransaksiSTATUS.AsString:='CREATE';
  QTransaksiKD_TRANSAKSI.AsString:=QJnsTransaksiKD_TRANSAKSI.AsString;
  QTransaksiOPR_INSERT.AsString:=DMFrm.QUserNAMA_USER.AsString;
  QTransaksiTTD1.AsString:=QJnsTransaksiTTD1.AsString+'; '+QJnsTransaksiJAB1.AsString;
  QTransaksiTTD2.AsString:=QJnsTransaksiTTD2.AsString+'; '+QJnsTransaksiJAB2.AsString;
  QTransaksiTTD3.AsString:=QJnsTransaksiTTD3.AsString+'; '+QJnsTransaksiJAB3.AsString;
  QTransaksiTTD4.AsString:=QJnsTransaksiTTD4.AsString+'; '+QJnsTransaksiJAB4.AsString;
  wwDBEdit2.SetFocus;
  //wwDBEdit1.SetFocus;
end;

procedure TValidasiSJWasteFrm.QTransaksiBeforePost(DataSet: TDataSet);
begin
  if QTransaksiJNS_KOREKSI.AsString='' then
  begin
      ShowMessage('Jenis Koreksi Harus Diisi');
      Abort;
  end;

  if QTransaksiNO_NOTA.AsString<>'' then
     if (FormatDateTime('YYMM',QTransaksiTANGGAL.AsDateTime)<>copy(QTransaksiNO_NOTA.AsString,5,4)) then
       QTransaksiNO_NOTA.AsString:='';
  if QTransaksiISPOST.AsString='1' then
  begin
      QTransaksiSTATUS.AsString:='OPEN';
      if (QTransaksiNO_NOTA.AsString='') or (FormatDateTime('YYMM',QTransaksiTANGGAL.AsDateTime)<>copy(QTransaksiNO_NOTA.AsString,5,4)) then
      begin
          DMFrm.FNo_Nota_PMTX02.Close;
          DMFrm.FNo_Nota_PMTX02.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
          DMFrm.FNo_Nota_PMTX02.SetVariable('pispjk',QTransaksiISPJK.AsString);
          DMFrm.FNo_Nota_PMTX02.SetVariable('pispusat',QTransaksiISPUSAT.AsString);
          DMFrm.FNo_Nota_PMTX02.SetVariable('ptgl',QTransaksiTANGGAL.AsDateTime);
          DMFrm.FNo_Nota_PMTX02.Open;
          QTransaksiNO_NOTA.AsString:=DMFrm.FNo_Nota_PMTX02NO_NOTA.AsString;
      end;
  end;
end;

procedure TValidasiSJWasteFrm.TabSheet2Show(Sender: TObject);
begin
    if (copy(vkd_transaksi_bon,1,1)='K') then
    begin
      Label13.Visible:=False;
      wwDBEdit1.Visible:=False;
      BtnFormulasi.Visible:=False;

      LookKoreksi.Visible:=True;
      LK1.Visible:=True;
      LK2.Visible:=True;
    end
    else
    begin

      if copy(vkd_transaksi_bon,1,1)='R' then
      begin
        Label13.Visible:=True;
        wwDBEdit1.Visible:=True;
        BtnFormulasi.Visible:=True;

        LookKoreksi.Visible:=True;
        LK1.Visible:=True;
        LK2.Visible:=True;
      end
      else
      begin
        if (copy(vkd_transaksi_bon,1,1)='7') then
        begin
          Label13.Visible:=True;
          wwDBEdit1.Visible:=True;
          BtnFormulasi.Visible:=True;

          LookKoreksi.Visible:=True;
          LK1.Visible:=True;
          LK2.Visible:=True;
        end
        else
        begin
          Label13.Visible:=True;
          wwDBEdit1.Visible:=True;
          BtnFormulasi.Visible:=True;

          LookKoreksi.Visible:=False;
          LK1.Visible:=False;
          LK2.Visible:=False;
        end;
       end;

    end;

    wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
    QTransaksi.Close;
    QTransaksi.SetVariable('no_reg_pemakaian',QBrowseNO_REG_PEMAKAIAN.AsInteger);
    QTransaksi.Open;
    QDetail.Open;
    wwDBNavigator1.Enabled:=vhak_input;
end;

procedure TValidasiSJWasteFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailOPR_INSERT.AsString:=DMFrm.QUserNAMA_USER.AsString;
  QDetailID_BAG.AsString:='K01';
  QDetailID_SUB_BAG.AsString:='K03';
  //QDetailTANGGAL.AsDateTime:=QTransaksiTANGGAL.AsDateTime;
end;

procedure TValidasiSJWasteFrm.QTransaksiBeforeInsert(DataSet: TDataSet);
begin
  if QTransaksiISPOST.AsString='0' then
  begin
      ShowMessage('Data belum di-POSTING !');
      Abort;
  end;
  if not vhak_input then
  begin
      ShowMessage('Maaf, Anda tidak berhak merubah data !');
      Abort;
  end;
end;

procedure TValidasiSJWasteFrm.QTransaksiBeforeEdit(DataSet: TDataSet);
begin
  if not vhak_input then
  begin
      ShowMessage('Maaf, Anda tidak berhak merubah data !');
      Abort;
  end;
  if QTransaksiISPOST.AsString='1' then
  begin
      ShowMessage('Maaf, data sudah di-POSTING, tidak bisa diubah !');
      Abort;
  end;
end;

procedure TValidasiSJWasteFrm.DBText1Click(Sender: TObject);
begin
  InputBox('Copy Nomer','Klik Kanan --> Copy : ',QTransaksiNO_NOTA.AsString);
end;

procedure TValidasiSJWasteFrm.DBText2Click(Sender: TObject);
var
  vno_reg_cari : String;
begin
  vno_reg_cari:=InputBox('Cari/ Copy Nomer','Klik Kanan --> Copy : ',QTransaksiNO_REG_BON.AsString);
  if (vno_reg_cari<>QTransaksiNO_REG_BON.AsString) then
  begin
    QTransaksi.Close;
    QTransaksi.SetVariable('no_reg_bon',StrToInt(vno_reg_cari));
    QTransaksi.Open;
//    QDetail.Open;
  end;
end;

procedure TValidasiSJWasteFrm.BitBtn2Click(Sender: TObject);
begin
  rvdTTD.Execute;
end;

procedure TValidasiSJWasteFrm.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=DMFrm.vclGridRead;
      AFont.Color:=DMFrm.vclGridReadFont;
    end
    else
    begin
      ABrush.Color:=DMFrm.vclGridEdit;
      AFont.Color:=DMFrm.vclGridEditFont;
    end;
end;

procedure TValidasiSJWasteFrm.wwDBGrid1DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;
end;

procedure TValidasiSJWasteFrm.ECariChange(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
      QBrowse.SearchRecord(wwDBGrid1.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
end;

procedure TValidasiSJWasteFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;
end;

procedure TValidasiSJWasteFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;

  x : Integer;
  t1 : REAL;
begin
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('

  else
    vfilter:=' where (';
     QBrowse.Open;
  if (QBrowse.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
         else
           vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
    vfilter:=vfilter+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by no_nota';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

  t1:=0;
  x:=0;
  while not QBrowse.Eof do
  begin
    inc(x);
    t1:=t1+QBrowseQTY.AsFloat;
    QBrowse.Next;
  end;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#,##0.000;(#,##0.000);-',t1);

end;

procedure TValidasiSJWasteFrm.FormShow(Sender: TObject);
begin
  VTglAwal.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  VTglAwal2.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  Etahun.Text:='2022';
  QJnsTransaksi.Open;
end;

procedure TValidasiSJWasteFrm.QBrowseBeforeOpen(DataSet: TDataSet);
begin
  QBrowse.SetVariable('kd_transaksi',QJnsTransaksiKD_TRANSAKSI.AsString);
end;

procedure TValidasiSJWasteFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle.Caption:=UpperCase(QJnsTransaksiNAMA_TRANSAKSI.AsString);
end;

procedure TValidasiSJWasteFrm.BitBtn5Click(Sender: TObject);
begin
  DMFrm.QDateTime.Close;
  DMFrm.QDateTime.Open;
  case PageControl1.ActivePageIndex of
  0 : begin
        QBrowse.DisableControls;
        QuickRep1.Preview;
        QBrowse.EnableControls;
      end;
  1 : begin
        if vkd_jns_item = 'C' then
        begin
            DMFrm.QLookSubBagian.Open;
            QuickRep3.Page.Units:=Inches;
            case RadioGroup1.ItemIndex of
                0 : begin
                    QuickRep3.Page.Length:=11.00;
                    QuickRep3.Page.Width:=8.27;
                  end;
                1 : begin
                    QuickRep3.Page.Length:=5.50;
                    QuickRep3.Page.Width:=8.27;
                  end;
                end;
            if cbPreview.Checked then
              QuickRep3.Preview
            else
              QuickRep3.Print;
        end
        else
        begin
            DMFrm.QLookSubBagian.Open;
            QuickRep2.Page.Units:=Inches;
            case RadioGroup1.ItemIndex of
                0 : begin
                    QuickRep2.Page.Length:=11.00;
                    QuickRep2.Page.Width:=8.27;
                    QuickRep4.Page.Length:=11.00;
                    QuickRep4.Page.Width:=8.27;
                  end;
                1 : begin
                    QuickRep2.Page.Length:=5.50;
                    QuickRep2.Page.Width:=8.27;
                    QuickRep4.Page.Length:=5.50;
                    QuickRep4.Page.Width:=8.27;
                  end;
                end;
            if cbPreview.Checked then
            begin
               case RGKop.ItemIndex of
                    0 : begin
                        QuickRep4.Preview
                    end;
                    1 : begin
                        QuickRep2.Preview
                    end;
               end;
            end
            else
            begin
               case RGKop.ItemIndex of
                    0 : begin
                        QuickRep4.Preview
                    end;
                    1 : begin
                        QuickRep2.Preview
                    end;
               end;
            end;
        end;
      end;
  end;
end;

procedure TValidasiSJWasteFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  //QBrowse.Open;
end;

procedure TValidasiSJWasteFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TValidasiSJWasteFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
    if QTransaksiJNS_KOREKSI.AsString<>'' then
       QRLTitle2.Caption:=UpperCase(QTransaksiJNS_KOREKSI.AsString)
    else
       QRLTitle2.Caption:=UpperCase(QJnsTransaksiNAMA_TRANSAKSI.AsString);
       QRLAlamat.Caption:=DMFrm.QPerusahaanALAMAT.AsString+' '+DMFrm.QPerusahaanKOTA.AsString;
       QRLTelepon.Caption:='Telp '+DMFrm.QPerusahaanTELEPON.AsString+'; fax '+
       DMFrm.QPerusahaanFAX.AsString;
  end
    else
    QRLTitle2.Caption:='DRAFT';
end;

procedure TValidasiSJWasteFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=TabSheet1.TabVisible;
  if not CanClose then
    if MessageDlg('Data belum di Simpan/ Posting !'+#13+
       'Anda tetap mau menutup Form ?'+#13+
       'Jika pilih [YES], maka Form akan ditutup dan data tidak akan tersimpan.',mtWarning,[mbYes,mbNo],0)=mrYes then
       begin
         QTransaksi.First;
         while not QTransaksi.Eof do
         begin
           if QTransaksiISPOST.AsString='0' then
             QTransaksi.Delete
           else
             QTransaksi.Next;
         end;
         CanClose:=True;
       end;

end;

procedure TValidasiSJWasteFrm.QDetailBeforeInsert(DataSet: TDataSet);
begin
  if not vhak_input then
  begin
      ShowMessage('Maaf, Anda tidak berhak merubah data !');
      Abort;
  end;
end;

procedure TValidasiSJWasteFrm.QTransaksiAfterDelete(DataSet: TDataSet);
begin
  if QTransaksi.IsEmpty then
    TabSheet1.TabVisible:=True;
end;

procedure TValidasiSJWasteFrm.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vrecord_ke);
  DetailBand2.ForceNewPage:=(vrecord_ke>Round(vRecord.Value)-1);
 // QRLSubBagian.Caption:=DMFrm.QLookSubBagian.Lookup('KODE',QDetailID_BAG.AsString+QDetailID_SUB_BAG.AsString,'SUB_BAGIAN');
end;

procedure TValidasiSJWasteFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=Trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TValidasiSJWasteFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TValidasiSJWasteFrm.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0 : vRecord.Value:=40;
  1 : vRecord.Value:=20;
  end;
end;

procedure TValidasiSJWasteFrm.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TValidasiSJWasteFrm.wwDBGrid2DblClick(Sender: TObject);
var
  vnama_barang_org : String;
  vketerangan_org : String;
  vpos : Integer;
begin
  if QDetailKETERANGAN.AsString<>'' then
  begin
    vpos:=Pos('**',QDetailKETERANGAN.AsString);
    if vpos>0 then
    begin
       vnama_barang_org:=copy(QDetailKETERANGAN.AsString,1,vpos-1);
       vketerangan_org:=copy(QDetailKETERANGAN.AsString,vpos+3,255);
    end
       else
       begin
         vnama_barang_org:=QDetailKETERANGAN.AsString;
         vketerangan_org:='';
       end;

      KeteranganFrm.Memo1.Text:=vketerangan_org;
      KeteranganFrm.ShowModal;
      if KeteranganFrm.ModalResult=mrOk then
      begin
          if QDetail.State<>dsBrowse then
            QDetailKETERANGAN.AsString:=vnama_barang_org+'** '+KeteranganFrm.Memo1.Text
            else
            begin
                QDetail.Edit;
                QDetailKETERANGAN.AsString:=vnama_barang_org+'** '+KeteranganFrm.Memo1.Text
            end;
      end;
  end
  else
    ShowMessage('Anda bisa menambahkan Keterangan/ Spesifikasi'+#13+'jika sudah memilih barang/ item !');

end;

procedure TValidasiSJWasteFrm.Button1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(Nil);
end;

procedure TValidasiSJWasteFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  1 : wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TValidasiSJWasteFrm.BtnExportClick(Sender: TObject);
begin
 {=========BROWSE=================}
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
     wwDBGrid1.ExportOptions.TitleName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid1.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');

 {=========REALISASI=================}

  if QRealisasi.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
     wwDBGrid4.ExportOptions.TitleName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid4.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');

end;

procedure TValidasiSJWasteFrm.DBText5Click(Sender: TObject);
var
  DC : HDC;
  ABitmap:TBitmap;
begin
  DC := GetDC (GetTopParentHandle);
  ABitmap:=TBitmap.Create;
  try
    ABitmap.Width  := Width-9; //GetDeviceCaps (DC, HORZRES);
    ABitmap.Height := Height-30; //GetDeviceCaps (DC, VERTRES);
    BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width,
           ABitmap.Height,DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC (GetTopParentHandle, DC);
  end;
  DMFrm.SavePictureDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TValidasiSJWasteFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TValidasiSJWasteFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TValidasiSJWasteFrm.Label3Click(Sender: TObject);
begin
  DMFrm.QSisdur.Close;
  DMFrm.QSisdur.SetVariable('kd_transaksi',QJnsTransaksiKD_TRANSAKSI.AsString);
  DMFrm.QSisdur.Open;
  SisdurFrm:=TSisdurFrm.Create(Self);
  SisdurFrm.vread_only:=True;
  SisdurFrm.ShowModal;
  SisdurFrm.Free;
end;

procedure TValidasiSJWasteFrm.QLookLokasiBeforeOpen(DataSet: TDataSet);
begin
  QLookLokasi.SetVariable('kd_jns_item',QDetailKD_JNS_ITEM.AsString);
end;

procedure TValidasiSJWasteFrm.LookLokasiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKD_LOKASI.AsString:=QLookLokasiKD_LOKASI.AsString;
    QDetailLOKASI.AsString:=QLookLokasiKD_SUB_LOKASI.AsString;
  end;
end;

procedure TValidasiSJWasteFrm.LookLokasiEnter(Sender: TObject);
begin
  QLookLokasi.Close;
  QLookLokasi.Open;
end;

procedure TValidasiSJWasteFrm.BtnFormulasiClick(Sender: TObject);
begin
  if (QTransaksiNO_REFF.AsString='')  then
    ShowMessage('No. Bukti Bon harus diisi !')
    else
    begin
      if copy(QTransaksiNO_REFF.AsString,1,3)=vkd_transaksi_bon then
      begin
        if (QTransaksiISPOST.AsString='0') then
        begin
          if QTransaksi.State<>dsBrowse then
          begin
            try

              QAmbilKontrak.Close;
              QAmbilKontrak.SetVariable('pno_sj',QTransaksiNO_REFF.AsString);
              QAmbilKontrak.open;

              QTransaksiMAKLON.AsString:=QAmbilKontrakNO_KONTRAK.AsString;
              QTransaksiISPJK.AsString:=copy(wwDBEdit1.Text,10,1);
              QTransaksi.Post;
            except
                on E : Exception do
                begin
                  ShowMessage(E.Message);
                end;
            end;
          end;
          if QTransaksi.State=dsBrowse then
          begin
            try
              QAmbilNota.Close;
              QAmbilNota.SetVariable('no_reg_pemakaian',QTransaksiNO_REG_PEMAKAIAN.AsInteger);
              QAmbilNota.SetVariable('no_nota',QTransaksiNO_REFF.AsString);
              QAmbilNota.SetVariable('tanggal',QTransaksiTANGGAL.AsDateTime);
              QAmbilNota.Execute;
              QDetail.DisableControls;
              QDetail.Close;
              QDetail.Open;
              QDetail.EnableControls;
              QLookLokasiKD_SUB_LOKASI.AsString:='0001';

            except
                on E : Exception do
                begin
                  ShowMessage(E.Message);
                end;
            end;
          end;
        end
        else
          ShowMessage('Data sudah di-POSTING, tidak bisa diubah !');
    end
    else
       ShowMessage('Maaf, salah tempat !');
    end;

end;

procedure TValidasiSJWasteFrm.LookKoreksiEnter(Sender: TObject);
begin
  QJnsKoreksi.Open;
end;

procedure TValidasiSJWasteFrm.LookMesinCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
      if QLookMesinJENIS.AsString='MESIN TENUN' then
      begin
        QDetailNO_MESIN_TENUN.AsString:=QLookMesinKODE.AsString;
        QDetailKD_MESIN.AsString:='';
      end
        else
        begin
           QDetailKD_MESIN.AsString:=QLookMesinKODE.AsString;
           QDetailNO_MESIN_TENUN.AsString:='';
        end;
  end;
end;

procedure TValidasiSJWasteFrm.LookMesinEnter(Sender: TObject);
begin
  QLookMesin.Open;
end;

procedure TValidasiSJWasteFrm.LookMesinUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  QLookMesin.Close;
  QLookMesin.Open;

end;

procedure TValidasiSJWasteFrm.wwCheckBox1Click(Sender: TObject);
begin
{if (QDetailKD_SUB_LOKASI.AsString='') then
//or (QDetailLOKASI.AsString='')
begin
  QTransaksiISPOST.AsString:='0';
  ShowMessage('Lokasi Belum diPilih !');
  Abort;
end;
}
end;

procedure TValidasiSJWasteFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
    if QTransaksiJNS_KOREKSI.AsString<>'' then
       QRLabel20.Caption:=UpperCase(QTransaksiJNS_KOREKSI.AsString)
    else
       QRLabel20.Caption:=UpperCase(QJnsTransaksiNAMA_TRANSAKSI.AsString);
  end
    else
    QRLabel20.Caption:='DRAFT';
end;

procedure TValidasiSJWasteFrm.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TValidasiSJWasteFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vrecord_ke);
  DetailBand2.ForceNewPage:=(vrecord_ke>Round(vRecord.Value)-1);
  QRLabel38.Caption:=DMFrm.QLookSubBagian.Lookup('KODE',QDetailID_BAG.AsString+QDetailID_SUB_BAG.AsString,'SUB_BAGIAN');
    if QDetailKK.AsString = 'SPINING1M' then
  begin
    QRLabel41.Caption:= 'Spining 1,'
  end
  else if QDetailKK.AsString = 'SPINING2M' then
  begin
    QRLabel41.Caption:= 'Spining 2,'
  end
  else
  begin
    QRLabel41.Caption:= 'Spining 3,'
  end;
end;

procedure TValidasiSJWasteFrm.LookSuplierCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
var
  vkota : string;
begin
  if modified then
  begin
    DBMemo2.Lines.Clear;
    if (QSuplierKOTA.AsString<>'') and (UpperCase(QSuplierALAMAT.AsString)<>UpperCase(QSuplierKOTA.AsString)) then
        if QSuplierTELEPON.AsString<>'' then
           vkota:=UpperCase(QSuplierKOTA.AsString)+', '+QSuplierTELEPON.AsString
           else
           vkota:=UpperCase(QSuplierKOTA.AsString);
    DBMemo2.Lines.Insert(0,vkota);
    if (QSuplierALAMAT.AsString<>'') then
       DBMemo2.Lines.Insert(0,QSuplierALAMAT.AsString);
    DBMemo2.Lines.Insert(0,QSuplierNAMA_REKANAN.AsString);
    QTransaksiREKANAN.AsString:=DBMemo2.Text;
  end;

end;

procedure TValidasiSJWasteFrm.LookSuplierEnter(Sender: TObject);
begin
  QSuplier.Close;
  QSuplier.Open;
end;

procedure TValidasiSJWasteFrm.QLookItemBeforeOpen(DataSet: TDataSet);
var
  vdd,vmm,vyy : word;
  vtgl_awal : TDate;
begin
  DecodeDate(QTransaksiTANGGAL.AsDateTime,vyy,vmm,vdd);
  vtgl_awal:=EncodeDate(vyy,1,1);
  QLookItem.SetVariable('kd_jns_item',vkd_jns_item);
  QLookItem.SetVariable('TGL_AWAL',vtgl_awal);
  QLookItem.SetVariable('TGL_AKHIR',QTransaksiTANGGAL.AsDateTime);
  QLookItem.SetVariable('TAHUN',vyy);
end;

procedure TValidasiSJWasteFrm.LookItemEnter(Sender: TObject);
begin
  QLookItem.Close;
  QLookItem.Open;
end;

procedure TValidasiSJWasteFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//if modified then
//  begin
    QDetailKETERANGAN.AsString:=QLookItemNAMA_ITEM.AsString;
    QDetailQTY_STOK.AsFloat:=QLookItemSTOK.AsFloat;
    QDetailKD_LOKASI.AsString:='0A';
    QDetailKD_SUB_LOKASI.AsString:='0001';
//  end;
end;

procedure TValidasiSJWasteFrm.LookLOTEnter(Sender: TObject);
begin
  DMFrm.QNoLot.Close;
  DMFrm.QNoLot.Open;
end;

procedure TValidasiSJWasteFrm.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
    //if QTransaksiJNS_KOREKSI.AsString<>'' then
    if QTransaksiKD_TRANSAKSI.AsString<>'SJ2' then
       QRLabel46.Caption:=UpperCase(QTransaksiJNS_KOREKSI.AsString)
    else
       QRLabel46.Caption:=UpperCase(QJnsTransaksiNAMA_TRANSAKSI.AsString);
       QRLabel53.Caption:=DMFrm.QPerusahaanALAMAT.AsString+' '+DMFrm.QPerusahaanKOTA.AsString;
       QRLabel54.Caption:='Telp '+DMFrm.QPerusahaanTELEPON.AsString+'; fax '+
       DMFrm.QPerusahaanFAX.AsString;
  end
    else
    QRLTitle2.Caption:='DRAFT';
end;

procedure TValidasiSJWasteFrm.vTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=Trunc(EndOfTheMonth(VTglAwal2.Date));
end;

procedure TValidasiSJWasteFrm.vTglAkhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TValidasiSJWasteFrm.BitBtn3Click(Sender: TObject);
var
  x : Integer;
  t1, t2, t3 : REAL;
begin
  QRealisasi.Close;
  QProcRealisasi.SetVariable('ptgl_awal', vTglAwal2.Date);
  QProcRealisasi.SetVariable('ptgl_akhir', vTglAwal2.Date);
  QProcRealisasi.SetVariable('pthn', Etahun.Text);
  QProcRealisasi.Execute;

  if QRealisasi.Active then
     vorder:=' order by '+wwDBGrid4.Columns[0].FieldName
  else
     vorder:=' order by no_nota';

  QRealisasi.DisableControls;
  QRealisasi.Close;
  QRealisasi.SetVariable('myparam',vorder);
  QRealisasi.Open;
  QRealisasi.EnableControls;

  t1:=0;
  t2:=0;
  t3:=0;

  x:=0;
  while not QRealisasi.Eof do
  begin
    inc(x);
    t1:=t1+QRealisasiQTY1.AsFloat;
    t2:=t2+QRealisasiQTY2.AsFloat;
    t3:=t3+QRealisasiQTY3.AsFloat;
    QRealisasi.Next;
  end;
  wwDBGrid4.ColumnByName('QTY1').FooterValue:=FormatFloat('#,##0.000;(#,##0.000);-',t1);
  wwDBGrid4.ColumnByName('QTY2').FooterValue:=FormatFloat('#,##0.000;(#,##0.000);-',t2);
  wwDBGrid4.ColumnByName('QTY3').FooterValue:=FormatFloat('#,##0.000;(#,##0.000);-',t3);
  wwDBGrid4.ColumnByName('CQTY1').FooterValue:=FormatFloat('#,##0.000;(#,##0.000);-',t1-(t2+t3));

end;

procedure TValidasiSJWasteFrm.QRealisasiAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TValidasiSJWasteFrm.QRealisasiCalcFields(DataSet: TDataSet);
begin
  QRealisasiCQTY1.AsFloat:=QRealisasiQTY1.AsFloat-(QRealisasiQTY2.AsFloat+QRealisasiQTY3.AsFloat);
end;

procedure TValidasiSJWasteFrm.CheckBox1Click(Sender: TObject);
begin
  QRealisasi.Filtered:=CheckBox1.Checked;
end;

procedure TValidasiSJWasteFrm.QRealisasiFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
      Accept:=(QRealisasiQTY3.AsFloat<>0) or ((QRealisasiQTY1.AsFloat)-(QRealisasiQTY2.AsFloat+QRealisasiQTY3.AsFloat)<>0);
end;

procedure TValidasiSJWasteFrm.wwDBGrid4TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

end.
