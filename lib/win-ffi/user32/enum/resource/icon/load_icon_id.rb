module WinFFI
  module User32
    # Standard Icon IDs
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadicona#parameters
    buffer = [
        :APPLICATION,     32512,
        :HAND,            32513,
        :QUESTION,        32514,
        :EXCLAMATION,     32515,
        :ASTERISK,        32516,
        :WINLOGO,         32517,
        :WARNING,         32515,
        :ERROR,           32513,
        :INFORMATION,     32516,
    ]

    buffer += [:SHIELD, 32518] if WINDOWS_VERSION >= :vista

    LoadIconId = enum :load_icon_id, buffer

    define_prefix(:IDI, LoadIconId)
  end
end