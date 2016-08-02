require 'win-ffi/user32'

module WinFFI
  module User32
    # wParam of EM_GET/SETIMESTATUS
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761580%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761645(v=vs.85).aspx
    EmIMEStatusParameter = enum :em_imestatus_parameter, [
        :COMPOSITIONSTRING, 0x0001,
    ]

    define_prefix(:EMSIS, EmIMEStatusParameter)
  end
end
