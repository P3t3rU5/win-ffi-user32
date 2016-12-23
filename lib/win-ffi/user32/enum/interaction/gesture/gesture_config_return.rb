require 'win-ffi/user32'

module WinFFI
  module User32
    GestureConfigReturn = enum :gesture_config_return, [
        :INCLUDE_ANCESTORS, 0x00000001,
    ]

    define_prefix(:GCF, GestureConfigReturn)
  end
end