require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

require_relative '../../typedef/hcursor'
require_relative '../../enum/resource/cursor/oem_cursor'
require_relative '../../struct/resource/cursor/info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-clipcursor
    # BOOL ClipCursor(  _In_opt_  const RECT *lpRect )
    def self.ClipCursor(lpRect); end
    attach_function 'ClipCursor', [RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createcursor
    # HCURSOR CreateCursor(
    #   _In_opt_  HINSTANCE hInst,
    #   _In_      int xHotSpot,
    #   _In_      int yHotSpot,
    #   _In_      int nWidth,
    #   _In_      int nHeight,
    #   _In_      const VOID *pvANDPlane,
    #   _In_      const VOID *pvXORPlane )
    def self.CreateCursor(hInst, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane, pvXORPlane); end
    attach_function 'CreateCursor', [:hinstance, :int, :int, :int, :int, :pointer, :pointer], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroycursor
    # BOOL DestroyCursor( _In_  HCURSOR hCursor )
    def self.DestroyCursor(hCursor); end
    attach_function 'DestroyCursor', [:hcursor], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipcursor
    # BOOL GetClipCursor( _Out_  LPRECT lpRect )
    def self.GetClipCursor(lpRect); end
    attach_function 'GetClipCursor', [RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursor
    # HCURSOR GetCursor(void)
    def self.GetCursor; end
    attach_function 'GetCursor', [], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursorinfo
    # BOOL GetCursorInfo( _Inout_  PCURSORINFO pci )
    def self.GetCursorInfo(pci); end
    attach_function 'GetCursorInfo', [CURSORINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcursorpos
    # BOOL GetCursorPos( _Out_  LPPOINT lpPoint )
    def self.GetCursorPos(lpPoint); end
    attach_function 'GetCursorPos', [POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursora
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorw
    # HCURSOR LoadCursor( __in_opt  HINSTANCE hInstance, __in LPCTSTR lpCursorName)
    def self.LoadCursor(hInstance, lpCursorName); end
    encoded_function 'LoadCursor', [:hinstance, :pointer], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorfromfilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadcursorfromfilew
    # HCURSOR LoadCursorFromFile( _In_  LPCTSTR lpFileName )
    def self.LoadCursorFromFile(lpFileName); end
    encoded_function 'LoadCursorFromFile', [:string], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcursor
    # HCURSOR SetCursor( _In_opt_  HCURSOR hCursor )
    def self.SetCursor(hCursor); end
    attach_function 'SetCursor', [:hcursor], :hcursor

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcursorpos
    # BOOL SetCursorPos( _In_  int X, _In_  int Y )
    def self.SetCursorPos(x, y); end
    attach_function 'SetCursorPos', [:int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setsystemcursor
    # BOOL SetSystemCursor( _In_  HCURSOR hcur, _In_  DWORD id )
    def self.SetSystemCursor(hcur, id); end
    attach_function 'SetSystemCursor', [:hcursor, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648396(v=vs.85).aspx
    # int ShowCursor( _In_  BOOL bShow )
    def self.ShowCursor(bShow); end
    attach_function 'ShowCursor', [:bool], :int

    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getphysicalcursorpos
      # BOOL GetPhysicalCursorPos( _Out_  LPPOINT lpPoint )
      def self.GetPhysicalCursorPos(lpPoint); end
      attach_function 'GetPhysicalCursorPos', [POINT.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setphysicalcursorpos
      # BOOL SetPhysicalCursorPos( _In_  int X, _In_  int Y )
      def self.SetPhysicalCursorPos(x, y); end
      attach_function 'SetPhysicalCursorPos', [:int, :int], :bool
    end
  end
end