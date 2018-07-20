module WinFFI
  module User32
    # MEASUREITEMSTRUCT for ownerdraw
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmeasureitemstruct
    class MEASUREITEMSTRUCT < FFIAdditions::Struct
      def CtlType; end
      def CtlType=(v) end
      def CtlID; end
      def CtlID=(v) end
      def itemID; end
      def itemID=(v) end
      def itemWidth; end
      def itemWidth=(v) end
      def itemHeight; end
      def itemHeight=(v) end
      def itemData; end
      def itemData=(v) end

      layout CtlType:    :uint,
             CtlID:      :uint,
             itemID:     :uint,
             itemWidth:  :uint,
             itemHeight: :uint,
             itemData:   :ulong
    end
  end
end