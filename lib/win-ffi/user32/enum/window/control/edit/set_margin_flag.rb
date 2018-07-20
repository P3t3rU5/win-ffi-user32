module WinFFI
  module User32
    # Edit control EM_SETMARGIN parameters
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-setmargins#parameters
    SetMarginFlag = enum :set_margin_flag, [
        :LEFTMARGIN,  0x0001,
        :RIGHTMARGIN, 0x0002,
        :USEFONTINFO, 0xffff
    ]

    define_prefix(:EC, SetMarginFlag)
  end
end