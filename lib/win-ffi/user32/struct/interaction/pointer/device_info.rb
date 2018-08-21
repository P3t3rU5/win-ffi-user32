module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../../enum/interaction/pointer/device_type'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802891
      POINTER_DEVICE_PRODUCT_STRING_MAX = 520

      class POINTER_DEVICE_INFO <FFIAdditions::Struct
        def displayOrientation; end
        def displayOrientation=(v) end
        def device; end
        def device=(v) end
        def pointerDeviceType; end
        def pointerDeviceType=(v) end
        def monitor; end
        def monitor=(v) end
        def startingCursorId; end
        def startingCursorId=(v) end
        def maxActiveContacts; end
        def maxActiveContacts=(v) end
        def productString; end
        def productString=(v) end

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