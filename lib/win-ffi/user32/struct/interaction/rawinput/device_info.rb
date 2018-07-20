module WinFFI
  module User32
    class RID_DEVICE_INFO_MOUSE < FFIAdditions::Struct
      def dwId; end
      def dwId=(v) end
      def dwNumberOfButtons; end
      def dwNumberOfButtons=(v) end
      def dwSampleRate; end
      def dwSampleRate=(v) end
      def fHasHorizontalWheel; end
      def fHasHorizontalWheel=(v) end

      layout dwId:                :dword,
             dwNumberOfButtons:   :dword,
             dwSampleRate:        :dword,
             fHasHorizontalWheel: :bool
    end

    class RID_DEVICE_INFO_KEYBOARD < FFIAdditions::Struct
      def dwType; end
      def dwType=(v) end
      def dwSubType; end
      def dwSubType=(v) end
      def dwKeyboardMode; end
      def dwKeyboardMode=(v) end
      def dwNumberOfFunctionKeys; end
      def dwNumberOfFunctionKeys=(v) end
      def dwNumberOfIndicators; end
      def dwNumberOfIndicators=(v) end
      def dwNumberOfKeysTotal; end
      def dwNumberOfKeysTotal=(v) end

      layout dwType:                 :dword,
             dwSubType:              :dword,
             dwKeyboardMode:         :dword,
             dwNumberOfFunctionKeys: :dword,
             dwNumberOfIndicators:   :dword,
             dwNumberOfKeysTotal:    :dword
    end

    class RID_DEVICE_INFO_HID < FFIAdditions::Struct
      def dwVendorId; end
      def dwVendorId=(v) end
      def dwProductId; end
      def dwProductId=(v) end
      def dwVersionNumber; end
      def dwVersionNumber=(v) end
      def usUsagePage; end
      def usUsagePage=(v) end
      def usUsage; end
      def usUsage=(v) end

      layout dwVendorId:      :dword,
             dwProductId:     :dword,
             dwVersionNumber: :dword,
             usUsagePage:     :ushort,
             usUsage:         :ushort
    end

    class RID_DEVICE_INFO_UNION < FFIAdditions::Union
      def mouse; end
      def mouse=(v) end
      def keyboard; end
      def keyboard=(v) end
      def hid; end
      def hid=(v) end

      layout mouse:    RID_DEVICE_INFO_MOUSE,
             keyboard: RID_DEVICE_INFO_KEYBOARD,
             hid:      RID_DEVICE_INFO_HID
    end

    class RID_DEVICE_INFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwType; end
      def dwType=(v) end
      def u; end
      def u=(v) end

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