module WinFFI
  if WINDOWS_VERSION >= 8.1
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/core/struct/point'

    require_relative '../enum/window/style/window_style'
    require_relative '../enum/window/style/window_style_ex'
    require_relative '../enum/dpi/awareness_context'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-logicaltophysicalpointforpermonitordpi
      # BOOL LogicalToPhysicalPointForPerMonitorDPI( _In_    HWND    hwnd, _Inout_ LPPOINT lpPoint )
      def self.LogicalToPhysicalPointForPerMonitorDPI(hwnd, lpPoint) end
      attach_function 'LogicalToPhysicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-physicaltologicalpointforpermonitordpi
      # BOOL PhysicalToLogicalPointForPerMonitorDPI(_In_    HWND    hwnd, _Inout_ LPPOINT lpPoint)
      def self.PhysicalToLogicalPointForPerMonitorDPI(hwnd, lpPoint) end
      attach_function 'PhysicalToLogicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      if WINDOWS_VERSION >= 10
        require_relative '../enum/dpi/hosting_behavior'
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrectexfordpi
        # BOOL AdjustWindowRectExForDpi(
        #   _Inout_ LPRECT lpRect,
        #   _In_ DWORD dwStyle,
        #   _In_ BOOL bMenu,
        #   _In_ DWORD dwExStyle,
        #   _In_ UINT dpi)
        def self.AdjustWindowRectExForDpi(lpRect, dwStyle, bMenu, dwExStyle, dpi) end
        attach_function 'AdjustWindowRectExForDpi',
                        [RECT.ptr, WindowStyle, :bool, WindowStyleExtended, :uint], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-aredpiawarenesscontextsequal
        # BOOL AreDpiAwarenessContextsEqual(
        #   _In_ DPI_AWARENESS_CONTEXT dpiContextA,
        #   _In_ DPI_AWARENESS_CONTEXT dpiContextB)
        def self.AreDpiAwarenessContextsEqual(dpiContextA, dpiContextB) end
        attach_function 'AreDpiAwarenessContextsEqual',
                        [DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablenonclientdpiscaling
        # BOOL EnableNonClientDpiScaling(_In_ HWND hwnd)
        def self.EnableNonClientDpiScaling(hwnd) end
        attach_function 'EnableNonClientDpiScaling', [:hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getawarenessfromdpiawarenesscontext
        # DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT value)
        def self.GetAwarenessFromDpiAwarenessContext(value) end
        attach_function 'GetAwarenessFromDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemdpiforprocess
        # UINT GetSystemDpiForProcess(HANDLE hProcess)
        def self.GetSystemDpiForProcess(handle) end
        attach_function 'GetSystemDpiForProcess', [:handle], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpiforsystem
        # UINT GetDpiForSystem(void)
        def self.GetDpiForSystem; end
        attach_function 'GetDpiForSystem', [], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpiforwindow
        # UINT GetDpiForWindow(HWND hwnd)
        def self.GetDpiForWindow(hwnd) end
        attach_function 'GetDpiForWindow', [:hwnd], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpifromdpiawarenesscontext
        # UINT GetDpiFromDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT value)
        def self.GetDpiFromDpiAwarenessContext(value) end
        attach_function 'GetDpiFromDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmetricsfordpi
        # int GetSystemMetricsForDpi(_In_ int  nIndex, _In_ UINT dpi)
        def self.GetSystemMetricsForDpi(nIndex, dpi) end
        attach_function 'GetSystemMetricsForDpi', [:int, :uint], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getthreaddpiawarenesscontext
        # DPI_AWARENESS_CONTEXT GetThreadDpiAwarenessContext(void)
        def self.GetThreadDpiAwarenessContext; end
        attach_function 'GetThreadDpiAwarenessContext', [], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdpiawarenesscontext
        # DPI_AWARENESS_CONTEXT GetWindowDpiAwarenessContext(_In_ HWND hwnd)
        def self.GetWindowDpiAwarenessContext(hwnd) end
        attach_function 'GetWindowDpiAwarenessContext', [:hwnd], :int

        # WINUSERAPI BOOL InheritWindowMonitor(_In_ HWND hwnd, _In_opt_ HWND hwndInherit)
        def self.InheritWindowMonitor(hwnd, hwndInherit) end
        attach_function 'InheritWindowMonitor', [:hwnd, :hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isvaliddpiawarenesscontext
        # BOOL IsValidDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT  value)
        def self.IsValidDpiAwarenessContext(value) end
        attach_function 'IsValidDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessdpiawarenesscontext
        # BOOL SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT value)
        def self.SetProcessDpiAwarenessContext(value) end
        attach_function 'SetProcessDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setthreaddpiawarenesscontext
        # WINUSERAPI DPI_AWARENESS_CONTEXT SetThreadDpiAwarenessContext(_In_ DPI_AWARENESS_CONTEXT dpiContext)
        def self.SetThreadDpiAwarenessContext(dpiContext) end
        attach_function 'SetThreadDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-systemparametersinfofordpi
        # BOOL SystemParametersInfoForDpi(
        #   _In_    UINT  uiAction,
        #   _In_    UINT  uiParam,
        #   _Inout_ PVOID pvParam,
        #   _In_    UINT  fWinIni,
        #   _In_    UINT  dpi)
        def self.SystemParametersInfoForDpi(uiAction, uiParam, pvParam, fWinIni, dpi) end
        attach_function 'SystemParametersInfoForDpi', [:uint, :uint, :pointer, :uint, :uint], :bool

        #if(WINVER >= 0x0606)
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setthreaddpihostingbehavior
        # DPI_HOSTING_BEHAVIOR SetThreadDpiHostingBehavior(_In_ DPI_HOSTING_BEHAVIOR value)
        def self.SetThreadDpiHostingBehavior(value) end
        attach_function 'SetThreadDpiHostingBehavior', [DPI_HOSTING_BEHAVIOR], DPI_HOSTING_BEHAVIOR

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getthreaddpihostingbehavior
        # DPI_HOSTING_BEHAVIOR GetThreadDpiHostingBehavior()
        def self.GetThreadDpiHostingBehavior; end
        attach_function 'GetThreadDpiHostingBehavior', [], DPI_HOSTING_BEHAVIOR

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdpihostingbehavior
        # DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(_In_ HWND hwnd)
        def self.GetWindowDpiHostingBehavior(hwnd) end
        attach_function 'GetWindowDpiHostingBehavior', [:hwnd], DPI_HOSTING_BEHAVIOR
      end
    end
  end
end