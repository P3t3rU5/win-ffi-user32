require 'win-ffi/core/struct/guid'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-powerbroadcast_setting
    class POWERBROADCAST_SETTING < FFIAdditions::Struct
      def PowerSetting; end
      def PowerSetting=(v) end
      def DataLength; end
      def DataLength=(v) end
      def Data; end
      def Data=(v) end

      layout PowerSetting: GUID,
             DataLength:   :dword,
             Data:         [:uchar, 1]
    end
  end
end
