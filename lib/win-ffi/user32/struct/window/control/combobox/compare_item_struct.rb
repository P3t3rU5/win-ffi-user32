require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :vista
    module User32

      require 'win-ffi/user32/enum/window/control/owner_drawn_control_type'

      # COMPAREITEMSTUCT for ownerdraw sorting
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775800(v=vs.85).aspx
      class COMPAREITEMSTRUCT < FFIAdditions::Struct
        layout CtlType: OwnerDrawnControlType,
               CtlID:                   :uint,
               hwndItem:                :hwnd,
               itemID1:                 :uint,
               itemData1:              :ulong,
               itemID2:                 :uint,
               itemData2:              :ulong,
               dwLocaleId:             :dword
      end
    end
  end
end
