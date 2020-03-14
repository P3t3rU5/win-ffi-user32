module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/pointer/device_type'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_device_info
      POINTER_DEVICE_PRODUCT_STRING_MAX = 520

      class POINTER_DEVICE_INFO <FFIAdditions::Struct
        attr_accessor :displayOrientation,
                      :device,
                      :pointerDeviceType,
                      :monitor,
                      :startingCursorId,
                      :maxActiveContacts,
                      :productString

        layout displayOrientation: :dword,
               device:             :handle,
               pointerDeviceType:  POINTER_DEVICE_TYPE,
               monitor:            :hmonitor,
               startingCursorId:   :ulong,
               maxActiveContacts:  :ushort,
               productString:      [:char, POINTER_DEVICE_PRODUCT_STRING_MAX]
      end
    end
  end
end