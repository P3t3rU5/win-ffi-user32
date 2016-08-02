require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162612(v=vs.85).aspx
    EnumMode = enum :enum_mode, [
        :CURRENT_SETTINGS,  -1,
        :REGISTRY_SETTINGS, -2,
    ]

    define_prefix(:ENUM, EnumMode)
  end
end