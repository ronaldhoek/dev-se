﻿unit uConstants;

interface

uses
  Winapi.Windows;

const
  //Runtime options
                     // 2 = COINIT_APARTMENTTHREADED
  COM_MODE = 0;      // 0 = OLE calls objects on any thread. COINIT_MULTITHREADED;

  //envoirements
  TempFolder = '\Temp\';
  HKEY_INSTALL = HKEY_LOCAL_MACHINE;
  HKEY_USER_WORK = HKEY_CURRENT_USER;
  PlugInImagesFolder = 'PlugInsEx\';
  OldPlugInImagesFolder = 'PlugIns\';
  ThemesDirectory = 'Themes\';
  CommonCacheDirectory = '\Cache\';
  BackUpFolder: string = '\DBBackUp\';
  StylesFolder: string = 'Styles\';
  ActionsFolder: string = 'Actions\';
  ImagesFolder: string = 'Images\';
  FaceCacheDirectory: string = '\CVCache\Face\';
  FaceTrainCacheDirectory: string = '\CVCache\FaceTrain\';
  TmpDirectory: string = '\Temp\';
  FolderCacheDirectory: string = '\FolderCache\';
  UpdaterDirectory: string = '\Updater\';
  ShareAlbumCacheDirectory: string = '\Share\Albums';
  CascadesDirectory: string = 'Cascades';
  DBRestoreFolder: string = '\DB\';
  PHOTO_DB_APPDATA_DIRECTORY = 'Photo DataBase';
  RegRoot: string = 'Software\Photo DataBase\';
  cDatabasesSubKey = 'DBS';
  cUserData = 'UserData\';
  cMediaAssociationsData = 'MediaAssociations';
  cMediaPlayerDefaultId = ':internal';
  TempFolderMask = '|NDX|MB|DB|NET|';
  DelayReadFileOperation = 200;
  DelayExecuteSQLOperation = 200;
  LanguageFileMask = 'Language';
  SetupDataName = 'SETUP_DATA';
  DefaultThemeName = 'Carbon.vsf';
  StyleResourceSection = 'VCLSTYLE';
  DB_ID = '{E1446065-CB87-440D-9315-6FA356F921B5}';
  DB_ID_CLOSING = '{D4640FE7-EFF4-4D1F-A9D7-5FD1E2C92B3C}';

  //Bridge
  BridgeName = 'PhotoDBBridge';
  BridgeClassName = 'PhotoDBAutoplayHandler';
  BringeComSlass = BridgeName + '.' + BridgeClassName;

  //Information
  MajorVersion = 3;
  MinorVersion = 1;
  PhotoDBFileName = 'PhotoDB.exe';
  ProductName = 'Photo DataBase 4.6';
  StartMenuProgramsPath = 'Photo DB v4.6';
  ProductMajorVersionVersion = '4.6';
  ProgramShortCutFile = ProductName+'.lnk';
  HelpShortCutFile = 'Help.lnk';
  WindowsMenuTime = 1000;
  ProgramMail = 'photodb@illusdolphin.net';
  CopyRightString = 'Studio "Illusion Dolphin" � 2002-2014';
  ProgramInstallSize = 48676; //in Kb

  SITE_ACTION_PERSONS = 'persons';
  SITE_ACTION_STYLES = 'styles';

  SiteLocation = 'http://photodb.illusdolphin.net';
  DonateURL = SiteLocation + '/{LNG}/donate';
  UnInstallNotifyURL = SiteLocation + '/{LNG}/uninstall';
  UpdateNotifyURL = SiteLocation + '/{LNG}/update';
  HomePageURL = SiteLocation + '/{LNG}';
  BuyPageURL = SiteLocation + '/{LNG}/buy';
  FreeActivationURL = SiteLocation + '/FreeActivationHandler';
  ActionHelpPageURL = SiteLocation + '/{LNG}/?action=';
  GeoLocationJSON = SiteLocation + '/iplocation.ashx?lng={LNG}';

  DefaultImportPattern = 'YYYY\MMM\YY.MM.DD = DDD, D mmmm, YYYY (LABEL)';
  DefaultImportPatternList =
    DefaultImportPattern + #13 +
    'YYYY\YY.MM.DD = DDD, D mmmm, YYYY (LABEL)' + #13 +
    'YYYY\YY.MM.DD (LABEL)' + #13 +
    'YYYY.MM.DD (LABEL)';

  Animation3DDelay = 100;
  MapImageWidth = 200;
  MapImageHeight = 200;
  cShadowSize = 4;

  cMaxShareFilesLimit = 100;
  cMaxShareFileSize = 100 * 1024 * 1024;

  ReleaseNumber = 14;

