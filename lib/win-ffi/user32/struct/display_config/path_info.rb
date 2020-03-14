module WinFFI
  if WINDOWS_VERSION >= 7
    require_relative '../../enum/display_config/path'

    require_relative 'path_source_info'
    require_relative 'path_target_info'
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_path_info
      class DISPLAYCONFIG_PATH_INFO < FFIAdditions::Struct
        attr_accessor :sourceInfo, :targetInfo, :flags,

        layout sourceInfo: DISPLAYCONFIG_PATH_SOURCE_INFO,
               targetInfo: DISPLAYCONFIG_PATH_TARGET_INFO,
               flags:      DisplayConfigPath
      end
    end
  end
end