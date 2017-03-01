require 'win-ffi/user32'

module WinFFI
  module User32
    # Standard Icon IDs
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648072%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
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