require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

require_relative '../enum/multiple_display_monitors/monitor_from_point_flag'

require_relative '../struct/multiple_display_monitors/monitor_info'

module WinFFI
  module User32

    typedef :pointer, :hmonitor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nc-winuser-monitorenumproc
    # BOOL CALLBACK MonitorEnumProc(
    #   _In_  HMONITOR hMonitor,
    #   _In_  HDC hdcMonitor,
    #   _In_  LPRECT lprcMonitor,
    #   _In_  LPARAM dwData )
    MonitorEnumProc = callback 'MonitorEnumProc', [:hmonitor, :hdc, RECT.ptr(:in), :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaymonitors
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprcClip
    # @param [MonitorEnumProc] lpfnEnum
    # @param [Integer] dwData
    # @return [true, false]
    def self.EnumDisplayMonitors(hdc, lprcClip, lpfnEnum, dwData) end
    attach_function 'EnumDisplayMonitors', [:hdc, RECT.ptr(:in), MonitorEnumProc, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmonitorinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmonitorinfow
    # @param [FFI::Pointer] hMonitor
    # @param [FFI::Pointer] dwFlags
    # @return [true, false]
    def self.GetMonitorInfo(hMonitor, dwFlags) end
    encoded_function 'GetMonitorInfo', [:hmonitor, MONITORINFO.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-monitorfrompoint
    # @param [POINT] pt
    # @param [Integer] lpmi
    # @return [FFI::Pointer]
    def self.MonitorFromPoint(pt, lpmi) end
    attach_function 'MonitorFromPoint', [POINT, MonitorFromPointFlag], :hmonitor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-monitorfromrect
    # @param [FFI::Pointer] lprc
    # @param [Integer] dwFlags
    # @return [FFI::Pointer]
    def self.MonitorFromRect(lprc, dwFlags) end
    attach_function 'MonitorFromRect', [RECT.ptr(:in), MonitorFromPointFlag], :hmonitor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-monitorfromwindow
    # @param [FFI::Pointer] hwnd
    # @param [Integer] dwFlags
    # @return [FFI::Pointer]
    def self.MonitorFromWindow(hwnd, dwFlags) end
    attach_function 'MonitorFromWindow', [:hwnd, MonitorFromPointFlag], :hmonitor
  end
end