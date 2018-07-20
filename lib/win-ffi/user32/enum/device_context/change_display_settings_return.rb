module WinFFI
  module User32
    # Return values for ChangeDisplaySettings
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-changedisplaysettingsexa#parameters
    buffer = [
        :SUCCESSFUL,  0,
        :RESTART,     1,
        :FAILED,     -1,
        :BADMODE,    -2,
        :NOTUPDATED, -3,
        :BADFLAGS,   -4,
        :BADPARAM,   -5,
    ]

    buffer += [:BADDUALVIEW, -6] if WINDOWS_VERSION >= :xp

    ChangeDisplaySettingsReturn = enum :change_display_settings_return, buffer

    define_prefix(:DISP_CHANGE, ChangeDisplaySettingsReturn)
  end
end