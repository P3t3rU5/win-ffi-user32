require 'win-ffi/user32'

module WinFFI
  module User32
    # Flags for EnumDisplaySettingsEx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162612(v=vs.85).aspx
    EnumDisplaySettingsExFlag = enum :enum_display_settings_ex_flag, [
        :RAWMODE,     0x00000002,
        :ROTATEDMODE, 0x00000004,
    ]

    define_prefix(:EDS, EnumDisplaySettingsExFlag)
  end
end