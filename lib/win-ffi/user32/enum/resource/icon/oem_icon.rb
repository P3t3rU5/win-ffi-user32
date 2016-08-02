require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648072(v=vs.85).aspx
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

    buffer += [:SHIELD, 32518] if WindowsVersion >= :vista

    OemIcon = enum :oem_icon, buffer

    define_prefix(:OIC, OemIcon)
  end
end