module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../enum/exit_windows_flag'

    module User32

      # WINUSERAPI BOOL WINAPI CancelShutdown(VOID)
      # @return [true, false]
      def self.CancelShutdown; end
      attach_function 'CancelShutdown', [], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-exitwindowsex
      # @param [Integer] uFlags
      # @param [Integer] dwReason
      # @return [true, false]
      def self.ExitWindowsEx(uFlags, dwReason) end
      attach_function 'ExitWindowsEx', [ExitWindowsFlag, :dword], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lockworkstation
      # BOOL WINAPI LockWorkStation(void)
      # @return [true, false]
      def self.LockWorkStation; end
      attach_function 'LockWorkStation', [], :bool

      if WINDOWS_VERSION >= :vista
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasoncreate
        # @param [FFI::Pointer] hWnd
        # @param [String] pwszReason
        # @return [true, false]
        def self.ShutdownBlockReasonCreate(hWnd, pwszReason) end
        attach_function 'ShutdownBlockReasonCreate', [:hwnd, :buffer_in], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasondestroy
        # @param [FFI::Pointer] hWnd
        # @return [true, false]
        def self.ShutdownBlockReasonDestroy(hWnd) end
        attach_function 'ShutdownBlockReasonDestroy', [:hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasonquery
        # @param [FFI::Pointer] hWnd
        # @param [String] pwszBuff
        # @param [FFI::Pointer] pcchBuff
        # @return [true, false]
        def self.ShutdownBlockReasonQuery(hWnd, pwszBuff, pcchBuff) end
        attach_function 'ShutdownBlockReasonQuery', [:hwnd , :buffer_out, :buffer_inout], :bool
      end
    end
  end
end