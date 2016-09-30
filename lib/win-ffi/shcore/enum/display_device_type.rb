require 'win-ffi/shcore'

module WinFFI
  module Shcore
    DisplayDeviceType = enum :display_device_type, [
        :PRIMARY,   0,
        :IMMERSIVE, 1
    ]

    define_prefix(:DEVICE, DisplayDeviceType)
  end
end
