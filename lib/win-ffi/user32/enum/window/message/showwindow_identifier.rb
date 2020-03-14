module WinFFI
  module User32
    # Identifiers for the WM_SHOWWINDOW message
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632645(v=vs.85).aspx
    WmShowwindowIdentifier = enum :wm_showwindow_identifier, [
        :SHOWWINDOW,    0,
        :PARENTCLOSING, 1,
        :OTHERZOOM,     2,
        :PARENTOPENING, 3,
        :OTHERUNZOOM,   4,
    ]

    define_prefix(:SW, WmShowwindowIdentifier)
  end
end