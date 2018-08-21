require_relative '../../enum/window/message/broadcast_special_flag'
require_relative '../../enum/window/message/broadcast_special_message_flag'
require_relative '../../enum/window/message/peek_message_flag'
require_relative '../../enum/window/message/send_message_timeout_flag'
require_relative '../../enum/window/message/window_message'
require_relative '../../enum/window/message/queue_status_flag'
require_relative '../../enum/resource/icon/type'
require_relative '../../enum/window/return/in_send_message_ex_return'

require_relative '../../struct/window/message/bsm_info'
require_relative '../../struct/window/message/msg'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644932
    # long BroadcastSystemMessage(
    #   _In_         DWORD dwFlags,
    #   _Inout_opt_  LPDWORD lpdwRecipients,
    #   _In_         UINT uiMessage,
    #   _In_         WPARAM wParam,
    #   _In_         LPARAM lParam )
    def self.BroadcastSystemMessage(dwFlags, lpdwRecipients, uiMessage, wParam, lParam) end
    encoded_function 'BroadcastSystemMessage',
                     [BroadcastSpecialFlag, BroadcastSpecialMessageFlag, :wparam, :lparam], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644934
    # LRESULT DispatchMessage(__in  const MSG *lpmsg)
    def self.DispatchMessage(lpmsg) end
    encoded_function 'DispatchMessage', [MSG.ptr], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644935
    # BOOL GetInputState(void)
    def self.GetInputState; end
    attach_function 'GetInputState', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644936
    # BOOL GetMessage( __out LPMSG lpMsg, __in_opt  HWND  hWnd, __in UINT  wMsgFilterMin, __in UINT  wMsgFilterMax)
    def self.GetMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax) end
    encoded_function 'GetMessage', [MSG.ptr, :hwnd, :uint, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644937
    # LPARAM GetMessageExtraInfo(void)
    def self.GetMessageExtraInfo; end
    attach_function 'GetMessageExtraInfo', [], :lparam

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644938
    # DWORD GetMessagePos(void)
    def self.GetMessagePos; end
    attach_function 'GetMessagePos', [], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644939
    # LONG GetMessageTime(void)
    def self.GetMessageTime; end
    attach_function 'GetMessageTime', [], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644940
    # DWORD GetQueueStatus( _In_  UINT flags )
    def self.GetQueueStatus(flags) end
    attach_function 'GetQueueStatus', [QueueStatusFlag], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644941
    # BOOL InSendMessage(void)
    def self.InSendMessage; end
    attach_function 'InSendMessage', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644942
    # DWORD InSendMessageEx( _Reserved_  LPVOID lpReserved )
    def self.InSendMessageEx(lpReserved) end
    attach_function 'InSendMessageEx', [:pointer], InSendMessageExReturn

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644943
    # BOOL PeekMessage(
    #   _Out_     LPMSG lpMsg,
    #   _In_opt_  HWND hWnd,
    #   _In_      UINT wMsgFilterMin,
    #   _In_      UINT wMsgFilterMax,
    #   _In_      UINT wRemoveMsg )
    def self.PeekMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg) end
    encoded_function 'PeekMessage', [MSG.ptr(:out), :hwnd, :uint, :uint, PeekMessageFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644944
    # BOOL PostMessage( __in_opt  HWND hWnd, __in UINT Msg, __in WPARAM wParam, __in LPARAM lParam)
    def self.PostMessage(hWnd, msg, wParam, lParam) end
    encoded_function 'PostMessage', [:hwnd, WindowMessage, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644945
    # VOID PostQuitMessage(__in  int nExitCode)
    def self.PostQuitMessage(nExitCode) end
    attach_function 'PostQuitMessage', [:int], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644946
    # BOOL PostThreadMessage( _In_  DWORD idThread, _In_  UINT Msg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    def self.PostThreadMessage(idThread, msg, wParam, lParam) end
    encoded_function 'PostThreadMessage', [:dword, :uint, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644947
    # UINT RegisterWindowMessage( _In_  LPCTSTR lpString )
    def self.RegisterWindowMessage(lpString) end
    encoded_function 'RegisterWindowMessage', [:string], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644948
    # BOOL ReplyMessage( _In_  LRESULT lResult )
    def self.ReplyMessage(lResult) end
    attach_function 'ReplyMessage', [:lresult], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644949(v=vs.85).aspx
    # VOID CALLBACK SendAsyncProc( _In_ HWND hwnd, _In_ UINT uMsg, _In_ ULONG_PTR dwData, _In_ LRESULT lResult)
    SendAsyncProc = callback 'SendAsyncProc', [:hwnd, :uint, :ulong_ptr, :lresult], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644950
    # Needed because lparam might be a pointer and its defined as a ulong
    # LRESULT SendMessage( _In_  HWND hWnd, _In_  UINT Msg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    def self.SendMessage(handle, msg, wparam, lparam)
      case lparam
        when Fixnum
          SendMessageLong(handle, msg, wparam, lparam)
        else
          SendMessagePointer(handle, msg, wparam, lparam)
      end
    end
    encoded_function 'SendMessage', [:hwnd, :uint, :wparam, :ulong], :lresult, ruby_name: 'SendMessagePointer'
    encoded_function 'SendMessage', [:hwnd, :uint, :wparam, :lparam], :lresult, ruby_name: 'SendMessageLong'

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644951
    # BOOL SendMessageCallback(
    #   _In_  HWND hWnd,
    #   _In_  UINT Msg,
    #   _In_  WPARAM wParam,
    #   _In_  LPARAM lParam,
    #   _In_  SENDASYNCPROC lpCallBack,
    #   _In_  ULONG_PTR dwData )
    def self.SendMessageCallback(hWnd, msg, wParam, lParam, lpCallBack, dwData) end
    encoded_function 'SendMessageCallback', [:hwnd, :uint, :wparam, :lparam, SendAsyncProc, :ulong_ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644952(v=vs.85).aspx
    # LRESULT SendMessageTimeout(
    #   _In_       HWND hWnd,
    #   _In_       UINT Msg,
    #   _In_       WPARAM wParam,
    #   _In_       LPARAM lParam,
    #   _In_       UINT fuFlags,
    #   _In_       UINT uTimeout,
    #   _Out_opt_  PDWORD_PTR lpdwResult )
    def self.SendMessageTimeout(hWnd, msg, wParam, lParam, fuFlags, uTimeout) end
    encoded_function 'SendMessageTimeout',
                     [:hwnd, :uint, :wparam, :lparam, SendMessageTimeoutFlag, :uint, :pointer], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644953
    # BOOL SendNotifyMessage( _In_  HWND hWnd, _In_  UINT Msg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    def self.SendNotifyMessage(hWnd, msg, wParam, lParam) end
    encoded_function 'SendNotifyMessage', [:hwnd, :uint, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644954
    # LPARAM SetMessageExtraInfo( _In_  LPARAM lParam )
    def self.SetMessageExtraInfo(lParam) end
    attach_function 'SetMessageExtraInfo', [:lparam], :lparam

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644955
    # BOOL TranslateMessage(__in  const MSG *lpMsg )
    def self.TranslateMessage(lpMsg) end
    attach_function 'TranslateMessage', [MSG.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644956
    # BOOL WaitMessage(void)
    def self.WaitMessage; end
    attach_function 'WaitMessage', [], :bool

    if WINDOWS_VERSION >= :xp
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644933
      # long BroadcastSystemMessageEx(
      #   _In_         DWORD dwFlags,
      #   _Inout_opt_  LPDWORD lpdwRecipients,
      #   _In_         UINT uiMessage,
      #   _In_         WPARAM wParam,
      #   _In_         LPARAM lParam,
      #   _Out_opt_    PBSMINFO pBSMInfo )
      def self.BroadcastSystemMessageEx(dwFlags, lpdwRecipients, uiMessage, wParam, lParam, pBSMInfo) end
      encoded_function 'BroadcastSystemMessageEx',
                       [BroadcastSpecialFlag, BroadcastSpecialMessageFlag, :uint, :wparam, :lparam, BSMINFO.ptr],
                       :long
    end
  end
end