module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'

    require_relative '../../../../enum/window/control/owner_drawn_control_type'
    require_relative '../../../../enum/window/control/owner_drawn_action'
    require_relative '../../../../enum/window/control/owner_drawn_state'

    module User32
      # DRAWITEMSTRUCT for ownerdraw
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-drawitemstruct
      class DRAWITEMSTRUCT < FFIAdditions::Struct
        attr_accessor :CtlType,
                      :CtlID,
                      :itemID,
                      :itemAction,
                      :itemState,
                      :hwndItem,
                      :hDC,
                      :rcItem,
                      :itemData

        layout CtlType:    OwnerDrawnControlType,
               CtlID:      :uint,
               itemID:     :uint,
               itemAction: OwnerDrawnAction,
               itemState:  OwnerDrawnState,
               hwndItem:   :hwnd,
               hDC:        :hdc,
               rcItem:     RECT,
               itemData:   :ulong
      end
    end
  end
end
