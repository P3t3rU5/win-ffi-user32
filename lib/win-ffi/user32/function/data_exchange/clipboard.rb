require 'win-ffi/user32/enum/data_exchange/clipboard_format'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changeclipboardchain
    # @param [FFI::Pointer] hWndRemove
    # @param [FFI::Pointer] hWndNewNext
    # @return [true, false]
    def self.ChangeClipboardChain(hWndRemove, hWndNewNext); end
    attach_function 'ChangeClipboardChain', [:hwnd, :hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-closeclipboard
    # @return [true, false]
    def self.CloseClipboard; end
    attach_function 'CloseClipboard', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-countclipboardformats
    # @return [Integer]
    def self.CountClipboardFormats; end
    attach_function 'CountClipboardFormats', [], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-emptyclipboard
    # @return [true, false]
    def self.EmptyClipboard; end
    attach_function 'EmptyClipboard', [:bool], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumclipboardformats
    # @param [Integer] format
    # @return [Integer]
    def self.EnumClipboardFormats(format) end
    attach_function 'EnumClipboardFormats', [:uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboarddata
    # @param [Integer] uFormat
    # @return [FFI::Pointer]
    def self.GetClipboardData(uFormat) end
    attach_function 'GetClipboardData', [:uint], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardformatnamea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardformatnamew
    # @param [Integer] format
    # @param [String] lpszFormatName
    # @param [Integer] cchMaxCount
    # @return [Integer]
    def self.GetClipboardFormatName(format, lpszFormatName, cchMaxCount) end
    encoded_function 'GetClipboardFormatName', [:uint, :string, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardowner
    # @return [FFI::Pointer]
    def self.GetClipboardOwner; end
    attach_function 'GetClipboardOwner',[], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardsequencenumber
    # @return [Integer]
    def self.GetClipboardSequenceNumber; end
    attach_function 'GetClipboardSequenceNumber', [], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardviewer
    # @return [FFI::Pointer]
    def self.GetClipboardViewer; end
    attach_function 'GetClipboardViewer', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getopenclipboardwindow
    # @return [FFI::Pointer]
    def self.GetOpenClipboardWindow; end
    attach_function 'GetOpenClipboardWindow', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getpriorityclipboardformat
    # @param [FFI::Pointer] paFormatPriorityList
    # @param [Integer] cFormats
    # @return [Integer]
    def self.GetPriorityClipboardFormat(paFormatPriorityList, cFormats) end
    attach_function 'GetPriorityClipboardFormat', [:pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isclipboardformatavailable
    # @param [Integer] format
    # @return [true, false]
    def self.IsClipboardFormatAvailable(format) end
    attach_function 'IsClipboardFormatAvailable', [:uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-openclipboard
    # @param [FFI::Pointer] hWndNewOwner
    # @return [true, false]
    def self.OpenClipboard(hWndNewOwner) end
    attach_function 'OpenClipboard', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerclipboardformata
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerclipboardformatw
    # @param [String] lpszFormat
    # @return [Integer]
    def self.RegisterClipboardFormat(lpszFormat) end
    encoded_function 'RegisterClipboardFormat', [:string], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setclipboarddata
    # @param [Integer] uFormat
    # @param [FFI::Pointer] hMem
    # @return [FFI::Pointer]
    def self.SetClipboardData(uFormat, hMem) end
    attach_function 'SetClipboardData', [:uint, :handle], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setclipboardviewer
    # @param [FFI::Pointer] hWndNewViewer
    # @return [FFI::Pointer]
    def self.SetClipboardViewer(hWndNewViewer) end
    attach_function 'SetClipboardViewer', [:hwnd], :hwnd

    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-addclipboardformatlistener
      # @param [FFI::Pointer] hwnd
      # @return [true, false]
      def self.AddClipboardFormatListener(hwnd); end
      attach_function 'AddClipboardFormatListener', [:hwnd], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdatedclipboardformats
      # @param [FFI::Pointer] lpuiFormats
      # @param [Integer] cFormats
      # @param [FFI::Pointer] pcFormatsOut
      # @return [true, false]
      def self.GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut); end
      attach_function 'GetUpdatedClipboardFormats', [:pointer, :uint, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-removeclipboardformatlistener
      # BOOL WINAPI RemoveClipboardFormatListener( _In_  HWND hwnd )
      # @param [FFI::Pointer] hwnd
      # @return [true, false]
      def self.RemoveClipboardFormatListener(hwnd); end
      attach_function 'RemoveClipboardFormatListener', [:hwnd], :bool
    end
  end
end