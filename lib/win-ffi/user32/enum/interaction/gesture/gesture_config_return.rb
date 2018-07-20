module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      GestureConfigReturn = enum :gesture_config_return, [:INCLUDE_ANCESTORS, 0x00000001]

      define_prefix(:GCF, GestureConfigReturn)
    end
  end
end