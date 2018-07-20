require_relative '../../enum/window/function/get_class_long_flag'
require_relative '../../enum/window/function/get_class_long_ptr_flag'
require_relative '../../enum/window/function/window_long'
require_relative '../../struct/window/class/wndclass'
require_relative '../../struct/window/class/wndclassex'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633578
    # The GetClassInfo function has been superseded by the GetClassInfoEx function
    # BOOL GetClassInfo( _In_opt_  HINSTANCE hInstance, _In_ LPCTSTR lpClassName, _Out_ LPWNDCLASS lpWndClass )
    def self.GetClassInfo(hInstance, lpClassName, lpWndClass) end
    encoded_function 'GetClassInfo', [:hinstance, :pointer, WNDCLASS.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633579
    # BOOL GetClassInfoEx( _In_opt_  HINSTANCE hinst, _In_      LPCTSTR lpszClass, _Out_     LPWNDCLASSEX lpwcx )
    def self.GetClassInfoEx(hinst, lpszClass, lpwcx) end
    encoded_function 'GetClassInfoEx', [:hinstance, :string, WNDCLASSEX.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633580
    # DWORD GetClassLong( __in  HWND hWnd, __in  int nIndex)
    def self.GetClassLong(hWnd, nIndex) end
    encoded_function 'GetClassLong', [:hwnd, GetClassLongFlag], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633582
    # int GetClassName( _In_   HWND hWnd, _Out_  LPTSTR lpClassName, _In_   int nMaxCount )
    def self.GetClassName(hWnd, lpClassName, nMaxCount) end
    encoded_function 'GetClassName', [:hwnd, :string, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633583
    # WORD GetClassWord( _In_  HWND hWnd, _In_  int nIndex )
    def self.GetClassWord(hWnd, nIndex) end
    attach_function 'GetClassWord', [:hwnd, :int], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633584
    # LONG GetWindowLong( __in  HWND hWnd, __in  int nIndex)
    def self.GetWindowLong(hWnd, nIndex) end
    encoded_function 'GetWindowLong', [:hwnd, WindowLong], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633583
    # The function is provided only for compatibility with 16-bit versions of Windows
    # WORD GetWindowWord( _In_ HWND hWnd, _In_ int nIndex)
    def self.GetWindowWord(hWnd, nIndex) end
    attach_function 'GetWindowWord', [:hwnd, :int], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633586
    # ATOM RegisterClass( _In_  const WNDCLASS *lpWndClass )
    def self.RegisterClass(lpWndClass) end
    encoded_function 'RegisterClass', [WNDCLASS.ptr], :atom

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633587
    # ATOM RegisterClassEx( __in  const WNDCLASSEX *lpwcx )
    def self.RegisterClassEx(lpwcx) end
    encoded_function 'RegisterClassEx', [WNDCLASSEX.ptr], :atom

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633588
    # DWORD SetClassLong( __in  HWND hWnd, __in  int nIndex, __in  LONG dwNewLong)
    def self.SetClassLong(hWnd, nIndex, dwNewLong) end
    encoded_function 'SetClassLong', [:hwnd, GetClassLongFlag, :long], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633590
    # WORD SetClassWord( _In_  HWND hWnd, _In_  int nIndex, _In_  WORD wNewWord )
    def self.SetClassWord(hWnd, nIndex, wNewWord) end
    attach_function 'SetClassWord', [:hwnd, :int, :word], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633591
    # LONG SetWindowLong( __in  HWND hWnd, __in  int nIndex, __in  LONG dwNewLong)
    def self.SetWindowLong(hWnd, nIndex, dwNewLong) end
    encoded_function 'SetWindowLong', [:hwnd, WindowLong, :long], :long

    # WORD SetWindowWord( _In_ HWND hWnd, _In_ int nIndex, _In_ WORD wNewWord)
    def self.SetWindowWord(hWnd, nIndex, wNewWord) end
    attach_function 'SetWindowWord', [:hwnd, :int, :word], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644899
    # BOOL UnregisterClass( __in      LPCTSTR   lpClassName, __in_opt  HINSTANCE hInstance)
    def self.UnregisterClass(lpClassName, hInstance) end
    encoded_function 'UnregisterClass', [:pointer, :hinstance], :bool

    if WinFFI.x64?
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633581
      # LONG_PTR GetWindowLongPtr( __in  HWND hWnd, __in  int nIndex)
      def self.GetWindowLongPtr(hWnd, nIndex) end
      encoded_function 'GetWindowLongPtr', [:hwnd, :int], :long_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633581
      # ULONG_PTR GetClassLongPtr( __in  HWND hWnd, __in  int nIndex)
      def self.GetClassLongPtr(hWnd, nIndex) end
      encoded_function 'GetClassLongPtr', [:hwnd, GetClassLongPtrFlag], :ulong_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633589
      # ULONG_PTR SetClassLongPtr( _In_ HWND     hWnd, _In_ int      nIndex, _In_ LONG_PTR dwNewLong)
      # def self.SetClassLongPtr(hWnd, nIndex, dwNewLong) end
      # attach_function 'SetClassLongPtr', [:hwnd, GetClassLongPtrFlag, :long], :ulong_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644898
      # LONG_PTR SetWindowLongPtr( __in  HWND hWnd, __in  int nIndex, __in  LONG_PTR dwNewLong)
      def self.SetWindowLongPtr(hWnd, nIndex, dwNewLong) end
      encoded_function 'SetWindowLongPtr',  [:hwnd, WindowLong, :long], :long_ptr
    end
  end
end