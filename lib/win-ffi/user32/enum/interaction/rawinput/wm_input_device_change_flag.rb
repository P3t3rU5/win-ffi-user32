require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Flags for the WM_INPUT_DEVICE_CHANGE message.
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645591(v=vs.85).aspx
      WmInputDeviceChangeFlag = enum :wm_input_device_change_flag, [
          :ARRIVAL, 1,
          :REMOVAL, 2,
      ]

      define_prefix(:GIDC, WmInputDeviceChangeFlag)
    end
  end
end