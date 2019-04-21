require_relative '../../../enum/window/control/button/message'
require_relative '../../../enum/window/control/button/state'

module WinFFI
  module User32
    class << self
      #TODO

      #define Button_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def Button_Enable(hwndCtl, fEnable) EnableWindow(hwndCtl, fEnable) end

      #define Button_GetCheck(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),BM_GETCHECK,0,0))
      # User32::ButtonState[send_button_message(hwndCtl, BM_GETCHECK, 0, 0)]
      def Button_GetCheck(hwndCtl) send_button_message(hwndCtl, :GETCHECK) end

      #define Button_GetState(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),BM_GETSTATE,0,0))
      # User32::ButtonState[send_button_message(hwndCtl, BM_GETSTATE, 0, 0)]
      def Button_GetState(hwndCtl) send_button_message(hwndCtl, :GETSTATE) end

      #define Button_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def Button_GetText(hwndCtl, lpch, cchMax) GetWindowText(hwndCtl, lpch, cchMax) end

      #define Button_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def Button_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl) end

      #define Button_SetCheck(hwndCtl,check) ((void)SNDMSG((hwndCtl),BM_SETCHECK,(WPARAM)(int)(check),0))
      def Button_SetCheck(hwndCtl, check) send_button_message(hwndCtl, :SETCHECK, wparam: check) end

      #define Button_SetState(hwndCtl,state) ((UINT)(DWORD)SNDMSG((hwndCtl),BM_SETSTATE,(WPARAM)(int)(state),0))
      def Button_SetState(hwndCtl, state) send_button_message(hwndCtl, :SETSTATE, wparam: state) end

      #define Button_SetStyle(hwndCtl,style,fRedraw) ((void)SNDMSG((hwndCtl),BM_SETSTYLE,(WPARAM)LOWORD(style),MAKELPARAM(((fRedraw) ? TRUE : FALSE),0)))
      def Button_SetStyle(hwndCtl, style, fRedraw)
        send_button_message(hwndCtl, :SETSTYLE, wparam: LOWORD(style), lparam: MAKELPARAM(fRedraw ? 1 : 0, 0))
      end

      #define Button_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def Button_SetText(hwndCtl, lpsz) SetWindowText(hwndCtl, lpsz) end

      private def send_button_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, ButtonMessage[message], wparam, lparam)
      end
    end
  end
end
