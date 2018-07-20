require 'win-ffi/user32/typedef/hconv'
require 'win-ffi/user32/typedef/hddedata'
require 'win-ffi/user32/typedef/hsz'

require 'win-ffi/user32/enum/data_exchange/dde/transaction_type'
require 'win-ffi/user32/enum/data_exchange/dde/dde_management_library_error'
require 'win-ffi/user32/enum/data_exchange/dde/dde_name_service'
require 'win-ffi/user32/enum/data_exchange/dde/enable_callback'

require 'win-ffi/user32/struct/data_exchange/dde/conv_context'
require 'win-ffi/user32/struct/data_exchange/dde/conv_info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeabandontransaction
    # BOOL DdeAbandonTransaction( _In_  DWORD idInst, _In_ HCONV hConv, _In_ DWORD idTransaction )
    def self.DdeAbandonTransaction(idInst, hConv, idTransaction); end
    attach_function 'DdeAbandonTransaction', [:dword, :hconv, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeaccessdata
    # LPBYTE DdeAccessData(_In_ HDDEDATA hData, _Out_opt_ LPDWORD pcbDataSize )
    def self.DdeAccessData(hData, pcbDataSize); end
    attach_function 'DdeAccessData', [:hddedata, :pointer], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeadddata
    # HDDEDATA DdeAddData( _In_  HDDEDATA hData, _In_  LPBYTE pSrc, _In_  DWORD cb, _In_  DWORD cbOff )
    def self.DdeAddData(hData, pSrc, cb, cbOff); end
    attach_function 'DdeAddData', [:hddedata, :pointer, :dword, :dword], :pointer

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648742
    # HDDEDATA CALLBACK DdeCallback(
    #   _In_  UINT uType,
    #   _In_  UINT uFmt,
    #   _In_  HCONV hconv,
    #   _In_  HSZ hsz1,
    #   _In_  HSZ hsz2,
    #   _In_  HDDEDATA hdata,
    #   _In_  ULONG_PTR dwData1,
    #   _In_  ULONG_PTR dwData2 )
    DdeCallback = callback 'DdeCallback', [:uint, :uint, :hconv, :hsz, :hsz, :hddedata, :ulong_ptr, :ulong_ptr], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeclienttransaction
    # HDDEDATA DdeClientTransaction(
    #   _In_opt_   LPBYTE pData,
    #   _In_       DWORD cbData,
    #   _In_       HCONV hConv,
    #   _In_opt_   HSZ hszItem,
    #   _In_       UINT wFmt,
    #   _In_       UINT wType,
    #   _In_       DWORD dwTimeout,
    #   _Out_opt_  LPDWORD pdwResult )
    def self.DdeClientTransaction(pData, cbData, hConv, hszItem, wFmt, wType, dwTimeout, pdwResult); end
    attach_function 'DdeClientTransaction',
                    [:pointer, :dword, :hconv, :hsz, :uint, TransactionType, :dword, :pointer], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecmpstringhandles
    # int DdeCmpStringHandles(_In_ HSZ hsz1, _In_ HSZ hsz2 )
    def self.DdeCmpStringHandles(hsz1, hsz2); end
    attach_function 'DdeCmpStringHandles', [:hsz, :hsz], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeconnect
    # HCONV DdeConnect(
    #   _In_      DWORD idInst,
    #   _In_      HSZ hszService,
    #   _In_      HSZ hszTopic,
    #   _In_opt_  PCONVCONTEXT pCC )
    def self.DdeConnect(idInst, hszService, hszTopic, pCC); end
    attach_function 'DdeConnect', [:dword, :hsz, :hsz, CONVCONTEXT], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeconnectlist
    # HCONVLIST DdeConnectList(
    #   _In_      DWORD idInst,
    #   _In_      HSZ hszService,
    #   _In_      HSZ hszTopic,
    #   _In_      HCONVLIST hConvList,
    #   _In_opt_  PCONVCONTEXT pCC )
    def self.DdeConnectList(idInst, hszService, hszTopic, hConvList, pCC); end
    attach_function 'DdeConnectList', [:dword, :hsz, :hsz, :pointer, CONVCONTEXT], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatedatahandle
    # HDDEDATA DdeCreateDataHandle(
    #   _In_      DWORD idInst,
    #   _In_opt_  LPBYTE pSrc,
    #   _In_      DWORD cb,
    #   _In_      DWORD cbOff,
    #   _In_opt_  HSZ hszItem,
    #   _In_      UINT wFmt,
    #   _In_      UINT afCmd )
    def self.DdeCreateDataHandle(idInst, pSrc, cb, cbOff, hszItem, wFmt, afCmd); end
    attach_function 'DdeCreateDataHandle', [:dword, :pointer, :dword, :dword, :hsz, :uint, :uint], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatestringhandlea
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatestringhandlew
    # HSZ DdeCreateStringHandle(_In_  DWORD idInst, _In_  LPTSTR psz, _In_  int iCodePage )
    def self.DdeCreateStringHandle(idInst, psz, iCodePage); end
    encoded_function 'DdeCreateStringHandle', [:dword, :string, :int], :hsz

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddedisconnect
    # BOOL DdeDisconnect( _In_  HCONV hConv )
    def self.DdeDisconnect(hConv); end
    attach_function 'DdeDisconnect', [:hconv], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddedisconnectlist
    # BOOL DdeDisconnectList( _In_  HCONVLIST hConvList )
    def self.DdeDisconnectList(hConvList); end
    attach_function 'DdeDisconnectList', [:pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeenablecallback
    # BOOL DdeEnableCallback(_In_  DWORD idInst, _In_  HCONV hConv, _In_  UINT wCmd )
    def self.DdeEnableCallback(idInst, hConv, wCmd); end
    attach_function 'DdeEnableCallback', [:dword, :hconv, EnableCallback], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddefreedatahandle
    # BOOL DdeFreeDataHandle( _In_  HDDEDATA hData )
    def self.DdeFreeDataHandle(hData); end
    attach_function 'DdeFreeDataHandle', [:hddedata], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddefreestringhandle
    # BOOL DdeFreeStringHandle(_In_  DWORD idInst, _In_  HSZ hsz )
    def self.DdeFreeStringHandle(idInst, hsz); end
    attach_function 'DdeFreeStringHandle', [:dword, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddegetdata
    # DWORD DdeGetData(_In_ HDDEDATA hData, _Out_opt_ LPBYTE pDst, _In_ DWORD cbMax, _In_ DWORD cbOff)
    def self.DdeGetData(hData, pDst, cbMax, cbOff); end
    attach_function 'DdeGetData', [:hddedata, :pointer, :dword, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddegetlasterror
    # UINT DdeGetLastError( _In_  DWORD idInst )
    def self.DdeGetLastError(idInst); end
    attach_function 'DdeGetLastError', [:dword], DdeManagementLibraryError

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeimpersonateclient
    # BOOL DdeImpersonateClient( _In_  HCONV hConv )
    def self.DdeImpersonateClient(hConv); end
    attach_function 'DdeImpersonateClient', [:hconv], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeinitializea
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeinitializew
    # UINT DdeInitialize(_Inout_ LPDWORD pidInst, _In_ PFNCALLBACK pfnCallback, _In_ DWORD afCmd, _Reserved_ DWORD ulRes)
    def self.DdeInitialize(pidInst, pfnCallback, afCmd, ulRes); end
    encoded_function 'DdeInitialize', [:pointer, DdeCallback, :dword, :dword], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddekeepstringhandle
    # BOOL DdeKeepStringHandle(_In_  DWORD idInst, _In_  HSZ hsz )
    def self.DdeKeepStringHandle(idInst, hsz); end
    attach_function 'DdeKeepStringHandle', [:dword, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddenameservice
    # HDDEDATA DdeNameService( _In_ DWORD idInst, _In_opt_ HSZ hsz1, _In_opt_ HSZ hsz2, _In_UINT afCmd )
    def self.DdeNameService(idInst, hsz1, hsz2, afCmd); end
    attach_function 'DdeNameService', [:dword, :hsz, :hsz, DdeNameService], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddepostadvise
    # BOOL DdePostAdvise(_In_ DWORD idInst,_In_ HSZ hszTopic, _In_ HSZ hszItem )
    def self.DdePostAdvise(idInst, hConv, hszItem); end
    attach_function 'DdePostAdvise', [:dword, :hsz, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequeryconvinfo
    # UINT DdeQueryConvInfo( _In_ HCONV hConv, _In_ DWORD idTransaction, _Inout_ PCONVINFO pConvInfo )
    def self.DdeQueryConvInfo(hConv, idTransaction, pConvInfo); end
    attach_function 'DdeQueryConvInfo', [:hconv, :dword, CONVINFO], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerynextserver
    # HCONV DdeQueryNextServer( _In_ HCONVLIST hConvList,_In_ HCONV hConvPrev )
    def self.DdeQueryNextServer(hConvList, hConvPrev); end
    attach_function 'DdeQueryNextServer', [:pointer, :hconv], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerystringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerystringw
    # DWORD DdeQueryString(_In_ DWORD idInst, _In_ HSZ hsz, _Out_opt_ LPTSTR psz, _In_ DWORD cchMax, _In_ int iCodePage)
    def self.DdeQueryString(idInst, hsz, psz, cchMax, iCodePage); end
    encoded_function 'DdeQueryString', [:dword, :hsz, :pointer, :dword, :int], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddereconnect
    # HCONV DdeReconnect( _In_  HCONV hConv )
    def self.DdeReconnect(hConv); end
    attach_function 'DdeReconnect', [:hconv], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-ddesetqualityofservice
    # BOOL DdeSetQualityOfService(
    #   _In_   HWND hwndClient,
    #   _In_   const SECURITY_QUALITY_OF_SERVICE *pqosNew,
    #   _Out_  PSECURITY_QUALITY_OF_SERVICE pqosPrev )
    def self.DdeSetQualityOfService(hwndClient, pqosNew, pqosPrev); end
    attach_function 'DdeSetQualityOfService', [:hwnd, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddesetuserhandle
    # BOOL DdeSetUserHandle(_In_  HCONV hConv, _In_  DWORD id, _In_  DWORD_PTR hUser )
    def self.DdeSetUserHandle(hConv, id, hUser); end
    attach_function 'DdeSetUserHandle', [:hconv, :dword, :dword_ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeunaccessdata
    # BOOL DdeUnaccessData( _In_  HDDEDATA hData )
    def self.DdeUnaccessData(hData); end
    attach_function 'DdeUnaccessData', [:hddedata], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeuninitialize
    # BOOL DdeUninitialize( _In_  DWORD idInst )
    def self.DdeUninitialize(idInst); end
    attach_function 'DdeUninitialize', [:dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-freeddelparam
    # BOOL FreeDDElParam(_In_  UINT msg, _In_  LPARAM lParam )
    def self.FreeDDElParam(msg, lParam); end
    attach_function 'FreeDDElParam', [:uint, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-impersonateddeclientwindow
    # BOOL ImpersonateDdeClientWindow(_In_  HWND hWndClient, _In_  HWND hWndServer)
    def self.ImpersonateDdeClientWindow(hWndClient, hWndServer); end
    attach_function 'ImpersonateDdeClientWindow', [:hwnd, :hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-packddelparam
    # LPARAM PackDDElParam(_In_  UINT msg, _In_  UINT_PTR uiLo, _In_  UINT_PTR uiHi )
    def self.PackDDElParam(msg, uiLo, uiHi); end
    attach_function 'PackDDElParam', [:uint, :uint_ptr, :uint_ptr], :lparam

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-reuseddelparam
    # LPARAM ReuseDDElParam(
    #   _In_  LPARAM lParam,
    #   _In_  UINT msgIn,
    #   _In_  UINT msgOut,
    #   _In_  UINT_PTR uiLo,
    #   _In_  UINT_PTR uiHi )
    def self.ReuseDDElParam(lParam, msgIn, msgOut, uiLo, uiHi); end
    attach_function 'ReuseDDElParam', [:lparam, :uint, :uint, :uint_ptr, :uint_ptr], :lparam

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-unpackddelparam
    # BOOL UnpackDDElParam(_In_ UINT msg, _In_ LPARAM lParam, _Out_ PUINT_PTR puiLo, _Out_ PUINT_PTR puiHi )
    def self.UnpackDDElParam(msg, lParam, puiLo, puiHi); end
    attach_function 'UnpackDDElParam', [:uint, :lparam, :pointer, :pointer], :bool
  end
end