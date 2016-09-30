require 'win-ffi/user32'

require 'win-ffi/gdi32/enum/device_context/display_device_flag'

module WinFFI
  module User32
    class DISPLAY_DEVICE < FFIAdditions::Struct
      layout cb:                              :dword,
             DeviceName:    WideInlineString.new(32),
             DeviceString: WideInlineString.new(128),
             StateFlags:    Gdi32::DisplayDeviceFlag,
             DeviceID:     WideInlineString.new(128),
             DeviceKey:    WideInlineString.new(128)

      def initialize
        super
        self.cb = self.size
      end
    end
  end
end