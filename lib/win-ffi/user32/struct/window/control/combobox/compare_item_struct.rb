module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/owner_drawn_control_type'

    module User32
      # COMPAREITEMSTUCT for ownerdraw sorting
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcompareitemstruct
      class COMPAREITEMSTRUCT < FFIAdditions::Struct
        def CtlType; end
        def CtlType=(v); end
        def CtlID; end
        def CtlID=(v); end
        def hwndItem; end
        def hwndItem=(v); end
        def itemID1; end
        def itemID1=(v); end
        def itemData1; end
        def itemData1=(v); end
        def itemID2; end
        def itemID2=(v); end
        def itemData2; end
        def itemData2=(v); end
        def dwLocaleId; end
        def dwLocaleId=(v); end

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
