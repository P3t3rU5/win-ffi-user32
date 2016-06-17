require 'win-ffi/user32'

module WinFFI
  module User32
    # Application classification flags
    AppClass = enum :app_class, [
        :STANDARD, 0x00000000,
        :MONITOR,  0x00000001,
        :MASK,     0x0000000F,
    ]

    define_prefix(:APPCLASS, AppClass)
  end
end


