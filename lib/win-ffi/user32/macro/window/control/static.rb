require_relative '../../../enum/window/control/edit/message'

module WinFFI
  module User32
    class << self
      #define Static_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def Static_Enable(hwndCtl, fEnable) EnableWindow(hwndCtl, fEnable) end

      #define Static_GetIcon(hwndCtl,hIcon) ((HICON)(UINT)(DWORD)SNDMSG((hwndCtl),STM_GETICON,0,0))
      def Static_GetIcon(hwndCtl, hIcon) send_static_message(hwndCtl, :GETICON) end

      #define Static_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def Static_GetText(hwndCtl, lpch, cchMax) GetWindowText(hwndCtl, lpch, cchMax) end

      #define Static_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def Static_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl) end

      #define Static_SetIcon(hwndCtl,hIcon) ((HICON)(UINT)(DWORD)SNDMSG((hwndCtl),STM_SETICON,(WPARAM)(HICON)(hIcon),0))
      def Static_SetIcon(hwndCtl, hIcon) send_static_message(hwndCtl, :SETICON, wparam: hIcon) end

      #define Static_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def Static_SetText(hwndCtl, lpsz) SetWindowText(hwndCtl, lpsz) end

      private def send_static_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, StaticMessage[message], wparam, lparam)
      end
    end
  end
end
