module WinFFI
  module User32
    class RID_DEVICE_INFO_MOUSE < FFIAdditions::Struct
      layout dwId:               :dword,
             dwNumberOfButtons:  :dword,
             dwSampleRate:       :dword,
             fHasHorizontalWheel: :bool
    end

    class RID_DEVICE_INFO_KEYBOARD < FFIAdditions::Struct
      layout dwType:                 :dword,
             dwSubType:              :dword,
             dwKeyboardMode:         :dword,
             dwNumberOfFunctionKeys: :dword,
             dwNumberOfIndicators:   :dword,
             dwNumberOfKeysTotal:    :dword
    end

    class RID_DEVICE_INFO_HID < FFIAdditions::Struct
      layout dwVendorId:      :dword,
             dwProductId:     :dword,
             dwVersionNumber: :dword, # Top level collection UsagePage and Usage
             usUsagePage:    :ushort,
             usUsage:        :ushort
    end

    class RID_DEVICE_INFO_UNION < FFIAdditions::Union
      layout mouse:       RID_DEVICE_INFO_MOUSE,
             keyboard: RID_DEVICE_INFO_KEYBOARD,
             hid:           RID_DEVICE_INFO_HID
    end

    class RID_DEVICE_INFO < FFIAdditions::Struct
      layout cbSize:           :dword,
             dwType:           :dword,
             u: RID_DEVICE_INFO_UNION
    end

    def initialize
      super
      self.cbSize = self.size
    end
  end
end