require_relative '../../../enum/window/control/listbox/message'

module WinFFI
  module User32
    class << self
      #define ListBox_AddItemData(hwndCtl,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_ADDSTRING,0,(LPARAM)(data)))
      def ListBox_AddItemData(hwndCtl, data) send_listbox_message(hwndCtl, :ADDSTRING, lparam: data) end

      #define ListBox_AddString(hwndCtl,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),LB_ADDSTRING,0,(LPARAM)(LPCTSTR)(lpsz)))
      def ListBox_AddString(hwndCtl, lpsz) send_listbox_message(hwndCtl, :ADDSTRING, lparam: lpsz) end

      #define ListBox_DeleteString(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_DELETESTRING,(WPARAM)(int)(index),0))
      def ListBox_DeleteString(hwndCtl, index) send_listbox_message(hwndCtl, :DELETESTRING, wparam: index) end

      #define ListBox_Dir(hwndCtl,attrs,lpszFileSpec) ((int)(DWORD)SNDMSG((hwndCtl),LB_DIR,(WPARAM)(UINT)(attrs),(LPARAM)(LPCTSTR)(lpszFileSpec)))
      def ListBox_Dir(hwndCtl, attrs, lpszFileSpec)
        send_listbox_message(hwndCtl, :DIR, wparam: attrs, lparam: lpszFileSpec)
      end

      #define ListBox_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def ListBox_Enable(hwndCtl, fEnable) EnableWindow(hwndCtl, fEnable) end

      #define ListBox_FindItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ListBox_FindItemData(hwndCtl, indexStart, data)
        send_listbox_message(hwndCtl, :FINDSTRING, wparam: indexStart, lparam: data)
      end

      #define ListBox_FindString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ListBox_FindString(hwndCtl, indexStart, lpszFind)
        send_listbox_message(hwndCtl, :FINDSTRING, wparam: indexStart, lparam: lpszFind)
      end

      #define ListBox_FindStringExact(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRINGEXACT,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ListBox_FindStringExact(hwndCtl, indexStart, lpszFind)
        send_listbox_message(hwndCtl, :FINDSTRINGEXACT, wparam: indexStart, lparam: lpszFind)
      end

      #define ListBox_GetCaretIndex(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCARETINDEX,0,0))
      def ListBox_GetCaretIndex(hwndCtl) send_listbox_message(hwndCtl, :GETCARETINDEX) end

      #define ListBox_GetCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCOUNT,0,0))
      def ListBox_GetCount(hwndCtl) send_listbox_message(hwndCtl, :GETCOUNT) end

      #define ListBox_GetCurSel(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCURSEL,0,0))
      def ListBox_GetCurSel(hwndCtl) send_listbox_message(hwndCtl, :GETCURSEL) end

      #define ListBox_GetHorizontalExtent(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETHORIZONTALEXTENT,0,0))
      def ListBox_GetHorizontalExtent(hwndCtl) send_listbox_message(hwndCtl, :GETHORIZONTALEXTENT) end

      #define ListBox_GetItemData(hwndCtl,index) ((LRESULT)(DWORD)SNDMSG((hwndCtl),LB_GETITEMDATA,(WPARAM)(int)(index),0))
      def ListBox_GetItemData(hwndCtl, index) send_listbox_message(hwndCtl, :GETITEMDATA, wparam: index) end

      #define ListBox_GetItemHeight(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETITEMHEIGHT,(WPARAM)(int)(index),0))
      def ListBox_GetItemHeight(hwndCtl, index)
        send_listbox_message(hwndCtl, :GETITEMHEIGHT, wparam: index)
      end

      #define ListBox_GetItemRect(hwndCtl,index,lprc) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETITEMRECT,(WPARAM)(int)(index),(LPARAM)(RECT*)(lprc)))
      def ListBox_GetItemRect(hwndCtl, index, lprc)
        send_listbox_message(hwndCtl, :GETITEMRECT, wparam: index, lparam: lprc)
      end

      #define ListBox_GetSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSEL,(WPARAM)(int)(index),0))
      def ListBox_GetSel(hwndCtl, index) send_listbox_message(hwndCtl, :GETSEL, wparam: index) end

      #define ListBox_GetSelCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSELCOUNT,0,0))
      def ListBox_GetSelCount(hwndCtl) send_listbox_message(hwndCtl, :GETSELCOUNT) end

      #define ListBox_GetSelItems(hwndCtl,cItems,lpItems) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSELITEMS,(WPARAM)(int)(cItems),(LPARAM)(int*)(lpItems)))
      def ListBox_GetSelItems(hwndCtl, cItems, lpItems)
        send_listbox_message(hwndCtl, :GETSELITEMS, wparam: cItems, lparam: lpItems)
      end

      #define ListBox_GetText(hwndCtl,index,lpszBuffer) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTEXT,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpszBuffer)))
      def ListBox_GetText(hwndCtl, index, lpszBuffer)
        send_listbox_message(hwndCtl, :GETTEXT, wparam: index, lparam: lpszBuffer)
      end

      #define ListBox_GetTextLen(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTEXTLEN,(WPARAM)(int)(index),0))
      def ListBox_GetTextLen(hwndCtl, index) send_listbox_message(hwndCtl, :GETTEXTLEN, wparam: index) end

      #define ListBox_GetTopIndex(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTOPINDEX,0,0))
      def ListBox_GetTopIndex(hwndCtl) send_listbox_message(hwndCtl, :GETTOPINDEX) end

      #define ListBox_InsertItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(data)))
      def ListBox_InsertItemData(hwndCtl, index, data)
        send_listbox_message(hwndCtl, :INSERTSTRING, wparam: index, lparam: data)
      end

      #define ListBox_InsertString(hwndCtl,index,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),LB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpsz)))
      def ListBox_InsertString(hwndCtl, index, lpsz)
        send_listbox_message(hwndCtl, :INSERTSTRING, wparam: index, lparam: lpsz)
      end

      #define ListBox_ResetContent(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),LB_RESETCONTENT,0,0))
      def ListBox_ResetContent(hwndCtl) send_listbox_message(hwndCtl, :RESETCONTENT) end

      #define ListBox_SelItemRange(hwndCtl,fSelect,first,last) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELITEMRANGE,(WPARAM)(BOOL)(fSelect),MAKELPARAM((first),(last))))
      def ListBox_SelItemRange(hwndCtl, fSelect, first, last)
        send_listbox_message(hwndCtl, :SELITEMRANGE, wparam: fSelect, lparam: MAKELPARAM(first, last))
      end

      #define ListBox_SelectItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ListBox_SelectItemData(hwndCtl, indexStart, data)
        send_listbox_message(hwndCtl, :SELECTSTRING, wparam: indexStart, lparam: data)
      end

      #define ListBox_SelectString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ListBox_SelectString(hwndCtl, indexStart, lpszFind)
        send_listbox_message(hwndCtl, :SELECTSTRING, wparam: indexStart, lparam: lpszFind)
      end

      #define ListBox_SetCaretIndex(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETCARETINDEX,(WPARAM)(int)(index),0))
      def ListBox_SetCaretIndex(hwndCtl, index) send_listbox_message(hwndCtl, :SETCARETINDEX, wparam: index) end

      #define ListBox_SetColumnWidth(hwndCtl,cxColumn) ((void)SNDMSG((hwndCtl),LB_SETCOLUMNWIDTH,(WPARAM)(int)(cxColumn),0))
      def ListBox_SetColumnWidth(hwndCtl, cxColumn)
        send_listbox_message(hwndCtl, :SETCOLUMNWIDTH, wparam: cxColumn)
      end

      #define ListBox_SetCurSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETCURSEL,(WPARAM)(int)(index),0))
      def ListBox_SetCurSel(hwndCtl, index) send_listbox_message(hwndCtl, :SETCURSEL, wparam: index) end

      #define ListBox_SetHorizontalExtent(hwndCtl,cxExtent) ((void)SNDMSG((hwndCtl),LB_SETHORIZONTALEXTENT,(WPARAM)(int)(cxExtent),0))
      def ListBox_SetHorizontalExtent(hwndCtl, cxExtent)
        send_listbox_message(hwndCtl, :SETHORIZONTALEXTENT, wparam: cxExtent)
      end

      #define ListBox_SetItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETITEMDATA,(WPARAM)(int)(index),(LPARAM)(data)))
      def ListBox_SetItemData(hwndCtl, index, data)
        send_listbox_message(hwndCtl, :SETITEMDATA, wparam: index, lparam: data)
      end

      #define ListBox_SetItemHeight(hwndCtl,index,cy) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETITEMHEIGHT,(WPARAM)(int)(index),MAKELPARAM((cy),0)))
      def ListBox_SetItemHeight(hwndCtl, index, cy)
        send_listbox_message(hwndCtl, :SETITEMHEIGHT, wparam: index, lparam: MAKELPARAM(cy, 0))
      end

      #define ListBox_SetSel(hwndCtl,fSelect,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETSEL,(WPARAM)(BOOL)(fSelect),(LPARAM)(index)))
      def ListBox_SetSel(hwndCtl, fSelect, index)
        send_listbox_message(hwndCtl, :SETSEL, wparam: fSelect, lparam: index)
      end

      #define ListBox_SetTabStops(hwndCtl,cTabs,lpTabs) ((BOOL)(DWORD)SNDMSG((hwndCtl),LB_SETTABSTOPS,(WPARAM)(int)(cTabs),(LPARAM)(int*)(lpTabs)))
      def ListBox_SetTabStops(hwndCtl, cTabs, lpTabs)
        send_listbox_message(hwndCtl, :SETTABSTOPS, wparam: cTabs, lparam: lpTabs)
      end

      #define ListBox_SetTopIndex(hwndCtl,indexTop) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETTOPINDEX,(WPARAM)(int)(indexTop),0))
      def ListBox_SetTopIndex(hwndCtl, indexTop)
        send_listbox_message(hwndCtl, :SETTOPINDEX, wparam: indexTop)
      end

      private def send_listbox_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, ListBoxMessage, wparam, lparam)
      end
    end
  end
end
