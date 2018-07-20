module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Flags for the WM_INPUT_DEVICE_CHANGE message.
      # https://docs.microsoft.com/en-us/windows/desktop/inputdev/wm-input-device-change
      WmInputDeviceChangeFlag = enum :wm_input_device_change_flag, [:ARRIVAL, 1, :REMOVAL, 2,]

      define_prefix(:GIDC, WmInputDeviceChangeFlag)
    end
  end
end