require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :xp
    module User32
      # dwFlags for SetWinEventHook
      Resource = enum :resource, [
          :ICON,   1,
          :CURSOR, 2,
      ]

      define_prefix(:RES, Resource)
    end
  end
end