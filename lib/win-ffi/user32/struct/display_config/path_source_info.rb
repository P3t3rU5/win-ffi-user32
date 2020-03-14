module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/luid'

    module User32
      class DPSISTRUCTNAME < FFIAdditions::Struct
        attr_accessor :cloneGroupId, :sourceModeInfoIdx

        layout cloneGroupId:      :uint32,
               sourceModeInfoIdx: :uint32
      end

      class DPSIUNIONNAME < FFIAdditions::Union
        attr_accessor :modeInfoIdx, :s

        layout modeInfoIdx: :uint32,
               s:           DPSISTRUCTNAME
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_path_source_info
      class DISPLAYCONFIG_PATH_SOURCE_INFO < FFIAdditions::Struct
        attr_accessor :adapterId, :id, :u, :statusFlags

        layout adapterId:   LUID,
               id:          :uint32,
               u:           DPSIUNIONNAME,
               statusFlags: :uint32
      end
    end
  end
end