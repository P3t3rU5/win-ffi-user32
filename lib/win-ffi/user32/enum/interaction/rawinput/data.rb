module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Flags for GetRawInputData
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645596
      RawInputData = enum :rawinput_data, [:INPUT, 0x10000003, :HEADER, 0x10000005]

      define_prefix(:RID, RawInputData)
    end
  end
end