require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633540(v=vs.85).aspx
    SetLayeredWindowAttributesFlag = enum :set_layered_window_attributes_flag, [
        :COLORKEY, 0x00000001,
        :ALPHA,    0x00000002,
    ]

    define_prefix(:LWA, SetLayeredWindowAttributesFlag)
  end
end