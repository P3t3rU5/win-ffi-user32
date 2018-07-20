require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # WM_MENUDRAG return values.
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647606(v=vs.85).aspx
    WmMenudragReturn = enum :wm_menudrag_return, [
        :CONTINUE, 0,
        :ENDMENU,  1,
    ]

    define_prefix(:MNC, WmMenudragReturn)
  end
end