require 'win-ffi/core/struct/rect'

require_relative '../enum/color_type'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-fillrect
    # Filled shape
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] lprc
    # @param [FFI::Pointer] hbr
    # @return [Integer]
    def self.FillRect(hDC, lprc, hbr); end
    attach_function 'FillRect', [:hdc, RECT.ptr(:in), :hbrush], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-framerect
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] lprc
    # @param [FFI::Pointer] hbr
    # @return [Integer]
    def self.FrameRect(hDC, lprc, hbr); end
    attach_function 'FrameRect', [:hdc, RECT.ptr(:in), :hbrush], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-invertrect
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.InvertRect(hDC, lprc); end
    attach_function 'InvertRect', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadbitmapa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadbitmapw
    # Bitmap
    # @param [FFI::Pointer] hInstance
    # @param [String] lpBitmapName
    # @return [FFI::Pointer]
    def self.LoadBitmap(hInstance, lpBitmapName); end
    encoded_function 'LoadBitmap', [:hinstance, :string], :hbitmap

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724371
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetSysColor(nIndex); end
    attach_function 'GetSysColor', [ColorType], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsyscolorbrush
    # Brush
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetSysColorBrush(nIndex); end
    attach_function 'GetSysColorBrush', [ColorType], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724940
    # @param [Integer] cElements
    # @param [FFI::Pointer] lpaElements
    # @param [FFI::Pointer] lpaRgbValues
    # @return [true, false]
    def self.SetSysColors(cElements, lpaElements, lpaRgbValues); end
    attach_function 'SetSysColors', [:int, :pointer, :pointer], :bool

    if WINDOWS_VERSION >= :xp
      require 'win-ffi/core/enum/error/set_last_error_ex_code'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setlasterrorex
      # Error
      # @param [Integer] dwErrCode
      # @param [Integer] dwType
      def self.SetLastErrorEx(dwErrCode, dwType); end
      attach_function 'SetLastErrorEx', [SetLastErrorExCode, :dword], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-attachthreadinput
      # Thread
      # @param [Integer] idAttach
      # @param [Integer] idAttachTo
      # @param [true, false] fAttach
      # @return [true, false]
      def self.AttachThreadInput(idAttach, idAttachTo, fAttach); end
      attach_function 'AttachThreadInput', [:dword, :dword, :bool], :bool

      # Print
      require_relative '../enum/print_window_flag'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-printwindow
      # @param [FFI::Pointer] hwnd
      # @param [FFI::Pointer] hdcBlt
      # @param [Integer] nFlags
      # @return [true, false]
      def self.PrintWindow(hwnd, hdcBlt, nFlags); end
      attach_function 'PrintWindow', [:hwnd, :hdc, PrintWindowFlag], :bool

      if WINDOWS_VERSION >= :vista
        # https://msdn.microsoft.com/en-us/library/windows/desktop/gg583869
        # @param [FFI::Pointer] hWnd
        # @return [true, false]
        def self.IsWindowRedirectedForPrint(hWnd); end
        attach_function 'IsWindowRedirectedForPrint', [:hwnd], :bool
      end
    end
  end
end