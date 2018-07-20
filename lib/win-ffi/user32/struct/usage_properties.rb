module WinFFI
  module User32
    class USAGE_PROPERTIES < FFIAdditions::Struct
      def level; end
      def level=(v) end
      def page; end
      def page=(v) end
      def usage; end
      def usage=(v) end
      def logicalMinimum; end
      def logicalMinimum=(v) end
      def logicalMaximum; end
      def logicalMaximum=(v) end
      def unit; end
      def unit=(v) end
      def exponent; end
      def exponent=(v) end
      def count; end
      def count=(v) end
      def physicalMinimum; end
      def physicalMinimum=(v) end
      def physicalMaximum; end
      def physicalMaximum=(v) end

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