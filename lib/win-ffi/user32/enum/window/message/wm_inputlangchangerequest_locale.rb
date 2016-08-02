require 'win-ffi/user32'

module WinFFI
  module User32
    # Bits in wParam of WM_INPUTLANGCHANGEREQUEST message
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632630(v=vs.85).aspx
    WmInputlangchangerequestLocale = enum :wm_inputlangchangerequest_locale, [
        :SYSCHARSET, 0x0001,
        :FORWARD,    0x0002,
        :BACKWARD,   0x0004,
    ]

    define_prefix(:INPUTLANGCHANGE, WmInputlangchangerequestLocale)
  end
end