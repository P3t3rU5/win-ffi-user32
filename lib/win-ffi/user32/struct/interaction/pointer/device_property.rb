module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802892
      class POINTER_DEVICE_PROPERTY < FFIAdditions::Struct
        def logicalMin; end
        def logicalMin=(v) end
        def logicalMax; end
        def logicalMax=(v) end
        def physicalMin; end
        def physicalMin=(v) end
        def physicalMax; end
        def physicalMax=(v) end
        def unit; end
        def unit=(v) end
        def unitExponent; end
        def unitExponent=(v) end
        def usagePageId; end
        def usagePageId=(v) end
        def usageId; end
        def usageId=(v) end

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