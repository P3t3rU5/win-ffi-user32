require 'win-ffi/user32/enum/desktop/user_object_information_flag'
require 'win-ffi/user32/enum/desktop/desktop_access_flag'
require 'win-ffi/user32/enum/desktop/create_windows_station_flag'

require 'win-ffi/core/struct/security_attributes'

require 'win-ffi/user32/enum/desktop/window_station_security_and_access_rights'

module WinFFI
  module User32

    typedef :pointer, :hwinsta


    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682047
    # BOOL CloseWindowStation( _In_  HWINSTA hWinSta )
    def self.CloseWindowStation(hWinSta); end
    attach_function 'CloseWindowStation', [:hwinsta], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682496
    # HWINSTA CreateWindowStation(
    #   _In_opt_  LPCTSTR lpwinsta,
    #   DWORD dwFlags,
    #   _In_      ACCESS_MASK dwDesiredAccess,
    #   _In_opt_  LPSECURITY_ATTRIBUTES lpsa )
    def self.CreateWindowStation(dwDesiredAccess, lpsa); end
    encoded_function 'CreateWindowStation', [:string, CreateWindowsStationFlag, WindowStationSecurityAndAccessRights, SECURITY_ATTRIBUTES.ptr], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682643
    # BOOL CALLBACK EnumWindowStationProc(_In_ LPTSTR lpszWindowStation, _In_ LPARAM lParam )
    EnumWindowStationProc = callback 'EnumWindowStationProc', [:string, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682644
    # BOOL EnumWindowStations(_In_  WINSTAENUMPROC lpEnumFunc, _In_  LPARAM lParam )
    def self.EnumWindowStations(lpEnumFunc, lParam); end
    encoded_function 'EnumWindowStations', [EnumWindowStationProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683225
    # HWINSTA GetProcessWindowStation(void)
    def self.GetProcessWindowStation; end
    attach_function 'GetProcessWindowStation', [], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683238
    # BOOL GetUserObjectInformation(
    #   _In_       HANDLE hObj,
    #   _In_       int nIndex,
    #   _Out_opt_  PVOID pvInfo,
    #   _In_       DWORD nLength,
    #   _Out_opt_  LPDWORD lpnLengthNeeded )
    def self.GetUserObjectInformation(hObj, nIndex, pvInfo, nLength, lpnLengthNeeded); end
    encoded_function 'GetUserObjectInformation', [:handle, UserObjectInformationFlag, :pointer, :dword, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684339
    # HWINSTA OpenWindowStation(
    #   _In_  LPTSTR lpszWinSta,
    #   _In_  BOOL fInherit,
    #   _In_  ACCESS_MASK dwDesiredAccess )
    def self.OpenWindowStation(lpszWinSta, fInherit, dwDesiredAccess); end
    encoded_function 'OpenWindowStation', [:string, :bool, DesktopAccessFlag], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686232
    # BOOL SetProcessWindowStation( _In_  HWINSTA hWinSta )
    def self.SetProcessWindowStation(hWinSta); end
    attach_function 'SetProcessWindowStation', [:hwinsta], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686287
    # BOOL SetUserObjectInformation(
    #   _In_  HANDLE hObj,
    #   _In_  int nIndex,
    #   _In_  PVOID pvInfo,
    #   _In_  DWORD nLength )
    def self.SetUserObjectInformation(hObj, nIndex, pvInfo, nLength); end
    encoded_function 'SetUserObjectInformation', [:handle, UserObjectInformationFlag, :pointer, :dword], :bool

    if WINDOWS_VERSION >= :xp

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getuserobjectsecurity
      # BOOL GetUserObjectSecurity(
      #   _In_        HANDLE                hObj,
      #   _In_        PSECURITY_INFORMATION pSIRequested,
      #   _Inout_opt_ PSECURITY_DESCRIPTOR  pSD,
      #   _In_        DWORD                 nLength,
      #   _Out_       LPDWORD               lpnLengthNeeded)
      def self.GetUserObjectSecurity(hObj, pSIRequested, pSD, nLength, lpnLengthNeeded); end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer, :dword, :dword], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setuserobjectsecurity
      # BOOL SetUserObjectSecurity(
      #   _In_ HANDLE                hObj,
      #   _In_ PSECURITY_INFORMATION pSIRequested,
      #   _In_ PSECURITY_DESCRIPTOR  pSID)
      def self.SetUserObjectSecurity(hObj, pSIRequested, pSID); end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer], :bool
    end
  end
end