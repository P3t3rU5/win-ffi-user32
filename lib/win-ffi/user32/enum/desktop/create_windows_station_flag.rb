require 'win-ffi/user32'

module WinFFI
  module User32
    CreateWindowsStationFlag = enum :create_windows_station_flag, [:CREATE_ONLY, 0x00000001]

    define_prefix(:CWF, CreateWindowsStationFlag)
  end
end