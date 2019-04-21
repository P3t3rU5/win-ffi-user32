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
    # @param [Integer] dwFlags
    # @param [FFI::Pointer] lParam
    # @param [Integer] lpdwRecipients
    # @param [Integer] uiMessage
    # @param [Integer] wParam
      # @return [Integer]
      def self.BroadcastSystemMessage(dwFlags, lpdwRecipients, uiMessage, wParam, lParam) end
    encoded_function 'BroadcastSystemMessage',
                     [BroadcastSpecialFlag, :pointer, BroadcastSpecialMessageFlag, :wparam, :lparam], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644934
    # @param [FFI::Pointer] lpmsg
    # @return [Integer]
    def self.DispatchMessage(lpmsg) end
    encoded_function 'DispatchMessage', [MSG.ptr], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644935
    # @return [true, false]
    def self.GetInputState; end
    attach_function 'GetInputState', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644936
    # @param [FFI::Pointer] lpMsg
    # @param [FFI::Pointer] hWnd
    # @param [Integer] wMsgFilterMin
    # @param [Integer] wMsgFilterMax
    # @return [Integer]
    def self.GetMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax) end
    encoded_function 'GetMessage', [MSG.ptr, :hwnd, :uint, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644937
    # @return [Integer]
    def self.GetMessageExtraInfo; end
    attach_function 'GetMessageExtraInfo', [], :lparam

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644938
    # @return [Integer]
    def self.GetMessagePos; end
    attach_function 'GetMessagePos', [], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644939
    # @return [Integer]
    def self.GetMessageTime; end
    attach_function 'GetMessageTime', [], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644940
    # @param [Integer] flags
    # @return [Integer]
    def self.GetQueueStatus(flags) end
    attach_function 'GetQueueStatus', [QueueStatusFlag], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644941
    # @return [true, false]
    def self.InSendMessage; end
    attach_function 'InSendMessage', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644942
    # @param [FFI::Pointer] lpReserved
    # @return [Integer]
    def self.InSendMessageEx(lpReserved) end
    attach_function 'InSendMessageEx', [:pointer], InSendMessageExReturn

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644943
    # @param [FFI::Pointer] lpMsg
    # @param [FFI::Pointer] hWnd
    # @param [Integer] wMsgFilterMin
    # @param [Integer] wMsgFilterMax
    # @param [Integer] wRemoveMsg
    # @return [true, false]
    def self.PeekMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg) end
    encoded_function 'PeekMessage', [MSG.ptr(:out), :hwnd, :uint, :uint, PeekMessageFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644944
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [true, false]
    def self.PostMessage(hWnd, msg, wParam, lParam) end
    encoded_function 'PostMessage', [:hwnd, WindowMessage, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644945
    # @param [Integer] nExitCode
    def self.PostQuitMessage(nExitCode) end
    attach_function 'PostQuitMessage', [:int], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644946
    # @param [Integer] idThread
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [true, false]
    def self.PostThreadMessage(idThread, msg, wParam, lParam) end
    encoded_function 'PostThreadMessage', [:dword, :uint, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644947
    # @param [String] lpString
    # @return [Integer]
    def self.RegisterWindowMessage(lpString) end
    encoded_function 'RegisterWindowMessage', [:string], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644948
    # @param [Integer] lResult
    # @return [true, false]
    def self.ReplyMessage(lResult) end
    attach_function 'ReplyMessage', [:lresult], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644949(v=vs.85).aspx
    # VOID CALLBACK SendAsyncProc( _In_ HWND hwnd, _In_ UINT uMsg, _In_ ULONG_PTR dwData, _In_ LRESULT lResult)
    SendAsyncProc = callback 'SendAsyncProc', [:hwnd, :uint, :ulong_ptr, :lresult], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644950
    # Needed because lparam might be a pointer and its defined as a ulong
    # LRESULT SendMessage( _In_  HWND hWnd, _In_  UINT Msg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    # @param [FFI::Pointer] handle
    # @param [Integer] msg
    # @param [Integer] wparam
    # @param [Integer] lparam
    # @return [Integer]
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
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @param [SendAsyncProc] lpCallBack
    # @param [Integer] dwData
    # @return [true, false]
    def self.SendMessageCallback(hWnd, msg, wParam, lParam, lpCallBack, dwData) end
    encoded_function 'SendMessageCallback', [:hwnd, :uint, :wparam, :lparam, SendAsyncProc, :ulong_ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644952(v=vs.85).aspx
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @param [Integer] fuFlags
    # @param [FFI::Pointer] uTimeout
    # @return [Integer]
    def self.SendMessageTimeout(hWnd, msg, wParam, lParam, fuFlags, uTimeout) end
    encoded_function 'SendMessageTimeout',
                     [:hwnd, :uint, :wparam, :lparam, SendMessageTimeoutFlag, :uint, :pointer], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644953
    # @param [FFI::Pointer] hWnd
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [true, false]
    def self.SendNotifyMessage(hWnd, msg, wParam, lParam) end
    encoded_function 'SendNotifyMessage', [:hwnd, :uint, :wparam, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644954
    # @param [Integer] lParam
    # @return [Integer]
    def self.SetMessageExtraInfo(lParam) end
    attach_function 'SetMessageExtraInfo', [:lparam], :lparam

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644955
    # @param [FFI::Pointer] lpMsg
    # @return [true, false]
    def self.TranslateMessage(lpMsg) end
    attach_function 'TranslateMessage', [MSG.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644956
    # @return [true, false]
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
      # @param [Integer] dwFlags
      # @param [FFI::Pointer] lpdwRecipients
      # @param [Integer] uiMessage
      # @param [Integer] wParam
      # @param [Integer] lParam
      # @param [FFI::Pointer] pBSMInfo
      # @return [Integer]
      def self.BroadcastSystemMessageEx(dwFlags, lpdwRecipients, uiMessage, wParam, lParam, pBSMInfo) end
      encoded_function 'BroadcastSystemMessageEx',
                       [BroadcastSpecialFlag, BroadcastSpecialMessageFlag, :uint, :wparam, :lparam, BSMINFO.ptr],
                       :long
    end
  end
end