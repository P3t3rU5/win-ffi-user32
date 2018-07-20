module WinFFI
  module User32
    # original NT 32 bit dialog template:
    class DLGTEMPLATE < FFIAdditions::Struct
      def style; end
      def style=(v); end
      def dwExtendedStyle; end
      def dwExtendedStyle=(v); end
      def cdit; end
      def cdit=(v); end
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end
      def cx; end
      def cx=(v); end
      def cy; end
      def cy=(v); end

      layout style:           :dword,
             dwExtendedStyle: :dword,
             cdit:            :word,
             x:               :short,
             y:               :short,
             cx:              :short,
             cy:              :short
    end
  end
end
