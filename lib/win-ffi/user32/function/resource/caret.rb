require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createcaret
    # BOOL CreateCaret( _In_ HWND hWnd, _In_opt_ HBITMAP hBitmap, _In_ int nWidth, _In_ int nHeight )
    def self.CreateCaret(hWnd, hBitmap, nWidth, nHeight); end
    attach_function 'CreateCaret', [:hwnd, :hbitmap, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroycaret
    # BOOL DestroyCaret(void)
    def self.DestroyCaret; end
    attach_function 'DestroyCaret', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcaretblinktime
    # UINT GetCaretBlinkTime(void)
    def self.GetCaretBlinkTime; end
    attach_function 'GetCaretBlinkTime', [], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcaretpos
    # BOOL GetCaretPos( _Out_  LPPOINT lpPoint )
    def self.GetCaretPos(lpPoint); end
    attach_function 'GetCaretPos', [POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-hidecaret
    # BOOL HideCaret( _In_opt_  HWND hWnd )
    def self.HideCaret(hWnd); end
    attach_function 'HideCaret', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcaretblinktime
    # BOOL SetCaretBlinkTime( _In_  UINT uMSeconds )
    def self.SetCaretBlinkTime(uMSeconds); end
    attach_function 'SetCaretBlinkTime', [:uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setcaretpos
    # BOOL SetCaretPos( _In_  int X, _In_  int Y )
    def self.SetCaretPos(x, y); end
    attach_function 'SetCaretPos', [:int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-showcaret
    # BOOL ShowCaret( _In_opt_  HWND hWnd )
    def self.ShowCaret(hWnd); end
    attach_function 'ShowCaret', [:hwnd], :bool
  end
end