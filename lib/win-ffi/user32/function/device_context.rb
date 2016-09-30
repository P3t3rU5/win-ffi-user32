require 'win-ffi/user32'

require 'win-ffi/user32/typedef/hrgn'

require 'win-ffi/user32/enum/device_context/get_dc_ex_flag'
require 'win-ffi/user32/enum/device_context/change_display_settings_flag'
require 'win-ffi/user32/enum/device_context/change_display_settings_return'
require 'win-ffi/user32/enum/device_context/enum_display_devices_flag'
require 'win-ffi/user32/enum/device_context/enum_mode'
require 'win-ffi/user32/enum/device_context/enum_display_settings_ex_flag'

require 'win-ffi/user32/struct/display_device'
require 'win-ffi/gdi32/struct/devmode'

module WinFFI
  module User32
    # TODO DEVMODE
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183411(v=vs.85).aspx
    # LONG ChangeDisplaySettings(
    #   _In_  DEVMODE *lpDevMode,
    #   _In_  DWORD dwflags )
    encoded_function 'ChangeDisplaySettings', [Gdi32::DEVMODE.ptr(:in), ChangeDisplaySettingsFlag], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183413(v=vs.85).aspx
    # LONG ChangeDisplaySettingsEx(
    #   _In_  LPCTSTR lpszDeviceName,
    #   _In_  DEVMODE *lpDevMode,
    #   HWND hwnd,
    #   _In_  DWORD dwflags,
    #   _In_  LPVOID lParam )
    encoded_function 'ChangeDisplaySettingsEx',
                     [:string, Gdi32::DEVMODE.ptr(:in), :hwnd, ChangeDisplaySettingsFlag, :pointer], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162609(v=vs.85).aspx
    # BOOL EnumDisplayDevices(
    #   _In_   LPCTSTR lpDevice,
    #   _In_   DWORD iDevNum,
    #   _Out_  PDISPLAY_DEVICE lpDisplayDevice,
    #   _In_   DWORD dwFlags )
    encoded_function 'EnumDisplayDevices', [:pointer, :dword, DISPLAY_DEVICE.ptr(:out), EnumDisplayDevicesFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162611(v=vs.85).aspx
    # BOOL EnumDisplaySettings(
    #   _In_   LPCTSTR lpszDeviceName,
    #   _In_   DWORD iModeNum,
    #   _Out_  DEVMODE *lpDevMode )
    encoded_function 'EnumDisplaySettings', [:string, EnumMode, Gdi32::DEVMODE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162612(v=vs.85).aspx
    # BOOL EnumDisplaySettingsEx(
    #   _In_   LPCTSTR lpszDeviceName,
    #   _In_   DWORD iModeNum,
    #   _Out_  DEVMODE *lpDevMode,
    #   _In_   DWORD dwFlags )
    encoded_function 'EnumDisplaySettingsEx', [:string, EnumMode, Gdi32::DEVMODE.ptr(:out), EnumDisplaySettingsExFlag], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd144871(v=vs.85).aspx
    # HDC GetDC( _In_  HWND hWnd )
    attach_function 'GetDC', [:hwnd], :hdc

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd144873(v=vs.85).aspx
    # HDC GetDCEx(
    #   _In_  HWND hWnd,
    #   _In_  HRGN hrgnClip,
    #   _In_  DWORD flags )
    attach_function 'GetDCEx', [:hwnd, :hrgn, GetDCExFlag], :hdc

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162920(v=vs.85).aspx
    # int ReleaseDC(
    #   _In_  HWND hWnd,
    #   _In_  HDC hDC )
    attach_function 'ReleaseDC', [:hwnd, :hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd145201(v=vs.85).aspx
    # HWND WindowFromDC( _In_  HDC hDC )
    attach_function 'WindowFromDC', [:hdc], :hwnd
  end
end