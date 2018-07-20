module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/mt845776
    DPI_HOSTING_BEHAVIOR = enum :dpi_hosting_behavior, [:INVALID, -1, :DEFAULT,  0, :MIXED, 1]

    define_prefix(:DPI_HOSTING_BEHAVIOR, DPI_HOSTING_BEHAVIOR)
  end
end