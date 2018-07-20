module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../enum/interaction/pointer/pointer_input_type'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373647
      # LRESULT CALLBACK SoundSentryProc( DWORD dwMillisec, DWORD fdwEffect )
      SoundSentryProc = callback :SoundSentryProc, [:dword, :dword], :lresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerpointerinputtarget
      # BOOL WINAPI RegisterPointerInputTarget( _In_  HWND hwnd, _In_  POINTER_INPUT_TYPE  pointerType )
      def self.RegisterPointerInputTarget(hwnd, pointerType); end
      attach_function 'RegisterPointerInputTarget', [:hwnd, POINTER_INPUT_TYPE], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterpointerinputtarget
      # BOOL WINAPI UnregisterPointerInputTarget( _In_  HWND hwnd, _In_  POINTER_INPUT_TYPE  pointerType )
      def self.UnregisterPointerInputTarget(hwnd, pointerType); end
      attach_function 'UnregisterPointerInputTarget', [:hwnd, POINTER_INPUT_TYPE], :bool

      if WINDOWS_VERSION >= 10

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-registerpointerinputtargetex
        # RegisterPointerInputTargetEx is not supported and may be altered or unavailable in the future. Instead,
        # use RegisterPointerInputTarget.
        # BOOL WINAPI RegisterPointerInputTargetEx(
        #   _In_ HWND               hwnd,
        #   _In_ POINTER_INPUT_TYPE pointerType,
        #   _In_ BOOL               fObserve)
        def self.RegisterPointerInputTargetEx(hwnd, pointerType, fObserve); end
        attach_function 'RegisterPointerInputTargetEx', [:hwnd, POINTER_INPUT_TYPE, :bool], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unregisterpointerinputtargetex
        # UnregisterPointerInputTargetEx is not supported and may be altered or unavailable in the future. Instead, use
        # UnregisterPointerInputTarget.
        # BOOL WINAPI UnregisterPointerInputTargetEx(_In_ HWND hwnd, _In_ POINTER_INPUT_TYPE pointerType)
        def self.UnregisterPointerInputTargetEx(hwnd, pointerType); end
        attach_function 'UnregisterPointerInputTargetEx', [:hwnd, POINTER_INPUT_TYPE], :bool
      end
    end
  end
end