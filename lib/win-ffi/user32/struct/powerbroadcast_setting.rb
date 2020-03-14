require 'win-ffi/core/struct/guid'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-powerbroadcast_setting
    class POWERBROADCAST_SETTING < FFIAdditions::Struct
      attr_accessor :PowerSetting, :DataLength, :Data

      layout PowerSetting: GUID,
             DataLength:   :dword,
             Data:         [:uchar, 1]
    end
  end
end
