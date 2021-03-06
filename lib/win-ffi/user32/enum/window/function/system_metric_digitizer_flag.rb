module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # GetSystemMetrics(SM_DIGITIZER) flag values
      # https://docs.microsoft.com/en-us/windows/desktop/wintouch/getting-started-with-multi-touch-messages
      SystemMetricDigitizerFlag = enum :system_metric_digitizer_flag, [
          :INTEGRATED_TOUCH,  0x00000001,
          :EXTERNAL_TOUCH,    0x00000002,
          :INTEGRATED_PEN,    0x00000004,
          :EXTERNAL_PEN,      0x00000008,
          :MULTI_INPUT,       0x00000040,
          :READY,             0x00000080
      ]

      define_prefix(:NID, SystemMetricDigitizerFlag)
    end
  end
end