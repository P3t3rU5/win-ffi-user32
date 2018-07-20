module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/luid'

    module User32
      class DPSISTRUCTNAME < FFIAdditions::Struct
        def cloneGroupId; end
        def cloneGroupId=(v) end
        def sourceModeInfoIdx; end
        def sourceModeInfoIdx=(v) end

        layout cloneGroupId:      :uint32,
               sourceModeInfoIdx: :uint32
      end

      class DPSIUNIONNAME < FFIAdditions::Union
        def modeInfoIdx; end
        def modeInfoIdx=(v) end
        def s; end
        def s=(v) end

        layout modeInfoIdx: :uint32,
               s:           DPSISTRUCTNAME
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_path_source_info
      class DISPLAYCONFIG_PATH_SOURCE_INFO < FFIAdditions::Struct
        def adapterId; end
        def adapterId=(v) end
        def id; end
        def id=(v) end
        def u; end
        def u=(v) end
        def statusFlags; end
        def statusFlags=(v) end

        layout adapterId:   LUID,
               id:          :uint32,
               u:           DPSIUNIONNAME,
               statusFlags: :uint32
      end
    end
  end
end