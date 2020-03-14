module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rid_device_info_mouse
    class RID_DEVICE_INFO_MOUSE < FFIAdditions::Struct
      attr_accessor :dwId,
                    :dwNumberOfButtons,
                    :dwSampleRate,
                    :fHasHorizontalWheel

      layout dwId:                :dword,
             dwNumberOfButtons:   :dword,
             dwSampleRate:        :dword,
             fHasHorizontalWheel: :bool
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rid_device_info_keyboard
    class RID_DEVICE_INFO_KEYBOARD < FFIAdditions::Struct
      attr_accessor :dwType,
                    :dwSubType,
                    :dwKeyboardMode,
                    :dwNumberOfFunctionKeys,
                    :dwNumberOfIndicators,
                    :dwNumberOfKeysTotal

      layout dwType:                 :dword,
             dwSubType:              :dword,
             dwKeyboardMode:         :dword,
             dwNumberOfFunctionKeys: :dword,
             dwNumberOfIndicators:   :dword,
             dwNumberOfKeysTotal:    :dword
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rid_device_info_hid
    class RID_DEVICE_INFO_HID < FFIAdditions::Struct
      attr_accessor :dwVendorId,
                    :dwProductId,
                    :dwVersionNumber,
                    :usUsagePage,
                    :usUsage

      layout dwVendorId:      :dword,
             dwProductId:     :dword,
             dwVersionNumber: :dword,
             usUsagePage:     :ushort,
             usUsage:         :ushort
    end

    class RID_DEVICE_INFO_UNION < FFIAdditions::Union
      attr_accessor :mouse, :keyboard, :hid

      layout mouse:    RID_DEVICE_INFO_MOUSE,
             keyboard: RID_DEVICE_INFO_KEYBOARD,
             hid:      RID_DEVICE_INFO_HID
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rid_device_info
    class RID_DEVICE_INFO < FFIAdditions::Struct
      attr_accessor :cbSize, :dwType, :u

      layout cbSize: :dword,
             dwType: :dword,
             u:      RID_DEVICE_INFO_UNION
      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end