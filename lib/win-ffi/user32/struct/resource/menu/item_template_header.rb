module WinFFI
  module User32
    # Menu item resource format
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-menuitemtemplateheader
    class MENUITEMTEMPLATEHEADER < FFIAdditions::Struct
      def versionNumber; end
      def versionNumber=(v) end
      def offset; end
      def offset=(v) end

      layout versionNumber: :word,
             offset:        :word
    end
  end
end