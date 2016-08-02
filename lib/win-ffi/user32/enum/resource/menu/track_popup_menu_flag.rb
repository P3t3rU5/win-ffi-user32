require 'win-ffi/user32'

module WinFFI
  module User32
    # Flags for TrackPopupMenu
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648003(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd565861(v=vs.85).aspx
    buffer =  [
        :LEFTBUTTON,  0x0000,
        :RIGHTBUTTON, 0x0002,

        :LEFTALIGN,   0x0000,
        :CENTERALIGN, 0x0004,
        :RIGHTALIGN,  0x0008,

        :TOPALIGN,     0x0000,
        :VCENTERALIGN, 0x0010,
        :BOTTOMALIGN,  0x0020,

        :HORIZONTAL, 0x0000,
        :VERTICAL, 0x0040,

        :NONOTIFY,  0x0080,
        :RETURNCMD, 0x0100,

        :RECURSE,         0x0001,
        :HORPOSANIMATION, 0x0400,
        :HORNEGANIMATION, 0x0800,
        :VERPOSANIMATION, 0x1000,
        :VERNEGANIMATION, 0x2000,
        :NOANIMATION,     0x4000,
    ]

    if WindowsVersion >= :xp
      buffer += [:LAYOUTRTL, 0x8000]
      if WindowsVersion >= 7
        buffer += [
            # The following flag is available starting with Windows 7.
            :WORKAREA, 0x10000, # Restricts the pop-up window_class to within the work area. If this flag is not set, the pop-up
            # window_class is restricted to the work area only if the input point is within the work area. For more information,
            # see the rcWork and rcMonitor members of the MONITORINFO structure.
        ]
      end
    end

    TrackPopupMenuFlag = enum :track_popup_menu_flag, buffer

    define_prefix(:TPM, TrackPopupMenuFlag)
  end
end