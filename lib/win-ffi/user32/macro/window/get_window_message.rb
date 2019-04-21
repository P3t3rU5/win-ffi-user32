module WinFFI
  module User32
    class << self
      #define GET_WM_ACTIVATE_FMINIMIZED(wp,lp) (BOOL)HIWORD(wp)
      def GET_WM_ACTIVATE_FMINIMIZED(wp, _) HIWORD(wp) end

      #define GET_WM_ACTIVATE_HWND(wp,lp) (HWND)(lp)
      def GET_WM_ACTIVATE_HWND(_, lp) lp end

      #define GET_WM_ACTIVATE_MPS(s,fmin,hwnd) (WPARAM)MAKELONG((s),(fmin)),(LONG)(hwnd)
      def GET_WM_ACTIVATE_MPS(s, fmin, hwnd) [MAKELONG(s, fmin), hwnd] end

      #define GET_WM_ACTIVATE_STATE(wp,lp) LOWORD(wp)
      def GET_WM_ACTIVATE_STATE(wp, _) LOWORD(wp) end

      #define GET_WM_CHANGECBCHAIN_HWNDNEXT(wp,lp) (HWND)(lp)
      def GET_WM_CHANGECBCHAIN_HWNDNEXT(_, lp) lp end

      #define GET_WM_CHARTOITEM_CHAR(wp,lp) (TCHAR)LOWORD(wp)
      def GET_WM_CHARTOITEM_CHAR(wp, _) LOWORD(wp) end

      #define GET_WM_CHARTOITEM_HWND(wp,lp) (HWND)(lp)
      def GET_WM_CHARTOITEM_HWND(_, lp) lp end

      #define GET_WM_CHARTOITEM_MPS(ch,pos,hwnd) (WPARAM)MAKELONG((pos),(ch)),(LONG)(hwnd)
      def GET_WM_CHARTOITEM_MPS(ch, pos, hwnd) [MAKELONG(pos, ch), hwnd] end

      #define GET_WM_CHARTOITEM_POS(wp,lp) HIWORD(wp)
      def GET_WM_CHARTOITEM_POS(wp, _) HIWORD(wp) end

      #define GET_WM_COMMAND_CMD(wp,lp) HIWORD(wp)
      def GET_WM_COMMAND_CMD(wp, _) HIWORD(wp) end

      #define GET_WM_COMMAND_HWND(wp,lp) (HWND)(lp)
      def GET_WM_COMMAND_HWND(_, lp) lp end

      #define GET_WM_COMMAND_ID(wp,lp) LOWORD(wp)
      def GET_WM_COMMAND_ID(wp, _) LOWORD(wp) end

      #define GET_WM_COMMAND_MPS(id,hwnd,cmd) (WPARAM)MAKELONG(id,cmd),(LONG)(hwnd)
      def GET_WM_COMMAND_MPS(id, hwnd, cmd) [ MAKELONG(id, cmd), hwnd] end

      #define GET_WM_CTLCOLOR_HDC(wp,lp,msg) (HDC)(wp)
      def GET_WM_CTLCOLOR_HDC(wp, _, _) wp end

      #define GET_WM_CTLCOLOR_HWND(wp,lp,msg) (HWND)(lp)
      def GET_WM_CTLCOLOR_HWND(_, lp, _) lp end

      #define GET_WM_CTLCOLOR_MPS(hdc,hwnd,type) (WPARAM)(hdc),(LONG)(hwnd)
      def GET_WM_CTLCOLOR_MPS(hdc, hwnd, type) [hdc, hwnd] end

      #define GET_WM_CTLCOLOR_MSG(type) (WORD)(WM_CTLCOLORMSGBOX+(type))
      def GET_WM_CTLCOLOR_MSG(type) WM::CTLCOLORMSGBOX + type end

      #define GET_WM_CTLCOLOR_TYPE(wp,lp,msg) (WORD)(msg - WM_CTLCOLORMSGBOX)
      def GET_WM_CTLCOLOR_TYPE(_, _, msg) msg - WM::CTLCOLORMSGBOX end

      #define GET_WM_HSCROLL_CODE(wp,lp) LOWORD(wp)
      def GET_WM_HSCROLL_CODE(wp, lp) LOWORD(wp) end

      #define GET_WM_HSCROLL_HWND(wp,lp) (HWND)(lp)
      def GET_WM_HSCROLL_HWND(wp, lp) lp end

      #define GET_WM_HSCROLL_MPS(code,pos,hwnd) (WPARAM)MAKELONG(code,pos),(LONG)(hwnd)
      def GET_WM_HSCROLL_MPS(code, pos, hwnd) [MAKELONG(code, pos), hwnd] end

      #define GET_WM_HSCROLL_POS(wp,lp) HIWORD(wp)
      def GET_WM_HSCROLL_POS(wp, _) HIWORD(wp) end

      #define GET_WM_MDIACTIVATE_FACTIVATE(hwnd,wp,lp) (lp == (LONG)hwnd)
      def GET_WM_MDIACTIVATE_FACTIVATE(hwnd, _, lp) lp == hwnd; end

      #define GET_WM_MDIACTIVATE_HWNDACTIVATE(wp,lp) (HWND)(lp)
      def GET_WM_MDIACTIVATE_HWNDACTIVATE(_, lp) lp end

      #define GET_WM_MDIACTIVATE_HWNDDEACT(wp,lp) (HWND)(wp)
      def GET_WM_MDIACTIVATE_HWNDDEACT(wp, lp) wp end

      #define GET_WM_MDIACTIVATE_MPS(f,hwndD,hwndA) (WPARAM)(hwndA),0
      def GET_WM_MDIACTIVATE_MPS(_, hwndD, hwndA) [hwndA, 0] end

      #define GET_WM_MDISETMENU_MPS(hmenuF,hmenuW) (WPARAM)hmenuF,(LONG)hmenuW
      def GET_WM_MDISETMENU_MPS(hmenuF, hmenuW) [hmenuF, hmenuW] end

      #define GET_WM_MENUCHAR_CHAR(wp,lp) (TCHAR)LOWORD(wp)
      def GET_WM_MENUCHAR_CHAR(wp, _) LOWORD(wp) end

      #define GET_WM_MENUCHAR_FMENU(wp,lp) (BOOL)HIWORD(wp)
      def GET_WM_MENUCHAR_FMENU(wp, _) HIWORD(wp) end

      #define GET_WM_MENUCHAR_HMENU(wp,lp) (HMENU)(lp)
      def GET_WM_MENUCHAR_HMENU(_, lp) lp end

      #define GET_WM_MENUCHAR_MPS(ch,hmenu,f) (WPARAM)MAKELONG(ch,f),(LONG)(hmenu)
      def GET_WM_MENUCHAR_MPS(ch, hmenu, f) [MAKELONG(ch, f), hmenu] end

      #define GET_WM_MENUSELECT_CMD(wp,lp) LOWORD(wp)
      def GET_WM_MENUSELECT_CMD(wp, _) LOWORD(wp) end

      #define GET_WM_MENUSELECT_FLAGS(wp,lp) (UINT)(int)(short)HIWORD(wp)
      def GET_WM_MENUSELECT_FLAGS(wp, _) HIWORD(wp) end

      #define GET_WM_MENUSELECT_HMENU(wp,lp) (HMENU)(lp)
      def GET_WM_MENUSELECT_HMENU(_, lp) lp end

      #define GET_WM_MENUSELECT_MPS(cmd,f,hmenu) (WPARAM)MAKELONG(cmd,f),(LONG)(hmenu)
      def GET_WM_MENUSELECT_MPS(cmd, f, hmenu) [MAKELONG(cmd, f), hmenu] end

      #define GET_WM_PARENTNOTIFY2_MPS(msg,x,y) (WPARAM)MAKELONG(0,msg),MAKELONG(x,y)
      def GET_WM_PARENTNOTIFY2_MPS(msg, x, y) [MAKELONG(0, msg), MAKELONG(x,y)] end

      #define GET_WM_PARENTNOTIFY_HWNDCHILD(wp,lp) (HWND)(lp)
      def GET_WM_PARENTNOTIFY_HWNDCHILD(_, lp) lp end

      #define GET_WM_PARENTNOTIFY_ID(wp,lp) HIWORD(wp)
      def GET_WM_PARENTNOTIFY_ID(wp, _) HIWORD(wp) end

      #define GET_WM_PARENTNOTIFY_MPS(msg,id,hwnd) (WPARAM)MAKELONG(id,msg),(LONG)(hwnd)
      def GET_WM_PARENTNOTIFY_MPS(msg, id, hwnd) [MAKELONG(id, msg), hwnd] end

      #define GET_WM_PARENTNOTIFY_MSG(wp,lp) LOWORD(wp)
      def GET_WM_PARENTNOTIFY_MSG(wp, _) LOWORD(wp) end

      #define GET_WM_PARENTNOTIFY_X(wp,lp) (int)(short)LOWORD(lp)
      def GET_WM_PARENTNOTIFY_X(_, lp) LOWORD(lp) end

      #define GET_WM_PARENTNOTIFY_Y(wp,lp) (int)(short)HIWORD(lp)
      def GET_WM_PARENTNOTIFY_Y(_, lp) HIWORD(lp) end

      #define GET_WM_VKEYTOITEM_CODE(wp,lp) (int)(short)LOWORD(wp)
      def GET_WM_VKEYTOITEM_CODE(wp, _) LOWORD(wp) end

      #define GET_WM_VKEYTOITEM_HWND(wp,lp) (HWND)(lp)
      def GET_WM_VKEYTOITEM_HWND(_, lp) lp end

      #define GET_WM_VKEYTOITEM_ITEM(wp,lp) HIWORD(wp)
      def GET_WM_VKEYTOITEM_ITEM(wp, _) HIWORD(wp) end

      #define GET_WM_VKEYTOITEM_MPS(code,item,hwnd) (WPARAM)MAKELONG(item,code),(LONG)(hwnd)
      def GET_WM_VKEYTOITEM_MPS(code, item, hwnd) [MAKELONG(item, code), hwnd] end

      #define GET_WM_VSCROLL_CODE(wp,lp) LOWORD(wp)
      def GET_WM_VSCROLL_CODE(wp, _) LOWORD(wp) end

      #define GET_WM_VSCROLL_HWND(wp,lp) (HWND)(lp)
      def GET_WM_VSCROLL_HWND(_, lp) lp end

      #define GET_WM_VSCROLL_MPS(code,pos,hwnd) (WPARAM)MAKELONG(code,pos),(LONG)(hwnd)
      def GET_WM_VSCROLL_MPS(code, pos, hwnd) [MAKELONG(code, pos), hwnd] end

      #define GET_WM_VSCROLL_POS(wp,lp) HIWORD(wp)
      def GET_WM_VSCROLL_POS(wp, _) HIWORD(wp) end
    end
  end
end