const
  RetryTryCountOnWrite = 10;
  RetryTryDelayOnWrite = 100;
  CurrentDBSettingVersion = 1;
  ListViewMinThumbnailSize = 85;
  ListViewMaxThumbnailSize = 550;

  cMinPreviewWidth = 100;
  cMinListViewWidth = 450;

  cMinEXIFYear = 1900;

const
  DB_VER_1_8 = 1;
  DB_VER_1_9 = 2;
  DB_VER_2_0 = 3;
  DB_VER_2_1 = 4;
  DB_VER_2_2 = 5;
  DB_VER_2_3 = 6;
  DB_VER_4_0 = 6; //the same, no DB structure changes

  DB_VER_CURRENT = DB_VER_4_0;

const
  DB_IC_SHELL          = 0;
  DB_IC_SLIDE_SHOW     = 1;
  DB_IC_REFRESH_THUM   = 2;
  DB_IC_RATING_STAR    = 3;
  DB_IC_DELETE_INFO    = 4;
  DB_IC_DELETE_FILE    = 5;
  DB_IC_COPY_ITEM      = 6;
  DB_IC_PROPERTIES     = 7;
  DB_IC_PRIVATE        = 8;
  DB_IC_COMMON         = 9;
  DB_IC_SEARCH         = 10;
  DB_IC_EXIT           = 11;
  DB_IC_FAVORITE       = 12;
  DB_IC_DESKTOP        = 13;
  DB_IC_RELOAD         = 14;
  DB_IC_NOTES          = 15;
  DB_IC_NOTEPAD        = 16;
  DB_IC_RATING_1       = 17;
  DB_IC_RATING_2       = 18;
  DB_IC_RATING_3       = 19;
  DB_IC_RATING_4       = 20;
  DB_IC_RATING_5       = 21;
  DB_IC_NEXT           = 22;
  DB_IC_PREVIOUS       = 23;
  DB_IC_NEW            = 24;
  DB_IC_ROTATED_0      = 25;
  DB_IC_ROTATED_90     = 26;
  DB_IC_ROTATED_180    = 27;
  DB_IC_ROTATED_270    = 28;
  DB_IC_PLAY           = 29;
  DB_IC_PAUSE          = 30;
  DB_IC_COPY           = 31;
  DB_IC_PASTE          = 32;
  DB_IC_LOADFROMFILE   = 33;
  DB_IC_SAVETOFILE     = 34;
  DB_IC_PANEL          = 35;
  DB_IC_SELECTALL      = 36;
  DB_IC_OPTIONS        = 37;
  DB_IC_ADMINTOOLS     = 38;
  DB_IC_ADDTODB        = 39;
  DB_IC_HELP           = 40;
  DB_IC_RENAME         = 41;
  DB_IC_EXPLORER       = 42;
  DB_IC_SENDTO         = 44; //!!!
  DB_IC_SEND           = 43; //!!!
  DB_IC_NEW_SHELL      = 45;
  DB_IC_NEW_DIRECTORY  = 46;
  DB_IC_SHELL_PREVIOUS = 47;
  DB_IC_SHELL_NEXT     = 48;
  DB_IC_SHELL_UP       = 49;
  DB_IC_KEY            = 50;
  DB_IC_FOLDER         = 51;
  DB_IC_ADD_FOLDER     = 52;
  DB_IC_BOX            = 53;
  DB_IC_DIRECTORY      = 54;
  DB_IC_TH_FOLDER      = 55;
  DB_IC_CUT            = 56;
  DB_IC_NEWWINDOW      = 57;
  DB_IC_ADD_SINGLE_FILE= 58;
  DB_IC_MANY_FILES     = 59;
  DB_IC_MY_COMPUTER    = 60;
  DB_IC_EXPLORER_PANEL = 61;
  DB_IC_INFO_PANEL     = 62;
  DB_IC_SAVE_AS_TABLE  = 63;
  DB_IC_EDIT_DATE      = 64;
  DB_IC_GROUPS         = 65;
  DB_IC_WALLPAPER      = 66;
  DB_IC_NETWORK        = 67;
  DB_IC_WORKGROUP      = 68;
  DB_IC_COMPUTER       = 69;
  DB_IC_SHARE          = 70;
  DB_IC_ZOOMIN         = 71;
  DB_IC_ZOOMOUT        = 72;
  DB_IC_REALSIZE       = 73;
  DB_IC_BESTSIZE       = 74;
  DB_IC_E_MAIL         = 75;
  DB_IC_CRYPTIMAGE     = 76;
  DB_IC_DECRYPTIMAGE   = 77;
  DB_IC_PASSWORD       = 78;
  DB_IC_EXEFILE        = 79;
  DB_IC_SIMPLEFILE     = 80;
  DB_IC_CONVERT        = 81;
  DB_IC_RESIZE         = 82;
  DB_IC_REFRESH_ID     = 83;
  DB_IC_DUPLICATE      = 84;
  DB_IC_DEL_DUPLICAT   = 85;
  DB_IC_UPDATING       = 86;
  DB_IC_DO_SLIDE_SHOW  = 87;
  DB_IC_MY_DOCUMENTS   = 88;
  DB_IC_MY_PICTURES    = 89;
  DB_IC_DESKTOPLINK    = 90;
  DB_IC_IMEDITOR       = 91;
  DB_IC_OTHER_TOOLS    = 92;
  DB_IC_EXPORT_IMAGES  = 93;
  DB_IC_PRINTER        = 94;
  DB_IC_EXIF           = 95;
  DB_IC_GET_USB        = 96;
  DB_IC_USB            = 97;
  DB_IC_TEXT_FILE      = 98;
  DB_IC_DOWN           = 99;
  DB_IC_UP             = 100;
  DB_IC_CD_ROM         = 101;
  DB_IC_TREE           = 102;
  DB_IC_CANCEL_ACTION  = 103;
  DB_IC__DB            = 104;
  DB_IC__MDB           = 105;
  DB_IC_SORT           = 106;
  DB_IC_FILTER         = 107;
  DB_IC_CLOCK          = 108;
  DB_IC_ATYPE          = 109;
  DB_IC_MAIN           = 110;
  DB_IC_APPLY_ACTION   = 111;
  DB_IC_RELOADING      = 112;
  DB_IC_STENO          = 113;
  DB_IC_DESTENO        = 114;
  DB_IC_SPLIT          = 115;
  DB_IC_CD_EXPORT      = 116;
  DB_IC_CD_MAPPING     = 117;
  DB_IC_CD_IMAGE       = 118;
  DB_IC_ROTATE_MAGIC   = 119;
  DB_IC_PEOPLE         = 120;
  DB_IC_CAMERA         = 121;
  DB_IC_CROP           = 122;
  DB_IC_PICTURES_IMPORT= 123;
  DB_IC_BACKUP         = 124;
  DB_IC_MAP_MARKER     = 125;
  DB_IC_SHELF          = 126;
  DB_IC_PHOTO_SHARE    = 127;
  DB_IC_EDIT_PROFILE   = 128;
  DB_IC_PHOTO_DATABASE = 129;
  DB_IC_LINK           = 130;
  DB_IC_VIEW_COUNT     = 131;
  DB_IC_TRAIN          = 132;

