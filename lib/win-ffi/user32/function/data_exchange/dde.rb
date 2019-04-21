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
    # @param [Integer] idInst
    # @param [FFI::Pointer] hConv
    # @param [Integer] idTransaction
    # @return [true, false]
    def self.DdeAbandonTransaction(idInst, hConv, idTransaction); end
    attach_function 'DdeAbandonTransaction', [:dword, :hconv, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeaccessdata
    # @param [FFI::Pointer] hData
    # @param [FFI::Pointer] pcbDataSize
    # @return [FFI::Pointer]
    def self.DdeAccessData(hData, pcbDataSize); end
    attach_function 'DdeAccessData', [:hddedata, :pointer], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeadddata
    # @param [FFI::Pointer] hData
    # @param [FFI::Pointer] pSrc
    # @param [Integer] cb
    # @param [Integer] cbOff
    # @return [FFI::Pointer]
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
    # @param [FFI::Pointer] pData
    # @param [Integer] cbData
    # @param [FFI::Pointer] hConv
    # @param [FFI::Pointer] hszItem
    # @param [Integer] wFmt
    # @param [Integer] wType
    # @param [Integer] dwTimeout
    # @param [FFI::Pointer] pdwResult
    # @return [FFI::Pointer]
    def self.DdeClientTransaction(pData, cbData, hConv, hszItem, wFmt, wType, dwTimeout, pdwResult); end
    attach_function 'DdeClientTransaction',
                    [:pointer, :dword, :hconv, :hsz, :uint, TransactionType, :dword, :pointer], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecmpstringhandles
    # @param [FFI::Pointer] hsz1
    # @param [FFI::Pointer] hsz2
    # @return [Integer]
    def self.DdeCmpStringHandles(hsz1, hsz2); end
    attach_function 'DdeCmpStringHandles', [:hsz, :hsz], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeconnect
    # @param [Integer] idInst
    # @param [FFI::Pointer] hszService
    # @param [FFI::Pointer] hszTopic
    # @param [CONVCONTEXT] pCC
    # @return [FFI::Pointer]
    def self.DdeConnect(idInst, hszService, hszTopic, pCC); end
    attach_function 'DdeConnect', [:dword, :hsz, :hsz, CONVCONTEXT], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeconnectlist
    # @param [Integer] idInst
    # @param [FFI::Pointer] hszService
    # @param [FFI::Pointer] hszTopic
    # @param [FFI::Pointer] hConvList
    # @param [CONVCONTEXT] pCC
    # @return [FFI::Pointer]
    def self.DdeConnectList(idInst, hszService, hszTopic, hConvList, pCC); end
    attach_function 'DdeConnectList', [:dword, :hsz, :hsz, :pointer, CONVCONTEXT], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatedatahandle
    # @param [Integer] idInst
    # @param [FFI::Pointer] pSrc
    # @param [Integer] cb
    # @param [Integer] cbOff
    # @param [FFI::Pointer] hszItem
    # @param [Integer] wFmt
    # @param [Integer] afCmd
    # @return [FFI::Pointer]
    def self.DdeCreateDataHandle(idInst, pSrc, cb, cbOff, hszItem, wFmt, afCmd); end
    attach_function 'DdeCreateDataHandle', [:dword, :pointer, :dword, :dword, :hsz, :uint, :uint], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatestringhandlea
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddecreatestringhandlew
    # @param [Integer] idInst
    # @param [String] psz
    # @param [Integer] iCodePage
    # @return [FFI::Pointer]
    def self.DdeCreateStringHandle(idInst, psz, iCodePage); end
    encoded_function 'DdeCreateStringHandle', [:dword, :string, :int], :hsz

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddedisconnect
    # @param [FFI::Pointer] hConv
    # @return [true, false]
    def self.DdeDisconnect(hConv); end
    attach_function 'DdeDisconnect', [:hconv], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddedisconnectlist
    # @param [FFI::Pointer] hConvList
    # @return [true, false]
    def self.DdeDisconnectList(hConvList); end
    attach_function 'DdeDisconnectList', [:pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeenablecallback
    # @param [Integer] idInst
    # @param [FFI::Pointer] hConv
    # @param [EnableCallback] wCmd
    # @return [true, false]
    def self.DdeEnableCallback(idInst, hConv, wCmd); end
    attach_function 'DdeEnableCallback', [:dword, :hconv, EnableCallback], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddefreedatahandle
    # @param [FFI::Pointer] hData
    # @return [true, false]
    def self.DdeFreeDataHandle(hData); end
    attach_function 'DdeFreeDataHandle', [:hddedata], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddefreestringhandle
    # @param [Integer] idInst
    # @param [FFI::Pointer] hsz
    # @return [true, false]
    def self.DdeFreeStringHandle(idInst, hsz); end
    attach_function 'DdeFreeStringHandle', [:dword, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddegetdata
    # @param [FFI::Pointer] hData
    # @param [FFI::Pointer] pDst
    # @param [Integer] cbMax
    # @param [Integer] cbOff
    # @return [Integer]
    def self.DdeGetData(hData, pDst, cbMax, cbOff); end
    attach_function 'DdeGetData', [:hddedata, :pointer, :dword, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddegetlasterror
    # @param [Integer] idInst
    # @return [DdeManagementLibraryError]
    def self.DdeGetLastError(idInst); end
    attach_function 'DdeGetLastError', [:dword], DdeManagementLibraryError

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeimpersonateclient
    # @param [FFI::Pointer] hConv
    # @return [true, false]
    def self.DdeImpersonateClient(hConv); end
    attach_function 'DdeImpersonateClient', [:hconv], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeinitializea
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeinitializew
    # @param [FFI::Pointer] pidInst
    # @param [DdeCallback] pfnCallback
    # @param [Integer] afCmd
    # @param [Integer] ulRes
    # @return [Integer]
    def self.DdeInitialize(pidInst, pfnCallback, afCmd, ulRes); end
    encoded_function 'DdeInitialize', [:pointer, DdeCallback, :dword, :dword], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddekeepstringhandle
    # @param [Integer] idInst
    # @param [FFI::Pointer] hsz
    # @return [true, false]
    def self.DdeKeepStringHandle(idInst, hsz); end
    attach_function 'DdeKeepStringHandle', [:dword, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddenameservice
    # @param [Integer] idInst
    # @param [FFI::Pointer] hsz1
    # @param [FFI::Pointer] hsz2
    # @param [DdeNameService] afCmd
    # @return [FFI::Pointer]
    def self.DdeNameService(idInst, hsz1, hsz2, afCmd); end
    attach_function 'DdeNameService', [:dword, :hsz, :hsz, DdeNameService], :hddedata

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddepostadvise
    # @param [Integer] idInst
    # @param [FFI::Pointer] hConv
    # @param [FFI::Pointer] hszItem
    # @return [true, false]
    def self.DdePostAdvise(idInst, hConv, hszItem); end
    attach_function 'DdePostAdvise', [:dword, :hsz, :hsz], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequeryconvinfo
    # @param [FFI::Pointer] hConv
    # @param [Integer] idTransaction
    # @param [CONVINFO] pConvInfo
    # @return [Integer]
    def self.DdeQueryConvInfo(hConv, idTransaction, pConvInfo); end
    attach_function 'DdeQueryConvInfo', [:hconv, :dword, CONVINFO], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerynextserver
    # @param [FFI::Pointer] hConvList
    # @param [FFI::Pointer] hConvPrev
    # @return [FFI::Pointer]
    def self.DdeQueryNextServer(hConvList, hConvPrev); end
    attach_function 'DdeQueryNextServer', [:pointer, :hconv], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerystringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddequerystringw
    # @param [Integer] idInst
    # @param [FFI::Pointer] hsz
    # @param [FFI::Pointer] psz
    # @param [Integer] cchMax
    # @param [Integer] iCodePage
    # @return [Integer]
    def self.DdeQueryString(idInst, hsz, psz, cchMax, iCodePage); end
    encoded_function 'DdeQueryString', [:dword, :hsz, :pointer, :dword, :int], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddereconnect
    # @param [FFI::Pointer] hConv
    # @return [FFI::Pointer]
    def self.DdeReconnect(hConv); end
    attach_function 'DdeReconnect', [:hconv], :hconv

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-ddesetqualityofservice
    # @param [FFI::Pointer] hwndClient
    # @param [FFI::Pointer] pqosNew
    # @param [FFI::Pointer] pqosPrev
    # @return [true, false]
    def self.DdeSetQualityOfService(hwndClient, pqosNew, pqosPrev); end
    attach_function 'DdeSetQualityOfService', [:hwnd, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddesetuserhandle
    # @param [FFI::Pointer] hConv
    # @param [Integer] id
    # @param [Integer] hUser
    # @return [true, false]
    def self.DdeSetUserHandle(hConv, id, hUser); end
    attach_function 'DdeSetUserHandle', [:hconv, :dword, :dword_ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeunaccessdata
    # @param [FFI::Pointer] hData
    # @return [true, false]
    def self.DdeUnaccessData(hData); end
    attach_function 'DdeUnaccessData', [:hddedata], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/nf-ddeml-ddeuninitialize
    # @param [Integer] idInst
    # @return [true, false]
    def self.DdeUninitialize(idInst); end
    attach_function 'DdeUninitialize', [:dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-freeddelparam
    # @param [Integer] msg
    # @param [Integer] lParam
    # @return [true, false]
    def self.FreeDDElParam(msg, lParam); end
    attach_function 'FreeDDElParam', [:uint, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-impersonateddeclientwindow
    # @param [FFI::Pointer] hWndClient
    # @param [FFI::Pointer] hWndServer
    # @return [true, false]
    def self.ImpersonateDdeClientWindow(hWndClient, hWndServer); end
    attach_function 'ImpersonateDdeClientWindow', [:hwnd, :hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-packddelparam
    # @param [Integer] msg
    # @param [Integer] uiLo
    # @param [Integer] uiHi
    # @return [Integer]
    def self.PackDDElParam(msg, uiLo, uiHi); end
    attach_function 'PackDDElParam', [:uint, :uint_ptr, :uint_ptr], :lparam

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-reuseddelparam
    # @param [Integer] lParam
    # @param [Integer] msgIn
    # @param [Integer] msgOut
    # @param [Integer] uiLo
    # @param [Integer] uiHi
    # @return [Integer]
    def self.ReuseDDElParam(lParam, msgIn, msgOut, uiLo, uiHi); end
    attach_function 'ReuseDDElParam', [:lparam, :uint, :uint, :uint_ptr, :uint_ptr], :lparam

    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/nf-dde-unpackddelparam
    # @param [Integer] msg
    # @param [Integer] lParam
    # @param [FFI::Pointer] puiLo
    # @param [FFI::Pointer] puiHi
    # @return [true, false]
    def self.UnpackDDElParam(msg, lParam, puiLo, puiHi); end
    attach_function 'UnpackDDElParam', [:uint, :lparam, :pointer, :pointer], :bool
  end
end