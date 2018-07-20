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
      # LONG DisplayConfigSetDeviceInfo( _In_  DISPLAYCONFIG_DEVICE_INFO_HEADER *setPacket )
      def self.DisplayConfigSetDeviceInfo(setPacket) end
      attach_function 'DisplayConfigSetDeviceInfo', [DISPLAYCONFIG_DEVICE_INFO_HEADER.ptr(:in)], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-displayconfiggetdeviceinfo
      # LONG DisplayConfigGetDeviceInfo(   _Inout_  DISPLAYCONFIG_DEVICE_INFO_HEADER *requestPacket )
      def self.DisplayConfigGetDeviceInfo(requestPacket) end
      attach_function 'DisplayConfigGetDeviceInfo', [DISPLAYCONFIG_DEVICE_INFO_HEADER.ptr], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayconfigbuffersizes
      # LONG GetDisplayConfigBufferSizes(
      #   _In_   UINT32 Flags,
      #   _Out_  UINT32 *pNumPathArrayElements,
      #   _Out_  UINT32 *pNumModeInfoArrayElements )
      def self.GetDisplayConfigBufferSizes(flags, pNumPathArrayElements, pNumModeInfoArrayElements) end
      attach_function 'GetDisplayConfigBufferSizes', [QueryDisplayConfigFlag, :pointer, :pointer], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-querydisplayconfig
      # LONG QueryDisplayConfig(
      #   _In_       UINT32 Flags,
      #   _Inout_    UINT32 *pNumPathArrayElements,
      #   _Out_      DISPLAYCONFIG_PATH_INFO *pPathInfoArray,
      #   _Inout_    UINT32 *pNumModeInfoArrayElements,
      #   _Out_      DISPLAYCONFIG_MODE_INFO *pModeInfoArray,
      #   _Out_opt_  DISPLAYCONFIG_TOPOLOGY_ID *pCurrentTopologyId )
      def self.QueryDisplayConfig(
          flags, pNumPathArrayElements, pPathInfoArray, pNumModeInfoArrayElements, pModeInfoArray, pCurrentTopologyId)
      end
      attach_function 'QueryDisplayConfig', [:uint32,:pointer,  DISPLAYCONFIG_PATH_INFO.ptr(:out), :pointer, DISPLAYCONFIG_MODE_INFO.ptr(:out), DisplayConfigTopologyId], :long

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdisplayconfig
      # LONG SetDisplayConfig(
      #   _In_      UINT32 numPathArrayElements,
      #   _In_opt_  DISPLAYCONFIG_PATH_INFO *pathArray,
      #   _In_      UINT32 numModeInfoArrayElements,
      #   _In_opt_  DISPLAYCONFIG_MODE_INFO *modeInfoArray,
      #   _In_      UINT32 Flags )
      def self.SetDisplayConfig(numPathArrayElements, pathArray, numModeInfoArrayElements, modeInfoArray, flags); end
      attach_function 'SetDisplayConfig', [:uint32, DISPLAYCONFIG_PATH_INFO.ptr, :uint32, :pointer, SetDisplayConfigFlag], :long
    end
  end
end
