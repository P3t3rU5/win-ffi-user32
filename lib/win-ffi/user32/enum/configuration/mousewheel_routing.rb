require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      buffer = [
          :FOCUS,  0,
          :HYBRID, 1,
      ]

      buffer += [:MOUSE_POS, 2] if WindowsVersion >= 8.1

      MousewheelRouting = enum :mousewheel_routing, buffer
    end
  end
end