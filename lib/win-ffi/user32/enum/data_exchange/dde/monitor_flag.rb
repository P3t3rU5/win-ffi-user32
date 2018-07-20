require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # Callback filter flags for use with MONITOR apps - 0 implies no monitor callbacks.
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648771(v=vs.85).aspx
    MonitorFlag = enum :monitor_flag, [
        :HSZ_INFO,  0x01000000,
        :SENDMSGS,  0x02000000,
        :POSTMSGS,  0x04000000,
        :CALLBACKS, 0x08000000,
        :ERRORS,    0x10000000,
        :LINKS,     0x20000000,
        :CONV,      0x40000000,
        :MASK,      0xFF000000,
    ]

    define_prefix(:MF, MonitorFlag)
  end
end