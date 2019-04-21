module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../struct/interaction/input/message_source'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/jj553553(v=vs.85).aspx
      # GetCIMSSM may be altered or unavailable in the future. Instead, use GetCurrentInputMessageSource.
      # BOOL GetCIMSSM(_Out_ INPUT_MESSAGE_SOURCE *inputMessageSource);
      # @param [INPUT_MESSAGE_SOURCE] inputMessageSource
      # @return [true, false]
      def self.GetCIMSSM(inputMessageSource); end
      attach_function 'GetCIMSSM', [INPUT_MESSAGE_SOURCE], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448793(v=vs.85).aspx
      # BOOL GetCurrentInputMessageSource( _Out_  INPUT_MESSAGE_SOURCE *inputMessageSource )
      # @param [INPUT_MESSAGE_SOURCE] inputMessageSource
      # @return [true, false]
      def self.GetCurrentInputMessageSource(inputMessageSource); end
      attach_function 'GetCurrentInputMessageSource', [INPUT_MESSAGE_SOURCE], :bool
    end
  end
end