const
    WM_DROPFILES = $0233;
    WM_COPYDATA = $004A;
    WM_COPYDATA_ID = 3232;

const
  Pwd_rusup = '���������������������������������';
  Pwd_rusdown = '���������������������������������';
  Pwd_englup = 'QWERTYUIOPASDFGHJKLZXCVBNM';
  Pwd_engldown = 'qwertyuiopasdfghjklzxcvbnm';
  Pwd_cifr = '0123456789';
  Pwd_spec = '!#$%&()=?@<>|{[]}/\*~+#;:.-_';
  Abs_engl: set of AnsiChar = ['a' .. 'z', 'A' .. 'Z'];
  Abs_rus: set of AnsiChar = ['�' .. '�', '�' .. '�'];
  Abs_cifr: set of AnsiChar = ['0' .. '9'];
  Abs_hex: set of AnsiChar = ['a' .. 'e', 'A' .. 'E', '0' .. '9'];
  Abs_englUp: set of AnsiChar = ['A' .. 'Z'];
  Abs_rusUp: set of AnsiChar = ['�' .. '�'];
  Abs_englDown: set of AnsiChar = ['a' .. 'z'];
  Abs_rusDown: set of AnsiChar = ['�' .. '�'];

  SHELL_FOLDERS_ROOT = 'Software\MicroSoft\Windows\CurrentVersion\Explorer';
  QUICK_LAUNCH_ROOT = 'Software\MicroSoft\Windows\CurrentVersion\GrpConv';

  Cifri: set of AnsiChar = ['0' .. '9'];

  Unusedchar: set of AnsiChar = ['''', '/', '|', '\', '<', '>', '"', '?', '*', ':'];
  Unusedchar_folders: set of AnsiChar = ['''', '/', '|', '<', '>', '"', '?', '*', ':'];
  Abs_alldb = ['0' .. '9', '�' .. '�', '�' .. '�', '�', '�', 'a' .. 'z', 'A' .. 'Z', '/', '|', '\', '<', '>', '''',
    '?', '*', ':'];

const
  Db_access_private = 1;
  Db_access_none = 0;
  Db_attr_norm = 0;
  Db_attr_missed = 1;
  Db_attr_duplicate = 2;
  Db_attr_deleted = 4;

const
  DB_IMAGE_ROTATE_UNKNOWN = -1;
  DB_IMAGE_ROTATE_0       = 0;
  DB_IMAGE_ROTATE_90      = 1;
  DB_IMAGE_ROTATE_180     = 2;
  DB_IMAGE_ROTATE_270     = 3;
  DB_IMAGE_ROTATE_EXIF    = 4;
  DB_IMAGE_ROTATE_NO_DB   = 8;
  DB_IMAGE_ROTATE_MASK    = 7;
  DB_IMAGE_ROTATE_FIXED   = 16; //do not update rotation from EXIF during DB update process

  Result_Invalid                    = -1;
  Result_Add                        =  0;
  Result_Add_All                    =  1;
  Result_Skip                       =  2;
  Result_Skip_All                   =  3;
  Result_Replace                    =  4;
  Result_Replace_All                =  5;
  Result_Replace_And_Del_Duplicates =  6;
  Result_Delete_File                =  7;

  DemoDays = 30;
  LimitDemoRecords = 10000;
  LimitDemoVideoSize = 1024 * 1024 * 1024; //1Gb

const
  SM_ID         = 0;
  SM_TITLE      = 1;
  SM_DATE_TIME  = 2;
  SM_RATING     = 3;
  SM_FILE_SIZE  = 4;
  SM_IMAGE_SIZE = 5;
  SM_COMPARING  = 6;
  SM_DUPLICATE  = 7;
  SM_VIEW_COUNT = 8;
//////////////////////////////////
///
///  Explorer
///
//////////////////////////////////

const
  EXPLORER_ITEM_FOLDER                 = 0;
  EXPLORER_ITEM_IMAGE                  = 1;
  EXPLORER_ITEM_FILE                   = 2;
  EXPLORER_ITEM_DRIVE                  = 3;
  EXPLORER_ITEM_MYCOMPUTER             = 4;
  EXPLORER_ITEM_NETWORK                = 5;
  EXPLORER_ITEM_WORKGROUP              = 6;
  EXPLORER_ITEM_COMPUTER               = 7;
  EXPLORER_ITEM_SHARE                  = 8;
  EXPLORER_ITEM_EXEFILE                = 9;
  EXPLORER_ITEM_OTHER                  = 10;
  EXPLORER_ITEM_SEARCH                 = 11;
  EXPLORER_ITEM_PERSON_LIST            = 12;
  EXPLORER_ITEM_PERSON                 = 13;
  EXPLORER_ITEM_GROUP_LIST             = 14;
  EXPLORER_ITEM_GROUP                  = 15;
  EXPLORER_ITEM_DEVICE                 = 16;
  EXPLORER_ITEM_DEVICE_STORAGE         = 17;
  EXPLORER_ITEM_DEVICE_DIRECTORY       = 18;
  EXPLORER_ITEM_DEVICE_IMAGE           = 19;
  EXPLORER_ITEM_DEVICE_VIDEO           = 20;
  EXPLORER_ITEM_DEVICE_FILE            = 21;
  EXPLORER_ITEM_SHELF                  = 22;
  EXPLORER_ITEM_CALENDAR               = 23;
  EXPLORER_ITEM_CALENDAR_YEAR          = 24;
  EXPLORER_ITEM_CALENDAR_MONTH         = 25;
  EXPLORER_ITEM_CALENDAR_DAY           = 26;
  EXPLORER_ITEM_COLLECTION             = 27;
  EXPLORER_ITEM_COLLECTION_DIRECTORY   = 28;
  EXPLORER_ITEM_COLLECTION_DELETED     = 29;
  EXPLORER_ITEM_COLLECTION_DUPLICATES  = 30;

//////////////////////////////////////////////////

  THREAD_TYPE_NONE           = -1;
  THREAD_TYPE_FOLDER         = 0;
  THREAD_TYPE_DISK           = THREAD_TYPE_FOLDER;
  THREAD_TYPE_MY_COMPUTER    = 2;
  THREAD_TYPE_NETWORK        = 3;
  THREAD_TYPE_WORKGROUP      = 4;
  THREAD_TYPE_COMPUTER       = 5;
  THREAD_TYPE_IMAGE          = 6;
  THREAD_TYPE_FILE           = 7;
  THREAD_TYPE_FOLDER_UPDATE  = 8;
  THREAD_TYPE_BIG_IMAGES     = 9;
  THREAD_TYPE_THREAD_PREVIEW = 10;
  THREAD_TYPE_SEARCH_FOLDER  = 11;
  THREAD_TYPE_SEARCH_DB      = 12;
  THREAD_TYPE_SEARCH_IMAGES  = 13;
  THREAD_TYPE_PERSONS        = 14;
  THREAD_TYPE_GROUPS         = 15;
  THREAD_TYPE_GROUP          = 16;
  THREAD_TYPE_PERSON         = 17;
  THREAD_TYPE_CAMERA         = 18;
  THREAD_TYPE_CAMERAITEM     = 19;
  THREAD_TYPE_SHELF          = 20;
  THREAD_TYPE_PATH_ITEM      = 21;

  THREAD_PREVIEW_MODE_IMAGE      = 1;
  THREAD_PREVIEW_MODE_BIG_IMAGE  = 2;
  THREAD_PREVIEW_MODE_DIRECTORY  = 3;
  THREAD_PREVIEW_MODE_EXIT       = 0;

  LV_THUMBS     = 0;
  LV_ICONS      = 1;
  LV_SMALLICONS = 2;
  LV_TITLES     = 3;
  LV_TILE       = 4;
  LV_GRID       = 5;

  TD_ICON_BLANK = 102;
  TD_ICON_WARNING = 81;
  TD_ICON_QUESTION = 99;
  TD_ICON_ERROR = TD_ICON_BLANK + 3;
  TD_ICON_ACCEPT_ICON = TD_ICON_BLANK + 4;
  TD_ICON_INFORMATION = TD_ICON_BLANK + 5;
  TD_ICON_PC = TD_ICON_BLANK + 7;
  TD_ICON_SCREEN = TD_ICON_BLANK + 8;
  TD_ICON_SETTINGS = TD_ICON_BLANK + 14;
  TD_ICON_IMAGE = TD_ICON_BLANK + 20;
  TD_ICON_DELETE = 89;
  TD_ICON_SEARCH = TD_ICON_BLANK + 75;
  TD_ICON_EDIT = 94;

  TD_BUTTON_OK = 1;
  TD_BUTTON_YES = 2;
  TD_BUTTON_NO = 4;
  TD_BUTTON_CANCEL = 8;
  TD_BUTTON_RETRY = 16;
  TD_BUTTON_CLOSE = 32;
  TD_BUTTON_YESNO = TD_BUTTON_YES+TD_BUTTON_NO;
  TD_BUTTON_YESNOCANCEL = TD_BUTTON_YES+TD_BUTTON_NO+TD_BUTTON_CANCEL;
  TD_BUTTON_OKCANCEL = TD_BUTTON_OK+TD_BUTTON_CANCEL;
  //TODO IGNORE_ABORT  TD_BUTTON_ABORT_RETRY_IGNORE = TD_BUTTON_RETRY
  TD_RESULT_OK = 1;
  TD_RESULT_CANCEL = 2;
  TD_RESULT_RETRY = 4;
  TD_RESULT_YES = 6;
  TD_RESULT_NO = 7;
  TD_RESULT_CLOSE = 8;

const
  SELECT_DB_OPTION_NONE = 0;
  SELECT_DB_OPTION_GET_DB = 1;
  SELECT_DB_OPTION_GET_DB_OR_EXISTS = 2;

const
  ACTION_ENCRYPT_IMAGES = 1;
  ACTION_DECRYPT_IMAGES = 2;

const
  DIRECTORY_OPTION_DATE_SINGLE      = 0;
  DIRECTORY_OPTION_DATE_WITH_UP     = 1;
  DIRECTORY_OPTION_DATE_WITH_DOWN   = 2;
  DIRECTORY_OPTION_DATE_EXCLUDE     = 3;

const
  EXIF_BASE_GROUPS = 'photodb_groups';
  EXIF_BASE_LINKS = 'photodb_links';
  EXIF_BASE_ACCESS = 'photodb_access';
  EXIF_BASE_INCLUDE = 'photodb_include';
  EXIF_BASE_PEOPLE = 'photodb_people';

const
  PSDTransparent = True;

const
  MIN_PACKET_TIME = 500;

const
  CUR_UPDOWN = 140;
  CUR_LEFTRIGHT = 141;
  CUR_TOPRIGHT = 142;
  CUR_RIGHTBOTTOM = 143;
  CUR_HAND = 144;
  CUR_CROP = 145;

const
  EXPLORER_SEARCH_FILES    = 0;
  EXPLORER_SEARCH_IMAGES   = 1;
  EXPLORER_SEARCH_DATABASE = 2;

const
  CLASS_DOMDocument: TGUID = '{88D96A05-F192-11D4-A65F-0040963251E5}';

const
  DefaultCascadeFileName = 'haarcascade_frontalface_alt.xml';

const
  cGroupsPath = 'Groups';
  cPersonsPath = 'Persons';
  cDevicesPath = 'Devices';
  cDBSearchPath = '::db://';
  cImagesSearchPath = '::images://';
  cFilesSearchPath = '::files://';
  cShelfPath = 'Shelf';
  cDatesPath = 'Date';
  cCollectionPath = 'Collection';
  cCollectionBrowsePath = 'Browse';
  cCollectionDeletedPath = 'Missed';
  cCollectionDuplicatesPath = 'Duplicates';

const
  ObjectTableName = 'Objects';
  ObjectMappingTableName = 'ObjectMapping';
  ImageTable = 'ImageTable';
  GroupsTableName = 'Groups';
  TableSettings = 'DBSettings';

const
  DBT_DeviceArrival        = $8000;
  DBT_DeviceRemoveComplete = $8004;
  DBTF_Media               = $0001;
  DBT_DevTyp_Volume        = $0002;
  DBT_DEVNODES_CHANGED     = $0007;

const
  cVideoFileExtensions = '.mov,.avi,.mkv,.mp4,.mpg,.mpe,.mpeg,.m2v,.wmv,.flv';

function IsRotatedImageProportions(Rotation: Integer): Boolean;

implementation

function IsRotatedImageProportions(Rotation: Integer): Boolean;
begin
  Result := (Rotation and DB_IMAGE_ROTATE_MASK) in [DB_IMAGE_ROTATE_90, DB_IMAGE_ROTATE_270];
end;

end.