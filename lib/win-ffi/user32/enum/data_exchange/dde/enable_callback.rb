require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648751(v=vs.85).aspx
    EnableCallback = enum :enable_callback, [
        :ENABLEALL,    0x0000,
        :ENABLEONE,    0x0080,
        :DISABLE,      0x0008,
        :QUERYWAITING, 0x0002,
    ]

    define_prefix(:EC, EnableCallback)
  end
end