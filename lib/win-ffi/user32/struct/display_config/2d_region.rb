module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_2dregion
    class DISPLAYCONFIG_2DREGION < FFIAdditions::Struct
      attr_accessor :cx, :cy
      layout cx: :uint32,
             cy: :uint32

      def to_a
        [cx, cy]
      end

      def to_s
        "<DISPLAYCONFIG_2DREGION x: #{cx}, y: #{cy}>"
      end

      alias_method :to_ary, :to_a
      alias_method :to_str, :to_s
    end
  end
end