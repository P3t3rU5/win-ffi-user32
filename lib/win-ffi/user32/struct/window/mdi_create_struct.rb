module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644910
    class MDICREATESTRUCT < FFIAdditions::Struct
      def szClass; end
      def szClass=(v) end
      def szTitle; end
      def szTitle=(v) end
      def hOwner; end
      def hOwner=(v) end
      def x; end
      def x=(v) end
      def y; end
      def y=(v) end
      def cx; end
      def cx=(v) end
      def cy; end
      def cy=(v) end
      def style; end
      def style=(v) end
      def lParam; end
      def lParam=(v) end

      layout szClass: :string,
             szTitle: :string,
             hOwner:  :handle,
             x:       :int,
             y:       :int,
             cx:      :int,
             cy:      :int,
             style:   :dword,
             lParam:  :lparam
    end
  end
end


