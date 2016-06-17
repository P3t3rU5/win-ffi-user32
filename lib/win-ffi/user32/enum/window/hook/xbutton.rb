require 'win-ffi/user32'

module WinFFI
  module User32
    XButton = enum :x_button, [
        :BUTTON1,      0x0001,
        :BUTTON2,      0x0002,
        :BUTTON3,      0x0004
    ]

    define_prefix(:X, XButton)
  end
end