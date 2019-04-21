require 'win-ffi/user32/enum/desktop/user_object_information_flag'
require 'win-ffi/user32/enum/desktop/desktop_access_flag'
require 'win-ffi/user32/enum/desktop/create_windows_station_flag'

require 'win-ffi/core/struct/security_attributes'

require 'win-ffi/user32/enum/desktop/window_station_security_and_access_rights'

module WinFFI
  module User32

    typedef :pointer, :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682047
    # @param [FFI::Pointer] hWinSta
    # @return [true, false]
    def self.CloseWindowStation(hWinSta); end
    attach_function 'CloseWindowStation', [:hwinsta], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682496
    # @param [String] lpwinsta
    # @param [Integer] dwFlags
    # @param [Integer] dwDesiredAccess
    # @param [FFI::Pointer] lpsa
    # @return [FFI::Pointer]
    def self.CreateWindowStation(lpwinsta, dwFlags, dwDesiredAccess, lpsa); end
    encoded_function 'CreateWindowStation', [:string, CreateWindowsStationFlag, WindowStationSecurityAndAccessRights, SECURITY_ATTRIBUTES.ptr], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682643
    # BOOL CALLBACK EnumWindowStationProc(_In_ LPTSTR lpszWindowStation, _In_ LPARAM lParam )
    EnumWindowStationProc = callback 'EnumWindowStationProc', [:string, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682644
    # @param [EnumWindowStationProc] lpEnumFunc
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumWindowStations(lpEnumFunc, lParam) end
    encoded_function 'EnumWindowStations', [EnumWindowStationProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683225
    # @return [FFI::Pointer]
    def self.GetProcessWindowStation; end
    attach_function 'GetProcessWindowStation', [], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683238
    # @param [FFI::Pointer] hObj
    # @param [Integer] nIndex
    # @param [FFI::Pointer] pvInfo
    # @param [Integer] nLength
    # @param [FFI::Pointer] lpnLengthNeeded
    # @return [true, false]
    def self.GetUserObjectInformation(hObj, nIndex, pvInfo, nLength, lpnLengthNeeded) end
    encoded_function 'GetUserObjectInformation', [:handle, UserObjectInformationFlag, :pointer, :dword, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684339
    # @param [String] lpszWinSta
    # @param [true, false] fInherit
    # @param [Integer] dwDesiredAccess
    # @return [FFI::Pointer]
    def self.OpenWindowStation(lpszWinSta, fInherit, dwDesiredAccess) end
    encoded_function 'OpenWindowStation', [:string, :bool, DesktopAccessFlag], :hwinsta

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686232
    # @param [FFI::Pointer] hWinSta
    # @return [true, false]
    def self.SetProcessWindowStation(hWinSta) end
    attach_function 'SetProcessWindowStation', [:hwinsta], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686287
    # @param [FFI::Pointer] hObj
    # @param [Integer] nIndex
    # @param [FFI::Pointer] pvInfo
    # @param [Integer] nLength
    # @return [true, false]
    def self.SetUserObjectInformation(hObj, nIndex, pvInfo, nLength) end
    encoded_function 'SetUserObjectInformation', [:handle, UserObjectInformationFlag, :pointer, :dword], :bool

    if WINDOWS_VERSION >= :xp

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getuserobjectsecurity
      # @param [FFI::Pointer] hObj
      # @param [FFI::Pointer] pSIRequested
      # @param [FFI::Pointer] pSD
      # @param [Integer] nLength
      # @param [Integer] lpnLengthNeeded
      # @return [true, false]
      def self.GetUserObjectSecurity(hObj, pSIRequested, pSD, nLength, lpnLengthNeeded) end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer, :dword, :dword], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setuserobjectsecurity
      # @param [FFI::Pointer] hObj
      # @param [FFI::Pointer] pSIRequested
      # @param [FFI::Pointer] pSID
      # @return [true, false]
      def self.SetUserObjectSecurity(hObj, pSIRequested, pSID); end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer], :bool
    end
  end
end