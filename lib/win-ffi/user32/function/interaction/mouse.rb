require 'win-ffi/core/struct/point'

require_relative '../../enum/interaction/mouse/keys_state'
require_relative '../../enum/interaction/mouse/event_flag'

require_relative '../../struct/interaction/mouse/move_point'
require_relative '../../struct/interaction/mouse/track_mouse_event'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646256
    # @param [FFI::Pointer] hwnd
    # @param [FFI::Pointer] pt
    # @return [true, false]
    def self.DragDetect(hwnd, pt); end
    attach_function 'DragDetect', [:hwnd, POINT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646257
    # @return [FFI::Pointer]
    def self.GetCapture; end
    attach_function 'GetCapture', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646258
    # @return [Integer]
    def self.GetDoubleClickTime; end
    attach_function 'GetDoubleClickTime', [], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646259
    # @param [Integer] cbSize
    # @param [FFI::Pointer] lppt
    # @param [FFI::Pointer] lpptBuf
    # @param [Integer] nBufPoints
    # @param [Integer] resolution
    # @return [Integer]
    def self.GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution); end
    attach_function 'GetMouseMovePointsEx', [:uint, MOUSEMOVEPOINT.ptr, :pointer, :int, :dword], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646260
    # @param [Integer] dwFlags
    # @param [Integer] dx
    # @param [Integer] dy
    # @param [Integer] dwData
    # @param [Integer] dwExtraInfo
    def self.mouse_event(dwFlags, dx, dy, dwData, dwExtraInfo); end
    attach_function 'mouse_event', [MouseEventFlag, :dword, :dword, :dword, :ulong_ptr], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646261
    # @return [true, false]
    def self.ReleaseCapture; end
    attach_function 'ReleaseCapture', [], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646262
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.SetCapture(hWnd); end
    attach_function 'SetCapture', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646263
    # @param [Integer] uInterval
    # @return [true, false]
    def self.SetDoubleClickTime(uInterval); end
    attach_function 'SetDoubleClickTime', [:uint], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646264
    # @param [true, false] fSwap
    # @return [true, false]
    def self.SwapMouseButton(fSwap); end
    attach_function 'SwapMouseButton', [:bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646265
    # @param [FFI::Pointer] lpEventTrack
    # @return [true, false]
    def self.TrackMouseEvent(lpEventTrack); end
    attach_function 'TrackMouseEvent', [TRACKMOUSEEVENT.ptr], :bool
  end
end