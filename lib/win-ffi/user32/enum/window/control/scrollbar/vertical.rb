require_relative '../../../../../../win-ffi/user32'

module WinFFI
  module User32
    # Scroll Bar Constants
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787577(v=vs.85).aspx
    ScrollbarVertical = enum :scrollbar_vertical, [

        # Scroll Bar Commands
        :LINEUP,        0,
        :LINEDOWN,      1,
        :PAGEUP,        2,
        :PAGEDOWN,      3,
        :THUMBPOSITION, 4,
        :THUMBTRACK,    5,
        :TOP,           6,
        :BOTTOM,        7,
        :ENDSCROLL,     8,
    ]

    define_prefix(:SB, ScrollbarVertical)
  end
end