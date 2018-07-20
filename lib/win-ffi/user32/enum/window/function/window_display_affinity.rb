module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375338
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375340
      WindowDisplayAffinity = enum :window_display_affinity, [:NONE, 0x00000000, :MONITOR, 0x00000001]

      define_prefix(:WDA, WindowDisplayAffinity)
    end
  end
end