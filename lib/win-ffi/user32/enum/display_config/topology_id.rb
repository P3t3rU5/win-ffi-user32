module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      DisplayConfigTopologyId = enum :display_config_topology_id, [
          :INTERNAL,     0x00000001,
          :CLONE,        0x00000002,
          :EXTEND,       0x00000004,
          :EXTERNAL,     0x00000008,
          :FORCE_UINT32, 0xFFFFFFFF
      ]

      define_prefix(:DISPLAYCONFIG_TOPOLOGY_ID, DisplayConfigTopologyId)
    end
  end
end
