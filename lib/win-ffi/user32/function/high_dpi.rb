require 'win-ffi/user32/enum/window/style/window_style'
require 'win-ffi/user32/enum/window/style/window_style_ex'
require 'win-ffi/user32/enum/high_dpi/dpi_awareness_context'
require 'win-ffi/core/struct/rect'
require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    if WindowsVersion >= 8.1
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn384110(v=vs.85).aspx
      # BOOL LogicalToPhysicalPointForPerMonitorDPI(
      # _In_    HWND    hwnd,
      # _Inout_ LPPOINT lpPoint )
      attach_function 'LogicalToPhysicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn384112(v=vs.85).aspx
      # BOOL PhysicalToLogicalPointForPerMonitorDPI(_In_    HWND    hwnd, _Inout_ LPPOINT lpPoint);
      attach_function 'PhysicalToLogicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      if WindowsVersion >= 10
        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748618(v=vs.85).aspx
        # BOOL AdjustWindowRectExForDpi(
        #   _Inout_ LPRECT lpRect,
        #   _In_ DWORD dwStyle,
        #   _In_ BOOL bMenu,
        #   _In_ DWORD dwExStyle,
        #   _In_ UINT dpi);
        attach_function 'AdjustWindowRectExForDpi', [RECT.ptr, WindowStyle, :bool, WindowStyleExtended, :uint], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748619(v=vs.85).aspx
        # BOOL AreDpiAwarenessContextsEqual(
        #   _In_ DPI_AWARENESS_CONTEXT dpiContextA,
        #   _In_ DPI_AWARENESS_CONTEXT dpiContextB);
        attach_function 'AreDpiAwarenessContextsEqual', [DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748621(v=vs.85).aspx
        # BOOL WINAPI EnableNonClientDpiScaling(_In_ HWND hwnd)
        attach_function 'EnableNonClientDpiScaling', [:hwnd], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748622(v=vs.85).aspx
        # DPI_AWARENESS WINAPI GetAwarenessFromDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT value)
        attach_function 'GetAwarenessFromDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748623(v=vs.85).aspx
        # UINT WINAPI GetDpiForSystem(void);
        attach_function 'GetDpiForSystem', [], :uint

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748624(v=vs.85).aspx
        # UINT WINAPI GetDpiForSystem(void);
        attach_function 'GetDpiForSystem', [], :uint

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748625(v=vs.85).aspx
        # int WINAPI GetSystemMetricsForDpi(_In_ int  nIndex, _In_ UINT dpi);
        attach_function 'GetSystemMetricsForDpi', [:int, :uint], :int

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748626(v=vs.85).aspx
        # DPI_AWARENESS_CONTEXT WINAPI GetThreadDpiAwarenessContext(void);
        attach_function 'GetThreadDpiAwarenessContext', [], :int

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748627(v=vs.85).aspx
        # DPI_AWARENESS_CONTEXT WINAPI GetWindowDpiAwarenessContext(_In_ HWND hwnd);
        attach_function 'GetWindowDpiAwarenessContext', [:hwnd], :int

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748628(v=vs.85).aspx
        # BOOL WINAPI IsValidDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT  value)
        attach_function 'IsValidDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748629(v=vs.85).aspx
        # WINUSERAPI DPI_AWARENESS_CONTEXT WINAPI SetThreadDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT dpiContext);
        attach_function 'SetThreadDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://msdn.microsoft.com/en-us/library/windows/desktop/mt748630(v=vs.85).aspx
        # BOOL WINAPI SystemParametersInfoForDpi(
        #   _In_    UINT  uiAction,
        #   _In_    UINT  uiParam,
        #   _Inout_ PVOID pvParam,
        #   _In_    UINT  fWinIni,
        #   _In_    UINT  dpi);
        attach_function 'SystemParametersInfoForDpi', [:uint, :uint, :pointer, :uint, :uint], :bool

      end
    end
  end
end