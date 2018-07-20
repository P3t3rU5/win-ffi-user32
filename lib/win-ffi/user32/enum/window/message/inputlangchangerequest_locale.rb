module WinFFI
  module User32
    # Bits in wParam of WM_INPUTLANGCHANGEREQUEST message
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-inputlangchangerequest
    WmInputlangchangerequestLocale = enum :wm_inputlangchangerequest_locale, [
        :SYSCHARSET, 0x0001,
        :FORWARD,    0x0002,
        :BACKWARD,   0x0004,
    ]

    define_prefix(:INPUTLANGCHANGE, WmInputlangchangerequestLocale)
  end
end