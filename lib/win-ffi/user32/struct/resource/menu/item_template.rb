module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-menuitemtemplate
    class MENUITEMTEMPLATE < FFIAdditions::Struct
      def mtOption; end
      def mtOption=(v) end
      def mtID; end
      def mtID=(v) end
      def mtString; end
      def mtString=(v) end

      layout mtOption: :word,
             mtID:     :word,
             mtString: [:char, 1]
    end
  end
end