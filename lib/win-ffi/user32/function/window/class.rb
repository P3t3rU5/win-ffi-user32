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
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpClassName
    # @param [FFI::Pointer] lpWndClass
    # @return [true, false]
    def self.GetClassInfo(hInstance, lpClassName, lpWndClass) end
    encoded_function 'GetClassInfo', [:hinstance, :pointer, WNDCLASS.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633579
    # @param [FFI::Pointer] hinst
    # @param [String] lpszClass
    # @param [FFI::Pointer] lpwcx
    # @return [true, false]
    def self.GetClassInfoEx(hinst, lpszClass, lpwcx) end
    encoded_function 'GetClassInfoEx', [:hinstance, :string, WNDCLASSEX.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633580
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetClassLong(hWnd, nIndex) end
    encoded_function 'GetClassLong', [:hwnd, GetClassLongFlag], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633582
    # @param [FFI::Pointer] hWnd
    # @param [String] lpClassName
    # @param [Integer] nMaxCount
    # @return [Integer]
    def self.GetClassName(hWnd, lpClassName, nMaxCount) end
    encoded_function 'GetClassName', [:hwnd, :string, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633583
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetClassWord(hWnd, nIndex) end
    attach_function 'GetClassWord', [:hwnd, :int], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633584
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetWindowLong(hWnd, nIndex) end
    encoded_function 'GetWindowLong', [:hwnd, WindowLong], :long

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633583
    # The function is provided only for compatibility with 16-bit versions of Windows
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetWindowWord(hWnd, nIndex) end
    attach_function 'GetWindowWord', [:hwnd, :int], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633586
    # @param [FFI::Pointer] lpWndClass
    # @return [Integer]
    def self.RegisterClass(lpWndClass) end
    encoded_function 'RegisterClass', [WNDCLASS.ptr(:in)], :atom

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633587
    # @param [FFI::Pointer] lpwcx
    # @return [Integer]
    def self.RegisterClassEx(lpwcx) end
    encoded_function 'RegisterClassEx', [WNDCLASSEX.ptr(:in)], :atom

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633588
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @param [Integer] dwNewLong
    # @return [Integer]
    def self.SetClassLong(hWnd, nIndex, dwNewLong) end
    encoded_function 'SetClassLong', [:hwnd, GetClassLongFlag, :long], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633590
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @param [Integer] wNewWord
    # @return [Integer]
    def self.SetClassWord(hWnd, nIndex, wNewWord) end
    attach_function 'SetClassWord', [:hwnd, :int, :word], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633591
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @param [Integer] dwNewLong
    # @return [Integer]
    def self.SetWindowLong(hWnd, nIndex, dwNewLong) end
    encoded_function 'SetWindowLong', [:hwnd, WindowLong, :long], :long

      # WORD SetWindowWord( _In_ HWND hWnd, _In_ int nIndex, _In_ WORD wNewWord)
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIndex
    # @param [Integer] wNewWord
    # @return [Integer]
    def self.SetWindowWord(hWnd, nIndex, wNewWord) end
    attach_function 'SetWindowWord', [:hwnd, :int, :word], :word

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644899
    # @param [FFI::Pointer] lpClassName
    # @param [FFI::Pointer] hInstance
    # @return [true, false]
    def self.UnregisterClass(lpClassName, hInstance) end
    encoded_function 'UnregisterClass', [:pointer, :hinstance], :bool

    if WinFFI.x64?
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633581
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nIndex
      # @return [Integer]
      def self.GetWindowLongPtr(hWnd, nIndex) end
      encoded_function 'GetWindowLongPtr', [:hwnd, :int], :long_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633581
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nIndex
      # @return [Integer]
      def self.GetClassLongPtr(hWnd, nIndex) end
      encoded_function 'GetClassLongPtr', [:hwnd, GetClassLongPtrFlag], :ulong_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633589
      # ULONG_PTR SetClassLongPtr( _In_ HWND     hWnd, _In_ int      nIndex, _In_ LONG_PTR dwNewLong)
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nIndex
      # @param [Integer] dwNewLong
      # @return [Integer]
      # def self.SetClassLongPtr(hWnd, nIndex, dwNewLong) end
      # attach_function 'SetClassLongPtr', [:hwnd, GetClassLongPtrFlag, :long], :ulong_ptr

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644898
      # @param [FFI::Pointer] hWnd
      # @param [Integer] nIndex
      # @param [Integer] dwNewLong
      # @return [Integer]
      def self.SetWindowLongPtr(hWnd, nIndex, dwNewLong) end
      encoded_function 'SetWindowLongPtr',  [:hwnd, WindowLong, :long], :long_ptr
    end
  end
end