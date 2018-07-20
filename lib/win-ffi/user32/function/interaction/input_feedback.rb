module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../enum/interaction/feedback_type'

    module User32
      GWFS_INCLUDE_ANCESTORS = 0x00000001

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802870(v=vs.85).aspx
      # BOOL WINAPI GetWindowFeedbackSetting(
      #   _In_       HWND hwnd,
      #   _In_       FEEDBACK_TYPE feedback,
      #   _In_       DWORD dwFlags,
      #   _Inout_    UINT32 *pSize,
      #   _Out_opt_  VOID *config )
      def self.GetWindowFeedbackSetting(hwnd, feedback, dwFlags, pSize, config); end
      attach_function 'GetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802871(v=vs.85).aspx
      # BOOL WINAPI SetWindowFeedbackSetting(
      #   _In_      HWND hwnd,
      #   _In_      FEEDBACK_TYPE feedback,
      #   _In_      DWORD dwFlags,
      #   _In_      UINT32 size,
      #   _In_opt_  const VOID *configuration )
      def self.SetWindowFeedbackSetting(hwnd, feedback, dwFlags, pSize, configuration); end
      attach_function 'SetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :uint32, :pointer], :bool
    end
  end
end