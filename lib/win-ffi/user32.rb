require 'win-ffi/logger'
WinFFI::LOGGER.level = 'info'
require 'win-ffi/core'
require 'win-ffi/core/lib_base'
require 'win-ffi/user32/version'

module WinFFI
  module User32
    extend LibBase

    LOGGER.info "WinFFI User32 v#{WinFFI::User32::VERSION}"

    ffi_lib 'user32'

    require 'win-ffi/user32/typedef/hwineventhook'

    if WindowsVersion >= :xp

      #Active Accessibility
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318528(v=vs.85).aspx
      # BOOL WINAPI IsWinEventHookInstalled( _In_  DWORD event )
      attach_function 'IsWinEventHookInstalled', [:dword], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373885(v=vs.85).aspx
      # void CALLBACK WinEventProc(
      #   HWINEVENTHOOK hWinEventHook,
      #   DWORD         event,
      #   HWND          hwnd,
      #   LONG          idObject,
      #   LONG          idChild,
      #   DWORD         dwEventThread,
      #   DWORD         dwmsEventTime)
      WinEventProc = callback 'WinEventProc', [:pointer, :dword, :hwnd, :long, :long, :dword, :dword], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373603(v=vs.85).aspx
      # void WINAPI NotifyWinEvent(
      #   _In_  DWORD event,
      #   _In_  HWND hwnd,
      #   _In_  LONG idObject,
      #   _In_  LONG idChild )
      attach_function 'NotifyWinEvent', [:dword, :hwnd, :long, :long], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373640(v=vs.85).aspx
      # HWINEVENTHOOK WINAPI SetWinEventHook(
      #   _In_  UINT eventMin,
      #   _In_  UINT eventMax,
      #   _In_  HMODULE hmodWinEventProc,
      #   _In_  WINEVENTPROC lpfnWinEventProc,
      #   _In_  DWORD idProcess,
      #   _In_  DWORD idThread,
      #   _In_  UINT dwflags )
      attach_function 'SetWinEventHook', [:uint, :uint, :pointer, WinEventProc, :dword, :dword, :uint], :pointer

      if WindowsVersion >= :vista || (WindowsVersion == :xp && WindowsVersion.sp >= 2)
        # Process and Threads
        # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684136(v=vs.85).aspx
        # BOOL WINAPI IsWow64Message(void)
        attach_function 'IsWow64Message', [], :bool
      end
    end

    CW_USEDEFAULT   = -0x80000000

    IDI = enum :idi,
    [
      :APPLICATION, 32512,
      :ERROR,       32513,
      :HAND,        32513,
      :QUESTION,    32514,
      :EXCLAMATION, 32515,
      :WARNING,     32515,
      :ASTERISK,    32516,
      :INFORMATION, 32516,
      :WINLOGO,     32517,
      :SHIELD,      32518
    ]

    # https://msdn.microsoft.com/en-us/library/aa969468(v=vs.85).aspx
    #This function is obsolete and should not be used.
    #LRESULT WINAPI SendIMEMessageEx(
    #  _In_  HWND hwnd,
    #  _In_  LPARAM lParam )
    encoded_function 'SendIMEMessageEx', [:hwnd, :lparam], :lresult

    # ULONG_PTR WINAPI SetClassLongPtr(
    #   __in  HWND hWnd,
    #   __in  int nIndex,
    #   __in  LONG_PTR dwNewLong)
    # encoded_function 'SetClassLongPtr', [:hwnd, ClassLong, :pointer], :pointer

    # BOOL WINAPI UnhookWinEvent( _In_  HWINEVENTHOOK hWinEventHook )
    attach_function 'UnhookWinEvent', [:hwineventhook], :bool

    # This function is obsolete and should not be used.
    # BOOL WINAPI WINNLSEnableIME(
    #   _In_  HWND hwnd,
    #   _In_  BOOL bFlag )
    attach_function 'WINNLSEnableIME', [:hwnd, :bool], :bool

    require 'win-ffi/user32/typedef/hcursor'

    # DWORD DragObject(
    #   _In_ HWND hwndParent,
    #   _In_ HWND hwndFrom,
    #   _In_ UINT fmt,
    #   _In_ ULONG_PTR data,
    #   _In_opt_ HCURSOR hcur)
    attach_function 'DragObject', [:hwnd, :hwnd, :uint, :ulong, :hcursor], :dword

    # WINUSERAPI BOOL WINAPI InheritWindowMonitor(_In_ HWND hwnd, _In_opt_ HWND hwndInherit);
    attach_function 'InheritWindowMonitor', [:hwnd, :hwnd], :bool

    # WINUSERAPI VOID WINAPI SetDebugErrorLevel(_In_ DWORD dwLevel);
    attach_function 'SetDebugErrorLevel', [:dword], :void

    # WINUSERAPI BOOL WINAPI SetMessageQueue(_In_ int cMessagesMax);
    attach_function 'SetMessageQueue', [:int], :bool
  end
end