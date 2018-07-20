module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-static-control-reference-messages
    StaticMessage = enum :static_message, [
        :SETICON,  0x0170,
        :GETICON,  0x0171,
        :SETIMAGE, 0x0172,
        :GETIMAGE, 0x0173,
        :MSGMAX,   0x0174
    ]

    define_prefix(:STM, StaticMessage)
  end
end