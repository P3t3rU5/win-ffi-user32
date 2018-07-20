require_relative '../../enum/display_device_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_display_devicea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_display_devicew
    class DISPLAY_DEVICE < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def DeviceName; end
      def DeviceName=(v); end
      def DeviceString; end
      def DeviceString=(v); end
      def StateFlags; end
      def StateFlags=(v); end
      def DeviceID; end
      def DeviceID=(v); end
      def DeviceKey; end
      def DeviceKey=(v); end

      layout cb:           :dword,
             DeviceName:   [:tchar, 32],
             DeviceString: [:tchar, 128],
             StateFlags:   DisplayDeviceFlag,
             DeviceID:     [:tchar, 128],
             DeviceKey:    [:tchar, 128]

      def initialize
        super
        self[:cb] = self.size
      end

      private :cb, :cb=
    end
  end
end