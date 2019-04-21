module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../enum/interaction/feedback_type'

    module User32
      GWFS_INCLUDE_ANCESTORS = 0x00000001

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802870(v=vs.85).aspx
      # @param [FFI::Pointer] hwnd
      # @param [Integer] feedback
      # @param [Integer] dwFlags
      # @param [FFI::Pointer] pSize
      # @param [FFI::Pointer] config
      # @return [true, false]
      def self.GetWindowFeedbackSetting(hwnd, feedback, dwFlags, pSize, config); end
      attach_function 'GetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802871(v=vs.85).aspx
      # @param [FFI::Pointer] hwnd
      # @param [Integer] feedback
      # @param [Integer] dwFlags
      # @param [Integer] pSize
      # @param [FFI::Pointer] configuration
      # @return [true, false]
      def self.SetWindowFeedbackSetting(hwnd, feedback, dwFlags, pSize, configuration); end
      attach_function 'SetWindowFeedbackSetting', [:hwnd, FEEDBACK_TYPE, :dword, :uint32, :pointer], :bool
    end
  end
end