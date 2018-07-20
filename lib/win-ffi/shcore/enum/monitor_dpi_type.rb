module WinFFI
  module Shcore
    MonitorDpiType = enum :monitor_dpi_type, [
        :DEFAULT,       0,
        :EFFECTIVE_DPI, 0,
        :ANGULAR_DPI,   1,
        :RAW_DPI,       2,
    ]

    define_prefix(:MDT, MonitorDpiType)
  end
end