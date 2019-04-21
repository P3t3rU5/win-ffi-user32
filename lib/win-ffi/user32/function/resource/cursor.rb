require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

require_relative '../../typedef/hcursor'
require_relative '../../enum/resource/cursor/oem_cursor'
require_relative '../../struct/resource/cursor/info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-clipcursor
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.ClipCursor(lpRect); end
    attach_function 'ClipCursor', [RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createcursor
    # @param [FFI::Pointer] hInst
    # @param [Integer] xHotSpot
    # @param [Integer] yHotSpot
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] pvANDPlane
    # @param [FFI::Pointer] pvXORPlane
    # @return [FFI::Pointer]
    def self.CreateCursor(hInst, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane, pvXORPlane); end
    attach_function 'CreateCursor', [:hinstance, :int, :int, :int, :int, :pointer, :pointer], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroycursor
    # @param [FFI::Pointer] hCursor
    # @return [true, false]
    def self.DestroyCursor(hCursor); end
    attach_function 'DestroyCursor', [:hcursor], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipcursor
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.GetClipCursor(lpRect); end
    attach_function 'GetClipCursor', [RECT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursor
    # @return [FFI::Pointer]
    def self.GetCursor; end
    attach_function 'GetCursor', [], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursorinfo
    # @param [FFI::Pointer] pci
    # @return [true, false]
    def self.GetCursorInfo(pci); end
    attach_function 'GetCursorInfo', [CURSORINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursorpos
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetCursorPos(lpPoint); end
    attach_function 'GetCursorPos', [POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursora
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorw
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpCursorName
    # @return [FFI::Pointer]
    def self.LoadCursor(hInstance, lpCursorName); end
    encoded_function 'LoadCursor', [:hinstance, :pointer], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorfromfilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorfromfilew
    # @param [String] lpFileName
    # @return [FFI::Pointer]
    def self.LoadCursorFromFile(lpFileName); end
    encoded_function 'LoadCursorFromFile', [:string], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcursor
    # @param [FFI::Pointer] hCursor
    # @return [FFI::Pointer]
    def self.SetCursor(hCursor); end
    attach_function 'SetCursor', [:hcursor], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcursorpos
    # @param [Integer] x
    # @param [Integer] y
    # @return [true, false]
    def self.SetCursorPos(x, y); end
    attach_function 'SetCursorPos', [:int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setsystemcursor
    # @param [FFI::Pointer] hcur
    # @param [Integer] id
    # @return [true, false]
    def self.SetSystemCursor(hcur, id); end
    attach_function 'SetSystemCursor', [:hcursor, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648396(v=vs.85).aspx
    # @param [true, false] bShow
    # @return [Integer]
    def self.ShowCursor(bShow); end
    attach_function 'ShowCursor', [:bool], :int

    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getphysicalcursorpos
      # @param [FFI::Pointer] lpPoint
      # @return [true, false]
      def self.GetPhysicalCursorPos(lpPoint); end
      attach_function 'GetPhysicalCursorPos', [POINT.ptr(:out)], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setphysicalcursorpos
      # @param [Integer] x
      # @param [Integer] y
      # @return [true, false]
      def self.SetPhysicalCursorPos(x, y); end
      attach_function 'SetPhysicalCursorPos', [:int, :int], :bool
    end
  end
end