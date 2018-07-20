module WinFFI
  module User32
    # Windowstation creation flags.
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms682496
    CreateWindowStationFlag = enum :create_window_station_flag, [:CREATE_ONLY, 0x00000001]

    define_prefix(:CWF, CreateWindowStationFlag)
  end
end