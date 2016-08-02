require 'win-ffi/user32'

module WinFFI
  module User32
    # Touch input mask values (TOUCHINPUT.dwMask)
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317334(v=vs.85).aspx
    TouchInputMaskFlag = enum :touch_input_mask_flag, [
        :TIMEFROMSYSTEM, 0x0001,
        :EXTRAINFO,      0x0002,
        :CONTACTAREA,    0x0004,
    ]

    define_prefix(:TOUCHINPUTMASKF, TouchInputMaskFlag)
  end
end