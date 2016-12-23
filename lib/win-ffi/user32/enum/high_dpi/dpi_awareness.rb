require 'win-ffi/user32'

module WinFFI
  module User32
    DPI_AWARENESS = enum :dpi_awaremness, [
        :INVALID,          -1,
        :UNAWARE,           0,
        :SYSTEM_AWARE,      1,
        :PER_MONITOR_AWARE, 2
    ]

    define_prefix(:DPI_AWARENESS, DPI_AWARENESS)
  end
end