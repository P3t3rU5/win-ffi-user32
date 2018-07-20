require_relative '../enum/display_device_flag'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183569(v=vs.85).aspx
    class DISPLAY_DEVICE < FFIAdditions::Struct
      def cb; end
      def cb=(v) end
      def DeviceName; end
      def DeviceName=(v) end
      def DeviceString; end
      def DeviceString=(v) end
      def StateFlags; end
      def StateFlags=(v) end
      def DeviceID; end
      def DeviceID=(v) end
      def DeviceKey; end
      def DeviceKey=(v) end

      layout cb:           :dword,
             DeviceName:   WideInlineString.new(32),
             DeviceString: WideInlineString.new(128),
             StateFlags:   DisplayDeviceFlag,
             DeviceID:     WideInlineString.new(128),
             DeviceKey:    WideInlineString.new(128)

      def initialize
        super
        self.cb = self.size
      end

      private :cb, :cb=
    end
  end
end