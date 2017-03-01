require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 8
    require 'win-ffi/user32/enum/interaction/pointer/pointer_device_type'
    require 'win-ffi/user32/struct/interaction/pointer/pointer_device_info'
    require 'win-ffi/user32/function/multiple_display_monitors'
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802891(v=vs.85).aspx
      POINTER_DEVICE_PRODUCT_STRING_MAX = 520

      class POINTER_DEVICE_INFO <FFIAdditions::Struct
        layout displayOrientation:                               :dword,
               device:                                          :handle,
               pointerDeviceType:                     PointerDeviceType,
               monitor:                                       :hmonitor,
               startingCursorId:                                 :ulong,
               maxActiveContacts:                               :ushort,
               productString: [:char, POINTER_DEVICE_PRODUCT_STRING_MAX]
      end
    end
  end
end