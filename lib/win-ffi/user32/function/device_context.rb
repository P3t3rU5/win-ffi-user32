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
    # @param [FFI::Pointer] lpDevMode
    # @param [Integer] dwflags
    # @return [Integer]
    def self.ChangeDisplaySettings(lpDevMode, dwflags) end
    encoded_function 'ChangeDisplaySettings',
                     [Gdi32::DEVMODE.ptr(:in), ChangeDisplaySettingsFlag], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changedisplaysettingsexa
    # @param [String] lpszDeviceName
    # @param [FFI::Pointer] lpDevMode
    # @param [FFI::Pointer] hwnd
    # @param [Integer] dwflags
    # @param [FFI::Pointer] lParam
    # @return [Integer]
    def self.ChangeDisplaySettingsEx(lpszDeviceName, lpDevMode, hwnd, dwflags, lParam) end
    encoded_function 'ChangeDisplaySettingsEx',
                     [:string, Gdi32::DEVMODE.ptr(:in), :hwnd, ChangeDisplaySettingsFlag, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaydevicesa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaydevicesw
    # @param [FFI::Pointer] lpDevice
    # @param [Integer] iDevNum
    # @param [FFI::Pointer] lpDisplayDevice
    # @param [Integer] dwFlags
    # @return [true, false]
    def self.EnumDisplayDevices(lpDevice, iDevNum, lpDisplayDevice, dwFlags) end
    encoded_function 'EnumDisplayDevices',
                     [:pointer, :dword, DISPLAY_DEVICE.ptr(:out), EnumDisplayDevicesFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsw
    # @param [String] lpszDeviceName
    # @param [Integer] iModeNum
    # @param [FFI::Pointer] lpDevMode
    # @return [true, false]
    def self.EnumDisplaySettings(lpszDeviceName, iModeNum, lpDevMode) end
    encoded_function 'EnumDisplaySettings', [:string, EnumMode, Gdi32::DEVMODE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexw
    # @param [String] lpszDeviceName
    # @param [Integer] iModeNum
    # @param [FFI::Pointer] lpDevMode
    # @param [Integer] dwFlags
    # @return [true, false]
    def self.EnumDisplaySettingsEx(lpszDeviceName, iModeNum, lpDevMode, dwFlags) end
    encoded_function 'EnumDisplaySettingsEx',
                     [:string, EnumMode, Gdi32::DEVMODE.ptr(:out), EnumDisplaySettingsExFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdc
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.GetDC(hWnd) end # TODO hwnd = nil
    attach_function 'GetDC', [:hwnd], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdcex
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hrgnClip
    # @param [Integer] flags
    # @return [FFI::Pointer]
    def self.GetDCEx(hWnd, hrgnClip, flags) end
    attach_function 'GetDCEx', [:hwnd, :hrgn, GetDCExFlag], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-releasedc
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hDC
    # @return [Integer]
    def self.ReleaseDC(hWnd, hDC) end
    attach_function 'ReleaseDC', [:hwnd, :hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-windowfromdc
    # @param [FFI::Pointer] hDC
    # @return [FFI::Pointer]
    def self.WindowFromDC(hDC) end
    attach_function 'WindowFromDC', [:hdc], :hwnd
  end
end
