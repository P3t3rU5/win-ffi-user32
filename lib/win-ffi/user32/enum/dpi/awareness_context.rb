module WinFFI
  module User32
    DPI_AWARENESS_CONTEXT = enum :dpi_awareness_context, [:DEFAULT, :UNAWARE, :SYSTEM_AWARE, :PER_MONITOR_AWARE]

    define_prefix(:DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT)
  end
end