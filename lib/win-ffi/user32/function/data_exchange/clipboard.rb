require 'win-ffi/user32/enum/data_exchange/clipboard_format'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changeclipboardchain
    # BOOL WINAPI ChangeClipboardChain( _In_  HWND hWndRemove, _In_  HWND hWndNewNext )
    def self.ChangeClipboardChain(hWndRemove, hWndNewNext); end
    attach_function 'ChangeClipboardChain', [:hwnd, :hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-closeclipboard
    # BOOL WINAPI CloseClipboard(void)
    def self.CloseClipboard; end
    attach_function 'CloseClipboard', [], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-countclipboardformats
    # int WINAPI CountClipboardFormats(void)
    def self.CountClipboardFormats; end
    attach_function 'CountClipboardFormats', [], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-emptyclipboard
    # BOOL WINAPI EmptyClipboard(void)
    def self.EmptyClipboard; end
    attach_function 'EmptyClipboard', [:bool], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumclipboardformats
    # UINT WINAPI EnumClipboardFormats( _In_  UINT format )
    def self.EnumClipboardFormats(format) end
    attach_function 'EnumClipboardFormats', [:uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboarddata
    # HANDLE WINAPI GetClipboardData( _In_  UINT uFormat )
    def self.GetClipboardData(uFormat) end
    attach_function 'GetClipboardData', [:uint], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardformatnamea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardformatnamew
    # int WINAPI GetClipboardFormatName( _In_   UINT format, _Out_  LPTSTR lpszFormatName, _In_   int cchMaxCount )
    def self.GetClipboardFormatName(format, lpszFormatName, cchMaxCount) end
    encoded_function 'GetClipboardFormatName', [:uint, :string, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardowner
    # HWND WINAPI GetClipboardOwner(void)
    def self.GetClipboardOwner; end
    attach_function 'GetClipboardOwner',[], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardsequencenumber
    # DWORD WINAPI GetClipboardSequenceNumber(void)
    def self.GetClipboardSequenceNumber; end
    attach_function 'GetClipboardSequenceNumber', [], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getclipboardviewer
    # HWND WINAPI GetClipboardViewer(void)
    def self.GetClipboardViewer; end
    attach_function 'GetClipboardViewer', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getopenclipboardwindow
    # HWND WINAPI GetOpenClipboardWindow(void)
    def self.GetOpenClipboardWindow; end
    attach_function 'GetOpenClipboardWindow', [], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getpriorityclipboardformat
    # int WINAPI GetPriorityClipboardFormat(_In_  UINT *paFormatPriorityList, _In_ int cFormats )
    def self.GetPriorityClipboardFormat(paFormatPriorityList, cFormats) end
    attach_function 'GetPriorityClipboardFormat', [:pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isclipboardformatavailable
    # BOOL WINAPI IsClipboardFormatAvailable( _In_  UINT format )
    def self.IsClipboardFormatAvailable(format) end
    attach_function 'IsClipboardFormatAvailable', [:uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-openclipboard
    # BOOL WINAPI OpenClipboard( _In_opt_  HWND hWndNewOwner )
    def self.OpenClipboard(hWndNewOwner) end
    attach_function 'OpenClipboard', [:hwnd], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerclipboardformata
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerclipboardformatw
    # UINT WINAPI RegisterClipboardFormat( _In_  LPCTSTR lpszFormat )
    def self.RegisterClipboardFormat(lpszFormat) end
    encoded_function 'RegisterClipboardFormat', [:string], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setclipboarddata
    # HANDLE WINAPI SetClipboardData( _In_      UINT uFormat, _In_opt_  HANDLE hMem )
    def self.SetClipboardData(uFormat, hMem) end
    attach_function 'SetClipboardData', [:uint, :handle], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setclipboardviewer
    # HWND WINAPI SetClipboardViewer( _In_  HWND hWndNewViewer )
    def self.SetClipboardViewer(hWndNewViewer) end
    attach_function 'SetClipboardViewer', [:hwnd], :hwnd

    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-addclipboardformatlistener
      # BOOL WINAPI AddClipboardFormatListener( _In_  HWND hwnd )
      def self.AddClipboardFormatListener(hwnd); end
      attach_function 'AddClipboardFormatListener', [:hwnd], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getupdatedclipboardformats
      # BOOL WINAPI GetUpdatedClipboardFormats(_Out_ PUINT lpuiFormats, _In_ UINT cFormats, _Out_ PUINT pcFormatsOut)
      def self.GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut); end
      attach_function 'GetUpdatedClipboardFormats', [:pointer, :uint, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-removeclipboardformatlistener
      # BOOL WINAPI RemoveClipboardFormatListener( _In_  HWND hwnd )
      def self.RemoveClipboardFormatListener(hwnd); end
      attach_function 'RemoveClipboardFormatListener', [:hwnd], :bool
    end
  end
end