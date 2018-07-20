require 'win-ffi/logger'
WinFFI::LOGGER.level = 'info'
require 'win-ffi/core'
require 'win-ffi/core/lib_base'
require_relative 'user32/version'

module WinFFI
  module User32
    extend LibBase

    LOGGER.info "WinFFI User32 v#{WinFFI::User32::VERSION}"

    ffi_lib 'user32'

    #define CW_USEDEFAULT ((int)0x80000000)
    CW_USEDEFAULT = -0x80000000


    # https://docs.microsoft.com/en-us/windows/desktop/api/ime/nf-ime-sendimemessageexa
    def self.SendIMEMessageEx(hwnd, lParam) end
    # def self.SetClassLongPtr(hWnd, nIndex, dwNewLong) end

    def self.WINNLSEnableIME(hwnd, bFlag) end
    def self.DragObject(hwndParent, hwndFrom, fmt, data, hcur) end
    def self.SetDebugErrorLevel(dwLevel) end
    def self.SetMessageQueue(cMessagesMax) end

    # This function is obsolete and should not be used.
    # LRESULT WINAPI SendIMEMessageEx( _In_  HWND hwnd, _In_  LPARAM lParam )
    encoded_function 'SendIMEMessageEx', [:hwnd, :lparam], :lresult

    # ULONG_PTR WINAPI SetClassLongPtr( __in  HWND hWnd, __in  int nIndex, __in  LONG_PTR dwNewLong)
    # encoded_function 'SetClassLongPtr', [:hwnd, ClassLong, :long_ptr], :ulong_ptr

    # This function is obsolete and should not be used.
    # BOOL WINAPI WINNLSEnableIME( _In_  HWND hwnd, _In_  BOOL bFlag )
    attach_function 'WINNLSEnableIME', [:hwnd, :bool], :bool

    require 'win-ffi/user32/typedef/hcursor'

    # DWORD DragObject(
    #   _In_ HWND hwndParent,
    #   _In_ HWND hwndFrom,
    #   _In_ UINT fmt,
    #   _In_ ULONG_PTR data,
    #   _In_opt_ HCURSOR hcur)
    attach_function 'DragObject', [:hwnd, :hwnd, :uint, :ulong, :hcursor], :dword

    # WINUSERAPI VOID WINAPI SetDebugErrorLevel(_In_ DWORD dwLevel)
    attach_function 'SetDebugErrorLevel', [:dword], :void

    # WINUSERAPI BOOL WINAPI SetMessageQueue(_In_ int cMessagesMax)
    attach_function 'SetMessageQueue', [:int], :bool

    if WINDOWS_VERSION >= :vista || (WINDOWS_VERSION == :xp && WINDOWS_VERSION.sp >= 2)
      # Process and Threads
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswow64message
      def self.IsWow64Message; end

      # BOOL WINAPI IsWow64Message(void)
      attach_function 'IsWow64Message', [], :bool
    end
  end
end