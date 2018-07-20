module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'

    require_relative '../../../../enum/window/control/owner_drawn_control_type'
    require_relative '../../../../enum/window/control/owner_drawn_action'
    require_relative '../../../../enum/window/control/owner_drawn_state'

    module User32
      # DRAWITEMSTRUCT for ownerdraw
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagdrawitemstruct
      class DRAWITEMSTRUCT < FFIAdditions::Struct
        def CtlType; end
        def CtlType=(v); end
        def CtlID; end
        def CtlID=(v); end
        def itemID; end
        def itemID=(v); end
        def itemAction; end
        def itemAction=(v); end
        def itemState; end
        def itemState=(v); end
        def hwndItem; end
        def hwndItem=(v); end
        def hDC; end
        def hDC=(v); end
        def rcItem; end
        def rcItem=(v); end
        def itemData; end
        def itemData=(v); end

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
