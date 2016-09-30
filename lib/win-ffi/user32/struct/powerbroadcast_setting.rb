require 'win-ffi/user32'

require 'win-ffi/core/struct/guid'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/aa372723(v=vs.85).aspx
    class POWERBROADCAST_SETTING < FFIAdditions::Struct
      layout PowerSetting: GUID,
             DataLength:  :dword,
             Data:    [:uchar, 1]
    end
  end
end
