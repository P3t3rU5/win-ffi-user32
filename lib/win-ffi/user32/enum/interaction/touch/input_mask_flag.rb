module WinFFI
  module User32
    # Touch input mask values (TOUCHINPUT.dwMask)
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagtouchinput#remarks
    TouchInputMaskFlag = enum :touch_input_mask_flag, [
        :TIMEFROMSYSTEM, 0x0001,
        :EXTRAINFO,      0x0002,
        :CONTACTAREA,    0x0004
    ]

    define_prefix(:TOUCHINPUTMASKF, TouchInputMaskFlag)
  end
end