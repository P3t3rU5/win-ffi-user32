require 'win-ffi/user32'

module WinFFI
  module User32
    # WM_SETICON / WM_GETICON Type Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632625(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632643(v=vs.85).aspx
    buffer =  [
        :SMALL, 0,
        :BIG,   1
    ]
    buffer += [:SMALL2, 2] if WINDOWS_VERSION >= :xp

    IconType = enum :icon_type, buffer

    define_prefix(:ICON, IconType)
  end
end

