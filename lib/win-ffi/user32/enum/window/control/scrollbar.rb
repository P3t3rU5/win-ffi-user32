module WinFFI
  module User32
    # Scroll Bar Constants
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787577(v=vs.85).aspx
    Scrollbar = enum :scroll_bar, [:HORZ, 0, :VERT, 1, :CTL,  2, :BOTH, 3]

    define_prefix(:SB, Scrollbar)
  end
end