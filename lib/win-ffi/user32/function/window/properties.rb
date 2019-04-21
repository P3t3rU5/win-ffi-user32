module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633565
    # BOOL CALLBACK PropEnumProc( _In_  HWND hwnd, _In_  LPCTSTR lpszString, _In_  HANDLE hData )
    PropEnumProc = callback 'PropEnumProc', [:hwnd, :pointer, :handle], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633566
    # BOOL CALLBACK PropEnumProcEx(_In_ HWND hwnd, _In_ LPTSTR lpszString, _In_ HANDLE hData, _In_ ULONG_PTR dwData )
    PropEnumProcEx = callback 'PropEnumProcEx', [:hwnd, :pointer, :handle, :ulong_ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633562(v=vs.85).aspx
    # @param [FFI::Pointer] hWnd
    # @param [PropEnumProc] lpEnumFunc
    # @return [Integer]
    def self.EnumProps(hWnd, lpEnumFunc) end
    encoded_function 'EnumProps', [:hwnd, PropEnumProc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633563
    # @param [FFI::Pointer] hWnd
    # @param [PropEnumProcEx] lpEnumFunc
    # @param [Integer] lParam
    # @return [Integer]
    def self.EnumPropsEx(hWnd, lpEnumFunc, lParam) end
    encoded_function 'EnumPropsEx', [:hwnd, PropEnumProcEx, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633564
    # HANDLE WINAPI GetProp( _In_  HWND hWnd, _In_  LPCTSTR lpString )
    # @param [FFI::Pointer] hWnd
    # @param [String] lpEnumFunc
    # @return [FFI::Pointer]
    def self.GetProp(hWnd, lpEnumFunc) end
    encoded_function 'GetProp', [:hwnd, :string], :handle

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633567
    # @param [FFI::Pointer] hWnd
    # @param [String] lpString
    # @return [FFI::Pointer]
    def self.RemoveProp(hWnd, lpString) end
    encoded_function 'RemoveProp', [:hwnd, :string], :handle

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633568
    # @param [FFI::Pointer] hWnd
    # @param [String] lpString
    # @param [FFI::Pointer] hData
    # @return [true, false]
    def self.SetProp(hWnd, lpString, hData) end
    encoded_function 'SetProp', [:hwnd, :string, :handle], :bool
  end
end