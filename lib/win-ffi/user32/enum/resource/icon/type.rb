module WinFFI
  module User32
    # WM_SETICON / WM_GETICON Type Codes
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-geticon#parameters
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-seticon#parameters
    buffer = [:SMALL, 0, :BIG, 1]
    buffer += [:SMALL2, 2] if WINDOWS_VERSION >= :xp

    IconType = enum :icon_type, buffer

    define_prefix(:ICON, IconType)
  end
end

