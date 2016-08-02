require 'win-ffi/user32'

module WinFFI
  module User32
    # return for EMSIS_COMPOSITIONSTRING
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761580%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761645(v=vs.85).aspx
    EmIMEStatusReturn = enum :em_imestatus_return, [
        :GETCOMPSTRATONCE,         0x0001,
        :CANCELCOMPSTRINFOCUS,     0x0002,
        :COMPLETECOMPSTRKILLFOCUS, 0x0004,
    ]

    define_prefix(:EIMES, EmIMEStatusReturn)
  end
end
