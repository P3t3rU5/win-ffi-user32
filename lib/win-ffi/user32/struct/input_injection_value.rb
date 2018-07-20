module WinFFI
  module User32
    class INPUT_INJECTION_VALUE < FFIAdditions::Struct
      def page; end
      def page=(v) end
      def usage; end
      def usage=(v) end
      def value; end
      def value=(v) end
      def index; end
      def index=(v) end

      layout page:  :ushort,
             usage: :ushort,
             value: :int32,
             index: :ushort
    end
  end
end