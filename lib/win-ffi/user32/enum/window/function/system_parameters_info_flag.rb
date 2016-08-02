require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724947%28v=vs.85%29.aspx
    SystemParametersInfoFlag = enum :system_parameters_info_flag, [
        :UPDATEINIFILE,    0x0001,
        :SENDWININICHANGE, 0x0002,
        :SENDCHANGE,       0x0002,
    ]

    define_prefix(:SPIF, SystemParametersInfoFlag)
  end
end