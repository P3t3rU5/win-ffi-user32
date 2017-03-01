require 'win-ffi/user32'

module WinFFI
  module User32
    # Return values for ChangeDisplaySettings
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183413(v=vs.85).aspx
    buffer = [
        :SUCCESSFUL,  0,
        :RESTART,     1,
        :FAILED,     -1,
        :BADMODE,    -2,
        :NOTUPDATED, -3,
        :BADFLAGS,   -4,
        :BADPARAM,   -5,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [
          :BADDUALVIEW, -6
      ]
    end

    ChangeDisplaySettingsReturn = enum :change_display_settings_return, buffer

    define_prefix(:DISP_CHANGE, ChangeDisplaySettingsReturn)
  end
end