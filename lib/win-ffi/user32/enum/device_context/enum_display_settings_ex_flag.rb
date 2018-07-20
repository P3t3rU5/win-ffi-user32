module WinFFI
  module User32
    # Flags for EnumDisplaySettingsEx
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enumdisplaysettingsexa#parameters
    EnumDisplaySettingsExFlag = enum :enum_display_settings_ex_flag, [:RAWMODE, 0x00000002, :ROTATEDMODE, 0x00000004]

    define_prefix(:EDS, EnumDisplaySettingsExFlag)
  end
end