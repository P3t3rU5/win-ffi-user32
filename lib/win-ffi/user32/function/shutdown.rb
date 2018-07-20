module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../enum/exit_windows_flag'

    module User32

      # WINUSERAPI BOOL WINAPI CancelShutdown(VOID)
      def self.CancelShutdown; end
      attach_function 'CancelShutdown', [], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-exitwindowsex
      # BOOL WINAPI ExitWindowsEx( _In_  UINT uFlags, _In_  DWORD dwReason )
      def self.ExitWindowsEx(uFlags, dwReason) end
      attach_function 'ExitWindowsEx', [ExitWindowsFlag, :dword], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lockworkstation
      # BOOL WINAPI LockWorkStation(void)
      def self.LockWorkStation; end
      attach_function 'LockWorkStation', [], :bool

      if WINDOWS_VERSION >= :vista
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasoncreate
        # BOOL WINAPI ShutdownBlockReasonCreate( _In_  HWND hWnd, _In_  LPCWSTR pwszReason )
        def self.ShutdownBlockReasonCreate(hWnd, pwszReason) end
        attach_function 'ShutdownBlockReasonCreate', [:hwnd, :buffer_in], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasondestroy
        # BOOL WINAPI ShutdownBlockReasonDestroy( _In_  HWND hWnd )
        def self.ShutdownBlockReasonDestroy(hWnd) end
        attach_function 'ShutdownBlockReasonDestroy', [:hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-shutdownblockreasonquery
        # BOOL WINAPI ShutdownBlockReasonQuery( _In_ HWND hWnd, _Out_opt_  LPWSTR pwszBuff, _Inout_ DWORD *pcchBuff )
        def self.ShutdownBlockReasonQuery(hWnd, pwszBuff, pcchBuff) end
        attach_function 'ShutdownBlockReasonQuery', [:hwnd , :buffer_out, :buffer_inout], :bool
      end
    end
  end
end