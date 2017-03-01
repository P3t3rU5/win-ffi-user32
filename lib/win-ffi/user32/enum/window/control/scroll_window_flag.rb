require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787593(v=vs.85).aspx
    buffer = [
       :SCROLLCHILDREN, 0x0001, # Scroll children within *lprcScroll.
       :INVALIDATE,     0x0002, # Invalidate after scrolling
       :ERASE,          0x0004, # If SW_INVALIDATE, don't send WM_ERASEBACKGROUND
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [
          :SMOOTHSCROLL,   0x0010 # Use smooth scrolling
      ]
    end

    ScrollWindowFlag = enum :scroll_window_flag, buffer

    define_prefix(:SW, ScrollWindowFlag)
  end
end