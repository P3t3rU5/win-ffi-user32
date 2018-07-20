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
    def self.CloseDesktop(hDesktop); end
    attach_function 'CloseDesktop', [:hdesk], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682124
    # HDESK CreateDesktop(
    #   _In_        LPCTSTR lpszDesktop,
    #   _Reserved_  LPCTSTR lpszDevice,
    #   _Reserved_  DEVMODE *pDevmode,
    #   _In_        DWORD dwFlags,
    #   _In_        ACCESS_MASK dwDesiredAccess,
    #   _In_opt_    LPSECURITY_ATTRIBUTES lpsa )
    def self.CreateDesktop(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa); end
    encoded_function 'CreateDesktop', [:string, :string, :pointer, :dword, DesktopAccessFlag, SECURITY_ATTRIBUTES.ptr], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682612
    # BOOL CALLBACK EnumDesktopProc(_In_  LPTSTR lpszDesktop, _In_  LPARAM lParam )
    EnumDesktopProc = callback 'EnumDesktopProc', [:string, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682614
    # BOOL EnumDesktops(_In_opt_ HWINSTA hwinsta, _In_ DESKTOPENUMPROC lpEnumFunc, _In_ LPARAM lParam )
    def self.EnumDesktops(hwinsta, lpEnumFunc, lParam); end
    encoded_function 'EnumDesktops', [:hwinsta, EnumDesktopProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682615
    # BOOL EnumDesktopWindows(_In_opt_ HDESK hDesktop, _In_ WNDENUMPROC lpfn,  _In_ LPARAM lParam )
    def self.EnumDesktopWindows(hDesktop, lpfn, lParam); end
    attach_function 'EnumDesktopWindows', [:hdesk, EnumWindowsProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683232
    # HDESK GetThreadDesktop( _In_  DWORD dwThreadId )
    def self.GetThreadDesktop(dwThreadId); end
    attach_function 'GetThreadDesktop', [:dword], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684303
    # HDESK OpenDesktop(
    #   _In_  LPTSTR lpszDesktop,
    #   _In_  DWORD dwFlags,
    #   _In_  BOOL fInherit,
    #   _In_  ACCESS_MASK dwDesiredAccess )
    def self.OpenDesktop(lpszDesktop, dwFlags, fInherit, dwDesiredAccess); end
    encoded_function 'OpenDesktop', [:string, OpenDesktopFlag, :bool, DesktopAccessFlag], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684309
    # HDESK OpenInputDesktop(_In_ DWORD dwFlags, _In_ BOOL fInherit, _In_ ACCESS_MASK dwDesiredAccess )
    def self.OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess); end
    attach_function 'OpenInputDesktop', [:dword, :bool, DesktopAccessFlag], :hdesk

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686250
    # BOOL SetThreadDesktop( _In_ HDESK hDesktop )
    def self.SetThreadDesktop(hDesktop); end
    attach_function 'SetThreadDesktop', [:hdesk], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686347
    # BOOL SwitchDesktop( _In_  HDESK hDesktop )
    def self.SwitchDesktop(hDesktop); end
    attach_function 'SwitchDesktop', [:hdesk], :bool

    if WINDOWS_VERSION >= :vista
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682127
      # HDESK CreateDesktopEx(
      #   _In_        LPCTSTR lpszDesktop,
      #   _Reserved_  LPCTSTR lpszDevice,
      #   _Reserved_  DEVMODE *pDevmode,
      #   _In_        DWORD dwFlags,
      #   _In_        ACCESS_MASK dwDesiredAccess,
      #   _In_opt_    LPSECURITY_ATTRIBUTES lpsa,
      #   _In_        ULONG ulHeapSize,
      #   _Reserved_  PVOID pvoid)
      def self.CreateDesktopEx(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa, ulHeapSize, pvoid); end
      encoded_function 'CreateDesktopEx', [:string, :string, :pointer, :dword, DesktopAccessFlag, SECURITY_ATTRIBUTES.ptr, :ulong, :pointer], :hdesk
    end
  end
end