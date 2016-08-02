require 'win-ffi/user32'

module WinFFI
  module User32
    # WH_MSGFILTER Filter Proc Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644987(v=vs.85).aspx
    WhMsgfilterCode = enum :wh_msgfilter_code, [
        :DIALOGBOX,     0,
        :MESSAGEBOX,    1,
        :MENU,          2,
        :SCROLLBAR,     5,
        :NEXTWINDOW,    6,
        :MAX,           8, # unused
        :USER,       4096
    ]

    define_prefix(:MSGF, WhMsgfilterCode)
  end
end