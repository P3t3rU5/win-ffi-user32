module WinFFI
  module User32
    # wParam of EM_GET/SETIMESTATUS
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-getimestatus#parameters
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-setimestatus#parameters
    EmIMEStatusParameter = enum :em_imestatus_parameter, [:COMPOSITIONSTRING, 0x0001]

    define_prefix(:EMSIS, EmIMEStatusParameter)
  end
end
