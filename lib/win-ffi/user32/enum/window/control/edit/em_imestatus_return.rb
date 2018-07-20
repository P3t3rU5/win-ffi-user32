module WinFFI
  module User32
    # return for EMSIS_COMPOSITIONSTRING
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-getimestatus#return-value
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-setimestatus#parameters
    EmIMEStatusReturn = enum :em_imestatus_return, [
        :GETCOMPSTRATONCE,         0x0001,
        :CANCELCOMPSTRINFOCUS,     0x0002,
        :COMPLETECOMPSTRKILLFOCUS, 0x0004,
    ]

    define_prefix(:EIMES, EmIMEStatusReturn)
  end
end
