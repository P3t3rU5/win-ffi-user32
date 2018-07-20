module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadicona#parameters
    buffer = [
        :SAMPLE,          32512,
        :HAND,            32513,
        :QUES,            32514,
        :BANG,            32515,
        :NOTE,            32516,
        :WINLOGO,         32517,
        :WARNING,         32515,
        :ERROR,           32513,
        :INFORMATION,     32516
    ]

    buffer += [:SHIELD, 32518] if WINDOWS_VERSION >= :vista

    OemIcon = enum :oem_icon, buffer

    define_prefix(:OIC, OemIcon)
  end
end