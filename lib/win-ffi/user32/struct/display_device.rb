require_relative '../enum/display_device_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-display_devicea
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-display_devicew
    class DISPLAY_DEVICE < FFIAdditions::Struct
      attr_accessor :cb,
                    :DeviceName,
                    :DeviceString,
                    :StateFlags,
                    :DeviceID,
                    :DeviceKey

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