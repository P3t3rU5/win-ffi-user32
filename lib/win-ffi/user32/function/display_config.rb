module WinFFI
  if WINDOWS_VERSION >= 7
    require_relative '../enum/display_config/topology_id'
    require_relative '../enum/display_config/set_display_config_flag'
    require_relative '../enum/display_config/query_display_config_flag'
    require_relative '../struct/display_config/device_info_header'
    require_relative '../struct/display_config/mode_info'
    require_relative '../struct/display_config/path_info'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-displayconfigsetdeviceinfo
      # @param [FFI::Pointer] setPacket
      # @return [Integer]
      def self.DisplayConfigSetDeviceInfo(setPacket) end
      attach_function 'DisplayConfigSetDeviceInfo', [DISPLAYCONFIG_DEVICE_INFO_HEADER.ptr(:in)], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-displayconfiggetdeviceinfo
      # @param [FFI::Pointer] requestPacket
      # @return [Integer]
      def self.DisplayConfigGetDeviceInfo(requestPacket) end
      attach_function 'DisplayConfigGetDeviceInfo', [DISPLAYCONFIG_DEVICE_INFO_HEADER.ptr], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayconfigbuffersizes
      # @param [Integer] flags
      # @param [FFI::Pointer] pNumPathArrayElements
      # @param [FFI::Pointer] pNumModeInfoArrayElements
      # @return [Integer]
      def self.GetDisplayConfigBufferSizes(flags, pNumPathArrayElements, pNumModeInfoArrayElements) end
      attach_function 'GetDisplayConfigBufferSizes', [QueryDisplayConfigFlag, :pointer, :pointer], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-querydisplayconfig
      # @param [Integer] flags
      # @param [FFI::Pointer] pNumPathArrayElements
      # @param [FFI::Pointer] pPathInfoArray
      # @param [FFI::Pointer] pNumModeInfoArrayElements
      # @param [FFI::Pointer] pModeInfoArray
      # @param [FFI::Pointer] pCurrentTopologyId
      def self.QueryDisplayConfig(
          flags, pNumPathArrayElements, pPathInfoArray, pNumModeInfoArrayElements, pModeInfoArray, pCurrentTopologyId)
      end
      attach_function 'QueryDisplayConfig', [:uint32,:pointer,  DISPLAYCONFIG_PATH_INFO.ptr(:out), :pointer, DISPLAYCONFIG_MODE_INFO.ptr(:out), :pointer], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdisplayconfig
      # @param [Integer] numPathArrayElements
      # @param [FFI::Pointer] pathArray
      # @param [Integer] numModeInfoArrayElements
      # @param [FFI::Pointer] modeInfoArray
      # @param [Integer] flags
      # @return [Integer]
      def self.SetDisplayConfig(numPathArrayElements, pathArray, numModeInfoArrayElements, modeInfoArray, flags); end
      attach_function 'SetDisplayConfig', [:uint32, DISPLAYCONFIG_PATH_INFO.ptr, :uint32, :pointer, SetDisplayConfigFlag], :long
    end
  end
end
