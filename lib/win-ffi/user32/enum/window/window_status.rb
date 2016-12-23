require 'win-ffi/user32'

module WinFFI
  module User32
    WindowStatus = enum :window_status, [:ACTIVECAPTION, 0x0001]

    define_prefix(:WS, WindowStatus)
  end
end