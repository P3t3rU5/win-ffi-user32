module WinFFI
  module Shcore
    ProcessDpiAwareness = enum :process_dpi_awareness, [
      :DPI_UNAWARE,           0, # DPI unaware
      :SYSTEM_DPI_AWARE,      1, # System DPI aware
      :PER_MONITOR_DPI_AWARE, 2, # Per monitor DPI aware
    ]

    define_prefix(:PROCESS, ProcessDpiAwareness)
  end
end