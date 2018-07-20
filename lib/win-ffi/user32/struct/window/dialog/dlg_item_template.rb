require_relative '../../../enum/window/style/window_style_ex'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-dlgitemtemplate
    class DLGITEMTEMPLATE < FFIAdditions::Struct
      def style; end
      def style=(v); end
      def dwExtendedStyle; end
      def dwExtendedStyle=(v); end
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end
      def cx; end
      def cx=(v); end
      def cy; end
      def cy=(v); end
      def id; end
      def id=(v); end

      layout style:           :dword,
             dwExtendedStyle: WindowStyleExtended,
             x:               :short,
             y:               :short,
             cx:              :short,
             cy:              :short,
             id:              :word
    end
  end
end