module WinFFI
  if WINDOWS_VERSION >= 8.1
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/core/struct/point'

    require_relative '../enum/window/style'
    require_relative '../enum/window/style/ex'
    require_relative '../enum/dpi/awareness_context'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-logicaltophysicalpointforpermonitordpi
      # @param [FFI::Pointer] hwnd
      # @param [FFI::Pointer] lpPoint
      # @return [true, false]
      def self.LogicalToPhysicalPointForPerMonitorDPI(hwnd, lpPoint) end
      attach_function 'LogicalToPhysicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-physicaltologicalpointforpermonitordpi
      # @param [FFI::Pointer] hwnd
      # @param [FFI::Pointer] lpPoint
      # @return [true, false]
      def self.PhysicalToLogicalPointForPerMonitorDPI(hwnd, lpPoint) end
      attach_function 'PhysicalToLogicalPointForPerMonitorDPI', [:hwnd, POINT.ptr], :bool

      if WINDOWS_VERSION >= 10
        require_relative '../enum/dpi/hosting_behavior'
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-adjustwindowrectexfordpi
        # @param [FFI::Pointer] lpRect
        # @param [Integer] dwStyle
        # @param [true, false] bMenu
        # @param [Integer] dwExStyle
        # @param [nteger] dpi
        # @return [true, false]
        def self.AdjustWindowRectExForDpi(lpRect, dwStyle, bMenu, dwExStyle, dpi) end
        attach_function 'AdjustWindowRectExForDpi',
                        [RECT.ptr, WindowStyle, :bool, WindowStyleExtended, :uint], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-aredpiawarenesscontextsequal
        # @param [Integer] dpiContextA
        # @param [Integer] dpiContextB
        # @return [true, false]
        def self.AreDpiAwarenessContextsEqual(dpiContextA, dpiContextB) end
        attach_function 'AreDpiAwarenessContextsEqual',
                        [DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enablenonclientdpiscaling
        # @param [FFI::Pointer] hwnd
        # @return [true, false]
        def self.EnableNonClientDpiScaling(hwnd) end
        attach_function 'EnableNonClientDpiScaling', [:hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getawarenessfromdpiawarenesscontext
        # @param [Integer] value
        # @return [Integer]
        def self.GetAwarenessFromDpiAwarenessContext(value) end
        attach_function 'GetAwarenessFromDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemdpiforprocess
        # @param [FFI::Pointer] handle
        # @return [Integer]
        def self.GetSystemDpiForProcess(handle) end
        attach_function 'GetSystemDpiForProcess', [:handle], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpiforsystem
        # @return [Integer]
        def self.GetDpiForSystem; end
        attach_function 'GetDpiForSystem', [], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpiforwindow
        # @param [FFI::Pointer] hwnd
        # @return [Integer]
        def self.GetDpiForWindow(hwnd) end
        attach_function 'GetDpiForWindow', [:hwnd], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdpifromdpiawarenesscontext
        # @param [Integer] value
        # @return [Integer]
        def self.GetDpiFromDpiAwarenessContext(value) end
        attach_function 'GetDpiFromDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :uint

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmetricsfordpi
        # @param [Integer] nIndex
        # @param [Integer] dpi
        # @return [Integer]
        def self.GetSystemMetricsForDpi(nIndex, dpi) end
        attach_function 'GetSystemMetricsForDpi', [:int, :uint], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getthreaddpiawarenesscontext
        # @return [Integer]
        def self.GetThreadDpiAwarenessContext; end
        attach_function 'GetThreadDpiAwarenessContext', [], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdpiawarenesscontext
        # @param [FFI::Pointer] hwnd
        # @return [Integer]
        def self.GetWindowDpiAwarenessContext(hwnd) end
        attach_function 'GetWindowDpiAwarenessContext', [:hwnd], :int

        # @param [FFI::Pointer] hwnd
        # @param [FFI::Pointer] hwndInherit
        # @return [true, false]
        def self.InheritWindowMonitor(hwnd, hwndInherit) end
        attach_function 'InheritWindowMonitor', [:hwnd, :hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isvaliddpiawarenesscontext
        # @param [Integer] value
        # @return [true, false]
        def self.IsValidDpiAwarenessContext(value) end
        attach_function 'IsValidDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessdpiawarenesscontext
        # @param [Integer] value
        # @return [true, false]
        def self.SetProcessDpiAwarenessContext(value) end
        attach_function 'SetProcessDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setthreaddpiawarenesscontext
        # @param [Integer] dpiContext
        # @return [Integer]
        def self.SetThreadDpiAwarenessContext(dpiContext) end
        attach_function 'SetThreadDpiAwarenessContext', [DPI_AWARENESS_CONTEXT], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-systemparametersinfofordpi
        # @param [Integer] uiAction
        # @param [Integer] uiParam
        # @param [FFI::Pointer] pvParam
        # @param [Integer] fWinIni
        # @param [Integer] dpi
        # @return [true, false]
        def self.SystemParametersInfoForDpi(uiAction, uiParam, pvParam, fWinIni, dpi) end
        attach_function 'SystemParametersInfoForDpi', [:uint, :uint, :pointer, :uint, :uint], :bool

        #if(WINVER >= 0x0606)
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setthreaddpihostingbehavior
        # @param [Integer] value
        # @return [Integer]
        def self.SetThreadDpiHostingBehavior(value) end
        attach_function 'SetThreadDpiHostingBehavior', [DPI_HOSTING_BEHAVIOR], DPI_HOSTING_BEHAVIOR

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getthreaddpihostingbehavior
        # @return [Integer]
        def self.GetThreadDpiHostingBehavior; end
        attach_function 'GetThreadDpiHostingBehavior', [], DPI_HOSTING_BEHAVIOR

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowdpihostingbehavior
        # @param [FFI::Pointer] hwnd
        # @return [Integer]
        def self.GetWindowDpiHostingBehavior(hwnd) end
        attach_function 'GetWindowDpiHostingBehavior', [:hwnd], DPI_HOSTING_BEHAVIOR
      end
    end
  end
end