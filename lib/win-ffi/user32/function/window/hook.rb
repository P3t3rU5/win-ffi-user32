require_relative '../../enum/window/hook/window_hook'
require_relative '../../struct/window/message/msg'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644973(v=vs.85).aspx
    # @param [FFI::Pointer] lpMsg
    # @param [Integer] nCode
    # @return [true, false]
    def self.CallMsgFilter(lpMsg, nCode); end
    encoded_function 'CallMsgFilter', [MSG.ptr(:in), :int], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644974(v=vs.85).aspx
    # @param [FFI::Pointer] hhk
    # @param [Integer] nCode
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Integer]
    def self.CallNextHookEx(hhk, nCode, wParam, lParam); end
    attach_function 'CallNextHookEx', [:pointer, :int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644975(v=vs.85).aspx
    # LRESULT CALLBACK CallWndProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    CallWndProc = callback 'CallWndProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644976(v=vs.85).aspx
    # LRESULT CALLBACK CallWndRetProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    CallWndRetProc = callback 'CallWndRetProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644977(v=vs.85).aspx
    # LRESULT CALLBACK CBTProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    CBTProc = callback 'CBTProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644978(v=vs.85).aspx
    # LRESULT CALLBACK DebugProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    DebugProc = callback 'DebugProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644980(v=vs.85).aspx
    # DWORD CALLBACK ForegroundIdleProc( _In_  int code, DWORD wParam, LONG lParam )
    ForegroundIdleProc = callback 'ForegroundIdleProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644981(v=vs.85).aspx
    # LRESULT CALLBACK GetMsgProc( _In_  int code, _In_  WPARAM wParam, _In_  LPARAM lParam )
    GetMsgProc = callback 'GetMsgProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644982(v=vs.85).aspx
    # LRESULT CALLBACK JournalPlaybackProc( _In_  int code, WPARAM wParam, _In_  LPARAM lParam )
    JournalPlaybackProc = callback 'JournalPlaybackProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644983(v=vs.85).aspx
    # LRESULT CALLBACK JournalRecordProc( _In_  int code, WPARAM wParam, _In_  LPARAM lParam )
    JournalRecordProc = callback 'JournalRecordProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644984(v=vs.85).aspx
    # LRESULT CALLBACK KeyboardProc( _In_  int code, _In_  WPARAM wParam, _In_  LPARAM lParam )
    KeyboardProc = callback 'KeyboardProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644985(v=vs.85).aspx
    # LRESULT CALLBACK LowLevelKeyboardProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    LowLevelKeyboardProc = callback 'LowLevelKeyboardProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644986(v=vs.85).aspx
    # LRESULT CALLBACK LowLevelMouseProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    LowLevelMouseProc = callback 'LowLevelMouseProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644987(v=vs.85).aspx
    # LRESULT CALLBACK MessageProc( _In_  int code, WPARAM wParam, _In_  LPARAM lParam )
    MessageProc = callback 'MessageProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644988(v=vs.85).aspx
    # LRESULT CALLBACK MouseProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    MouseProc = callback 'MouseProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644990(v=vs.85).aspx
    # @param [Integer] idHook
    # @param [FFI::Pointer] lpfn
    # @param [FFI::Pointer] hMod
    # @param [Integer] dwThreadId
    # @return [FFI::Pointer]
    def self.SetWindowsHookEx(idHook, lpfn, hMod, dwThreadId); end
    encoded_function 'SetWindowsHookEx', [WindowHook, :pointer, :pointer, :dword], :hhook

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644991(v=vs.85).aspx
    # LRESULT CALLBACK ShellProc( _In_  int nCode, _In_  WPARAM wParam, _In_  LPARAM lParam )
    ShellProc = callback 'ShellProc', [:int, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644992(v=vs.85).aspx
    # LRESULT CALLBACK SysMsgProc( _In_  int nCode, WPARAM wParam, _In_  LPARAM lParam )
    SysMsgProc = callback 'SysMsgProc', [:int, :wparam, :lparam], :lresult

    # LRESULT CALLBACK HookProc(int nCode, WPARAM wParam, LPARAM lParam)
    HookProc = callback 'HookProc', [:int, :wparam, :lparam], :lresult

    # @param [Integer] nFilterType
    # @param [FFI::Pointer] pfnFilterProc
    # @return [FFI::Pointer]
    def self.SetWindowsHook(nFilterType, pfnFilterProc); end
    encoded_function 'SetWindowsHook', [:int, :pointer], :pointer

    # @param [Integer] nCode
    # @param [FFI::Pointer] pfnFilterProc
    # @return [true, false]
    def self.UnhookWindowsHook(nCode, pfnFilterProc); end
    attach_function 'UnhookWindowsHook', [:int, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644993(v=vs.85).aspx
    # @param [FFI::Pointer] hhk
    # @return [true, false]
    def self.UnhookWindowsHookEx(hhk); end
    attach_function 'UnhookWindowsHookEx', [:pointer], :bool
  end
end