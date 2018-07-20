module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_2dregion
    class DISPLAYCONFIG_2DREGION < FFIAdditions::Struct
      def cx; end
      def cx=(v) end
      def cy; end
      def cy=(v) end

      layout cx: :uint32,
             cy: :uint32
    end
  end
end