require 'win-ffi/shcore'

module WinFFI
  if WindowsVersion >= :vista
    module Shcore
      DeviceScaleFactor = enum :device_scale_factor, [
          :FACTOR_INVALID, 0,
          '100_PERCENT', 100,
          '120_PERCENT', 120,
          '125_PERCENT', 125,
          '140_PERCENT', 140,
          '150_PERCENT', 150,
          '160_PERCENT', 160,
          '175_PERCENT', 175,
          '180_PERCENT', 180,
          '200_PERCENT', 200,
          '225_PERCENT', 225,
          '250_PERCENT', 250,
          '300_PERCENT', 300,
          '350_PERCENT', 350,
          '400_PERCENT', 400,
          '450_PERCENT', 450,
          '500_PERCENT', 500
      ]

      define_prefix(:SCALE, DeviceScaleFactor)
    end
  end
end