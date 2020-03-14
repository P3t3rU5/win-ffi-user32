module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-usage_properties
    class USAGE_PROPERTIES < FFIAdditions::Struct
      attr_accessor :level,
                    :page,
                    :usage,
                    :logicalMinimum,
                    :logicalMaximum,
                    :unit,
                    :exponent,
                    :count,
                    :physicalMinimum,
                    :physicalMaximum

      layout level:           :ushort,
             page:            :ushort,
             usage:           :ushort,
             logicalMinimum:  :int32,
             logicalMaximum:  :int32,
             unit:            :ushort,
             exponent:        :ushort,
             count:           :byte,
             physicalMinimum: :int32,
             physicalMaximum: :int32
    end
  end
end