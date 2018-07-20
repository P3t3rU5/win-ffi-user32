require 'win-ffi/gdi32/struct/devmode'

require_relative '../typedef/hrgn'
require_relative '../enum/device_context/get_dc_ex_flag'
require_relative '../enum/device_context/change_display_settings_flag'
require_relative '../enum/device_context/change_display_settings_return'
require_relative '../enum/device_context/enum_display_devices_flag'
require_relative '../enum/device_context/enum_mode'
require_relative '../enum/device_context/enum_display_settings_ex_flag'
require_relative '../struct/display_device'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changedisplaysettingsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changedisplaysettingsw
    # LONG ChangeDisplaySettings( _In_  DEVMODE *lpDevMode, _In_  DWORD dwflags )
    def self.ChangeDisplaySettings(lpDevMode, dwflags) end
    encoded_function 'ChangeDisplaySettings',
                     [Gdi32::DEVMODE.ptr(:in), ChangeDisplaySettingsFlag], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changedisplaysettingsexa
    # LONG ChangeDisplaySettingsEx(
    #   _In_  LPCTSTR lpszDeviceName,
    #   _In_  DEVMODE *lpDevMode,
    #   HWND hwnd,
    #   _In_  DWORD dwflags,
    #   _In_  LPVOID lParam )
    def self.ChangeDisplaySettingsEx(lpszDeviceName, lpDevMode, hwnd, dwflags, lParam) end
    encoded_function 'ChangeDisplaySettingsEx',
                     [:string, Gdi32::DEVMODE.ptr(:in), :hwnd, ChangeDisplaySettingsFlag, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaydevicesa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaydevicesw
    # BOOL EnumDisplayDevices(
    #   _In_   LPCTSTR lpDevice,
    #   _In_   DWORD iDevNum,
    #   _Out_  PDISPLAY_DEVICE lpDisplayDevice,
    #   _In_   DWORD dwFlags )
    def self.EnumDisplayDevices(lpDevice, iDevNum, lpDisplayDevice, dwFlags) end
    encoded_function 'EnumDisplayDevices',
                     [:pointer, :dword, DISPLAY_DEVICE.ptr(:out), EnumDisplayDevicesFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsw
    # BOOL EnumDisplaySettings( _In_   LPCTSTR lpszDeviceName, _In_   DWORD iModeNum, _Out_  DEVMODE *lpDevMode )
    def self.EnumDisplaySettings(lpszDeviceName, iModeNum, lpDevMode) end
    encoded_function 'EnumDisplaySettings', [:string, EnumMode, Gdi32::DEVMODE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexw
    # BOOL EnumDisplaySettingsEx(
    #   _In_   LPCTSTR lpszDeviceName,
    #   _In_   DWORD iModeNum,
    #   _Out_  DEVMODE *lpDevMode,
    #   _In_   DWORD dwFlags )
    def self.EnumDisplaySettingsEx(lpszDeviceName, iModeNum, lpDevMode, dwFlags) end
    encoded_function 'EnumDisplaySettingsEx',
                     [:string, EnumMode, Gdi32::DEVMODE.ptr(:out), EnumDisplaySettingsExFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdc
    # HDC GetDC( _In_  HWND hWnd )
    def self.GetDC(hWnd) end # TODO hwnd = nil
    attach_function 'GetDC', [:hwnd], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdcex
    # HDC GetDCEx( _In_  HWND hWnd, _In_  HRGN hrgnClip, _In_  DWORD flags )
    def self.GetDCEx(hWnd, hrgnClip, flags) end
    attach_function 'GetDCEx', [:hwnd, :hrgn, GetDCExFlag], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-releasedc
    # int ReleaseDC( _In_  HWND hWnd, _In_  HDC hDC )
    def self.ReleaseDC(hWnd, hDC) end
    attach_function 'ReleaseDC', [:hwnd, :hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-windowfromdc
    # HWND WindowFromDC( _In_  HDC hDC )
    def self.WindowFromDC(hDC) end
    attach_function 'WindowFromDC', [:hdc], :hwnd
  end
end
