require 'win-ffi/core/struct/rect'

require_relative '../enum/color_type'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-fillrect
    # Filled shape
    # int FillRect( _In_  HDC hDC, _In_  const RECT *lprc, _In_  HBRUSH hbr )
    def self.FillRect(hDC, lprc, hbr); end
    attach_function 'FillRect', [:hdc, RECT.ptr(:in), :hbrush], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-framerect
    # int FrameRect( _In_  HDC hDC, _In_  const RECT *lprc, _In_  HBRUSH hbr )
    def self.FrameRect(hDC, lprc, hbr); end
    attach_function 'FrameRect', [:hdc, RECT.ptr(:in), :hbrush], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invertrect
    # BOOL InvertRect( _In_  HDC hDC, _In_  const RECT *lprc )
    def self.InvertRect(hDC, lprc); end
    attach_function 'InvertRect', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadbitmapa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadbitmapw
    # Bitmap
    # HBITMAP LoadBitmap( _In_  HINSTANCE hInstance, _In_  LPCTSTR lpBitmapName )
    def self.LoadBitmap(hInstance, lpBitmapName); end
    encoded_function 'LoadBitmap', [:hinstance, :string], :hbitmap

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724371
    # DWORD GetSysColor( _In_  int nIndex )
    def self.GetSysColor(nIndex); end
    attach_function 'GetSysColor', [ColorType], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsyscolorbrush
    # Brush
    # HBRUSH GetSysColorBrush( _In_  int nIndex )
    def self.GetSysColorBrush(nIndex); end
    attach_function 'GetSysColorBrush', [ColorType], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724940
    # BOOL SetSysColors( _In_  int cElements, _In_  const INT *lpaElements, _In_  const COLORREF *lpaRgbValues )
    def self.SetSysColors(cElements, lpaElements, lpaRgbValues); end
    attach_function 'SetSysColors', [:int, :pointer, :pointer], :bool

    if WINDOWS_VERSION >= :xp
      require 'win-ffi/core/enum/error/set_last_error_ex_code'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setlasterrorex
      # Error
      # void SetLastErrorEx( _In_  DWORD dwErrCode, _In_  DWORD dwType )
      def self.SetLastErrorEx(dwErrCode, dwType); end
      attach_function 'SetLastErrorEx', [SetLastErrorExCode, :dword], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-attachthreadinput
      # Thread
      # BOOL AttachThreadInput( _In_  DWORD idAttach, _In_  DWORD idAttachTo, _In_  BOOL fAttach )
      def self.AttachThreadInput(idAttach, idAttachTo, fAttach); end
      attach_function 'AttachThreadInput', [:dword, :dword, :bool], :bool

      # Print
      require_relative '../enum/print_window_flag'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-printwindow
      # BOOL PrintWindow( HWND hwnd, HDC hdcBlt, UINT nFlags )
      def self.PrintWindow(hwnd, hdcBlt, nFlags); end
      attach_function 'PrintWindow', [:hwnd, :hdc, PrintWindowFlag], :bool

      if WINDOWS_VERSION >= :vista
        # https://msdn.microsoft.com/en-us/library/windows/desktop/gg583869
        #BOOL IsWindowRedirectedForPrint( _In_    HWND hWnd )
        def self.IsWindowRedirectedForPrint(hWnd); end
        attach_function 'IsWindowRedirectedForPrint', [:hwnd], :bool
      end
    end
  end
end