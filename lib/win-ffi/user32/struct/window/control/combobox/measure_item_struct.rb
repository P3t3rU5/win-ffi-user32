module WinFFI
  module User32
    # MEASUREITEMSTRUCT for ownerdraw
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-measureitemstruct
    class MEASUREITEMSTRUCT < FFIAdditions::Struct
      attr_accessor :CtlType,
                    :CtlID,
                    :itemID,
                    :itemWidth,
                    :itemHeight,
                    :itemData

      layout CtlType:    :uint,
             CtlID:      :uint,
             itemID:     :uint,
             itemWidth:  :uint,
             itemHeight: :uint,
             itemData:   :ulong
    end
  end
end