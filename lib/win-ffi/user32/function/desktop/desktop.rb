require 'win-ffi/user32/enum/desktop/desktop_access_flag'
require 'win-ffi/user32/enum/desktop/open_desktop_flag'

require 'win-ffi/core/struct/security_attributes'

require 'win-ffi/user32/function/window'

module WinFFI
  module User32

    typedef :pointer, :hdesk
    typedef :pointer, :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682024
    # BOOL CloseDesktop( _In_  HDESK hDesktop )
    # @param [FFI::Pointer] hDesktop
    # @return [true, false]
    def self.CloseDesktop(hDesktop) end
    attach_function 'CloseDesktop', [:hdesk], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682124
    # @param [String] lpszDesktop
    # @param [String] lpszDevice
    # @param [FFI::Pointer] pDevmode
    # @param [Integer] dwFlags
    # @param [Integer] dwDesiredAccess
    # @param [FFI::Pointer] lpsa
    # @return [FFI::Pointer]
    def self.CreateDesktop(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa) end
    encoded_function 'CreateDesktop', [:string, :string, :pointer, :dword, DesktopAccessFlag, SECURITY_ATTRIBUTES.ptr], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682612
    # BOOL CALLBACK EnumDesktopProc(_In_  LPTSTR lpszDesktop, _In_  LPARAM lParam )
    EnumDesktopProc = callback 'EnumDesktopProc', [:string, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682614
    # @param [FFI::Pointer] hwinsta
    # @param [EnumDesktopProc] lpEnumFunc
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumDesktops(hwinsta, lpEnumFunc, lParam) end
    encoded_function 'EnumDesktops', [:hwinsta, EnumDesktopProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682615
    # @param [FFI::Pointer] hDesktop
    # @param [EnumWindowsProc] lpfn
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumDesktopWindows(hDesktop, lpfn, lParam) end
    attach_function 'EnumDesktopWindows', [:hdesk, EnumWindowsProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683232
    # @param [Integer] dwThreadId
    # @return [FFI::Pointer]
    def self.GetThreadDesktop(dwThreadId) end
    attach_function 'GetThreadDesktop', [:dword], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684303
    # @param [String] lpszDesktop
    # @param [Integer] dwFlags
    # @param [true, false] fInherit
    # @param [Integer] dwDesiredAccess
    # @return [FFI::Pointer]
    def self.OpenDesktop(lpszDesktop, dwFlags, fInherit, dwDesiredAccess) end
    encoded_function 'OpenDesktop', [:string, OpenDesktopFlag, :bool, DesktopAccessFlag], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684309
    # @param [Integer] dwFlags
    # @param [true, false] fInherit
    # @param [Integer] dwDesiredAccess
    # @return [FFI::Pointer]
    def self.OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess) end
    attach_function 'OpenInputDesktop', [:dword, :bool, DesktopAccessFlag], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686250
    # @param [FFI::Pointer] hDesktop
    # @return [true, false]
    def self.SetThreadDesktop(hDesktop) end
    attach_function 'SetThreadDesktop', [:hdesk], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686347
    # @param [FFI::Pointer] hDesktop
    # @return [true, false]
    def self.SwitchDesktop(hDesktop) end
    attach_function 'SwitchDesktop', [:hdesk], :bool

    if WINDOWS_VERSION >= :vista
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682127
      # @param [String] lpszDesktop
      # @param [String] lpszDevice
      # @param [FFI::Pointer] pDevmode
      # @param [Integer] dwFlags
      # @param [Integer] dwDesiredAccess
      # @param [FFI::Pointer] lpsa
      # @param [Integer] ulHeapSize
      # @param [FFI::Pointer] pvoid
      def self.CreateDesktopEx(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa, ulHeapSize, pvoid) end
      encoded_function 'CreateDesktopEx', [:string, :string, :pointer, :dword, DesktopAccessFlag, SECURITY_ATTRIBUTES.ptr, :ulong, :pointer], :hdesk
    end
  end
end