module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-pointer_device_property
      class POINTER_DEVICE_PROPERTY < FFIAdditions::Struct
        attr_accessor :logicalMin,
                      :logicalMax,
                      :physicalMin,
                      :physicalMax,
                      :unit,
                      :unitExponent,
                      :usagePageId,
                      :usageId

        layout logicalMin:   :int32,
               logicalMax:   :int32,
               physicalMin:  :int32,
               physicalMax:  :int32,
               unit:         :uint32,
               unitExponent: :uint32,
               usagePageId:  :ushort,
               usageId:      :ushort
      end
    end
  end
end