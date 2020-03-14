module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/owner_drawn_control_type'

    module User32
      # COMPAREITEMSTUCT for ownerdraw sorting
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-compareitemstruct
      class COMPAREITEMSTRUCT < FFIAdditions::Struct
        attr_accessor :CtlType,
                      :CtlID,
                      :hwndItem,
                      :itemID1,
                      :itemData1,
                      :itemID2,
                      :itemData2,
                      :dwLocaleId

        layout CtlType:    OwnerDrawnControlType,
               CtlID:      :uint,
               hwndItem:   :hwnd,
               itemID1:    :uint,
               itemData1:  :ulong,
               itemID2:    :uint,
               itemData2:  :ulong,
               dwLocaleId: :dword
      end
    end
  end
end
