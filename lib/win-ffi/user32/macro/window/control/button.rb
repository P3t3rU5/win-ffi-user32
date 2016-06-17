require 'win-ffi/user32/enum/window/control/button/button_message'
require 'win-ffi/user32/enum/window/control/button/button_state'

module WinFFI
  module User32
    class << self
      #define Button_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def Button_Enable(hwndCtl, fEnable)
        EnableWindow(hwndCtl, fEnable)
      end

      #define Button_GetCheck(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),BM_GETCHECK,0,0))
      def Button_GetCheck(hwndCtl)
        User32::ButtonState[SendMessage(hwndCtl, BM_GETCHECK, 0, 0)]
      end

      #define Button_GetState(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),BM_GETSTATE,0,0))
      def Button_GetState(hwndCtl)
        User32::ButtonState[SendMessage(hwndCtl, BM_GETSTATE, 0, 0)]
      end

      #define Button_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def Button_GetText(hwndCtl, lpch, cchMax)
        GetWindowText(hwndCtl, lpch, cchMax)
      end

      #define Button_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def Button_GetTextLength(hwndCtl)
        GetWindowTextLength(hwndCtl)
      end

      #define Button_SetCheck(hwndCtl,check) ((void)SNDMSG((hwndCtl),BM_SETCHECK,(WPARAM)(int)(check),0))
      def Button_SetCheck(hwndCtl, check)
        SendMessage(hwndCtl, BM_SETCHECK, check, 0)
      end

      #define Button_SetState(hwndCtl,state) ((UINT)(DWORD)SNDMSG((hwndCtl),BM_SETSTATE,(WPARAM)(int)(state),0))
      def Button_SetState(hwndCtl, state)
        SendMessage(hwndCtl, BM_SETSTATE, state, 0)
      end

      #define Button_SetStyle(hwndCtl,style,fRedraw) ((void)SNDMSG((hwndCtl),BM_SETSTYLE,(WPARAM)LOWORD(style),MAKELPARAM(((fRedraw) ? TRUE : FALSE),0)))
      def Button_SetStyle(hwndCtl, style,fRedraw)
        SendMessage(hwndCtl, BM_SETSTYLE, style, MAKELPARAM(fRedraw ? true : false), 0)
      end

      #define Button_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def Button_SetText(hwndCtl, lpsz)
        SetWindowText(hwndCtl, lpsz)
      end
    end
  end
end