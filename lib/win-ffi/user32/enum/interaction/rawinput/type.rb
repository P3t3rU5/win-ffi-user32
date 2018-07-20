module WinFFI
  module User32
    # Type of the raw input
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645571(v=vs.85).aspx
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645590(v=vs.85).aspx
    RawInputType = enum :rawinput_type, [
        :INPUT,        0,
        :INPUTSINK,    1,
        :TYPEMOUSE,    0,
        :TYPEKEYBOARD, 1,
        :TYPEMAX,      2,
        :TYPEHID,      2
    ]

    define_prefix(:RIM, RawInputType)
  end
end