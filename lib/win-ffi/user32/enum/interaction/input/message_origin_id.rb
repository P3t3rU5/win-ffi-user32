module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448797
      INPUT_MESSAGE_ORIGIN_ID = enum :input_message_origin_id, [
          :UNAVAILABLE, 0x00000000,
          :HARDWARE,    0x00000001,
          :INJECTED,    0x00000002,
          :SYSTEM,      0x00000004
      ]

      define_prefix(:IMO, INPUT_MESSAGE_ORIGIN_ID)
    end
  end
end