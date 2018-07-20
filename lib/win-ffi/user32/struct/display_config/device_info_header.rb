module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/luid'

    require_relative '../../enum/display_config/device_info_type'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_device_info_header
      class DISPLAYCONFIG_DEVICE_INFO_HEADER < FFIAdditions::Struct
        def type; end
        def type=(v) end
        def size; end
        def size=(v) end
        def adapterId; end
        def adapterId=(v) end
        def id; end
        def id=(v) end

        layout type:      DisplayConfigDeviceInfoType,
               size:      :uint32,
               adapterId: LUID,
               id:        :uint32
      end
    end
  end
end