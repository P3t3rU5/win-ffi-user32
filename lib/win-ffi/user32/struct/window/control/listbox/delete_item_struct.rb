module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/owner_drawn_control_type'

    module User32
      # DELETEITEMSTRUCT for ownerdraw
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagdeleteitemstruct
      class DELETEITEMSTRUCT < FFIAdditions::Struct
        def CtlType; end
        def CtlType=(v) end
        def CtlID; end
        def CtlID=(v) end
        def itemID; end
        def itemID=(v) end
        def hwndItem; end
        def hwndItem=(v) end
        def itemData; end
        def itemData=(v) end

        layout CtlType:  OwnerDrawnControlType,
               CtlID:    :uint,
               itemID:   :uint,
               hwndItem: :hwnd,
               itemData: :ulong
      end
    end
  end
end