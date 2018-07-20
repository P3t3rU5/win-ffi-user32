module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/menurc/acceltableentry
    # Defines for the fVirt field of the Accelerator table structure.
    AcceleratorFlag = enum :accelerator_flag, [
        :FNOINVERT, 0x02,
        :FSHIFT,    0x04,
        :FCONTROL,  0x08,
        :FALT,      0x10
    ]

    FVIRTKEY = true
  end
end