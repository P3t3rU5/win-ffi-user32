require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/pt-br/library/windows/desktop/ms648759(v=vs.85).aspx
    DdeNameService = enum :dde_name_service, [
        :REGISTER,   0x0001,
        :UNREGISTER, 0x0002,
        :FILTERON,   0x0004,
        :FILTEROFF,  0x0008,
    ]

    define_prefix(:DNS, DdeNameService)
  end
end