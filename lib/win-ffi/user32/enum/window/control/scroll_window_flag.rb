module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-scrollwindowex#parameters
    buffer = [:SCROLLCHILDREN, 0x0001, :INVALIDATE, 0x0002, :ERASE, 0x0004]

    buffer += [:SMOOTHSCROLL, 0x0010] if WINDOWS_VERSION >= :xp

    ScrollWindowFlag = enum :scroll_window_flag, buffer

    define_prefix(:SW, ScrollWindowFlag)
  end
end