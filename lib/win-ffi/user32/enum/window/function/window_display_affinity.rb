require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375338(v=vs.85).aspx
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375340(v=vs.85).aspx
      WindowDisplayAffinity = enum :window_display_affinity, [
          :NONE,     0x00000000,
          :MONITOR,  0x00000001,
      ]

      define_prefix(:WDA, WindowDisplayAffinity)
    end
  end
end