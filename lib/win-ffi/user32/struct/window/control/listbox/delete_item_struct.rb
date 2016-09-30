require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/user32/enum/window/control/owner_drawn_control_type'
    module User32

      # DELETEITEMSTRUCT for ownerdraw
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775151(v=vs.85).aspx
      class DELETEITEMSTRUCT < FFIAdditions::Struct
        layout CtlType: OwnerDrawnControlType,
               CtlID:                   :uint,
               itemID:                  :uint,
               hwndItem:                :hwnd,
               itemData:               :ulong
      end
    end
  end
end