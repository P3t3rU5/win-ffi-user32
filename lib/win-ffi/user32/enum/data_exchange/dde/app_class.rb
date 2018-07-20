require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # Application classification flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648757(v=vs.85).aspx
    AppClass = enum :app_class, [
        :STANDARD, 0x00000000,
        :MONITOR,  0x00000001,
        :MASK,     0x0000000F,
    ]

    define_prefix(:APPCLASS, AppClass)
  end
end


