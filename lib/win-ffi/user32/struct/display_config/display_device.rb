require_relative '../../enum/display_device_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_display_devicea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_display_devicew
    class DISPLAY_DEVICE < FFIAdditions::Struct
      attr_accessor :cb,
                    :DeviceName,
                    :DeviceString,
                    :StateFlags,
                    :DeviceID,
                    :DeviceKey

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