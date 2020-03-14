module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/owner_drawn_control_type'

    module User32
      # DELETEITEMSTRUCT for ownerdraw
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-deleteitemstruct
      class DELETEITEMSTRUCT < FFIAdditions::Struct
        attr_accessor :CtlType,
                      :CtlID,
                      :itemID,
                      :hwndItem,
                      :itemData

        layout CtlType:  OwnerDrawnControlType,
               CtlID:    :uint,
               itemID:   :uint,
               hwndItem: :hwnd,
               itemData: :ulong
      end
    end
  end
end