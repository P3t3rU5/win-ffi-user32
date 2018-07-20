module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexa
    EnumMode = enum :enum_mode, [:CURRENT_SETTINGS,  -1, :REGISTRY_SETTINGS, -2]

    define_prefix(:ENUM, EnumMode)
  end
end