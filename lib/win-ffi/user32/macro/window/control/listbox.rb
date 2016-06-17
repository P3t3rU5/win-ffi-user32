#define ListBox_AddItemData(hwndCtl,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_ADDSTRING,0,(LPARAM)(data)))
#define ListBox_AddString(hwndCtl,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),LB_ADDSTRING,0,(LPARAM)(LPCTSTR)(lpsz)))
#define ListBox_DeleteString(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_DELETESTRING,(WPARAM)(int)(index),0))
#define ListBox_Dir(hwndCtl,attrs,lpszFileSpec) ((int)(DWORD)SNDMSG((hwndCtl),LB_DIR,(WPARAM)(UINT)(attrs),(LPARAM)(LPCTSTR)(lpszFileSpec)))
#define ListBox_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
#define ListBox_FindItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
#define ListBox_FindString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
#define ListBox_FindStringExact(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_FINDSTRINGEXACT,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
#define ListBox_GetCaretIndex(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCARETINDEX,0,0))
#define ListBox_GetCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCOUNT,0,0))
#define ListBox_GetCurSel(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETCURSEL,0,0))
#define ListBox_GetHorizontalExtent(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETHORIZONTALEXTENT,0,0))
#define ListBox_GetItemData(hwndCtl,index) ((LRESULT)(DWORD)SNDMSG((hwndCtl),LB_GETITEMDATA,(WPARAM)(int)(index),0))
#define ListBox_GetItemHeight(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETITEMHEIGHT,(WPARAM)(int)(index),0))
#define ListBox_GetItemRect(hwndCtl,index,lprc) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETITEMRECT,(WPARAM)(int)(index),(LPARAM)(RECT*)(lprc)))
#define ListBox_GetSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSEL,(WPARAM)(int)(index),0))
#define ListBox_GetSelCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSELCOUNT,0,0))
#define ListBox_GetSelItems(hwndCtl,cItems,lpItems) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETSELITEMS,(WPARAM)(int)(cItems),(LPARAM)(int*)(lpItems)))
#define ListBox_GetText(hwndCtl,index,lpszBuffer) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTEXT,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpszBuffer)))
#define ListBox_GetTextLen(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTEXTLEN,(WPARAM)(int)(index),0))
#define ListBox_GetTopIndex(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),LB_GETTOPINDEX,0,0))
#define ListBox_InsertItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(data)))
#define ListBox_InsertString(hwndCtl,index,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),LB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpsz)))
#define ListBox_ResetContent(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),LB_RESETCONTENT,0,0))
#define ListBox_SelItemRange(hwndCtl,fSelect,first,last) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELITEMRANGE,(WPARAM)(BOOL)(fSelect),MAKELPARAM((first),(last))))
#define ListBox_SelectItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
#define ListBox_SelectString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),LB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
#define ListBox_SetCaretIndex(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETCARETINDEX,(WPARAM)(int)(index),0))
#define ListBox_SetColumnWidth(hwndCtl,cxColumn) ((void)SNDMSG((hwndCtl),LB_SETCOLUMNWIDTH,(WPARAM)(int)(cxColumn),0))
#define ListBox_SetCurSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETCURSEL,(WPARAM)(int)(index),0))
#define ListBox_SetHorizontalExtent(hwndCtl,cxExtent) ((void)SNDMSG((hwndCtl),LB_SETHORIZONTALEXTENT,(WPARAM)(int)(cxExtent),0))
#define ListBox_SetItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETITEMDATA,(WPARAM)(int)(index),(LPARAM)(data)))
#define ListBox_SetItemHeight(hwndCtl,index,cy) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETITEMHEIGHT,(WPARAM)(int)(index),MAKELPARAM((cy),0)))
#define ListBox_SetSel(hwndCtl,fSelect,index) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETSEL,(WPARAM)(BOOL)(fSelect),(LPARAM)(index)))
#define ListBox_SetTabStops(hwndCtl,cTabs,lpTabs) ((BOOL)(DWORD)SNDMSG((hwndCtl),LB_SETTABSTOPS,(WPARAM)(int)(cTabs),(LPARAM)(int*)(lpTabs)))
#define ListBox_SetTopIndex(hwndCtl,indexTop) ((int)(DWORD)SNDMSG((hwndCtl),LB_SETTOPINDEX,(WPARAM)(int)(indexTop),0))


require 'win-ffi/user32/enum/window/control/listbox'

module WinFFI
  module User32
    class << self
      def ListBox_AddItemData(hwndCtl, data)
        User32.SendMessage(hwndCtl, LB_ADDSTRING, 0, data)
      end

      def ListBox_AddString(hwndCtl, lpsz)
        User32.SendMessage(hwndCtl, LB_ADDSTRING, 0, lpsz)
      end

      def ListBox_DeleteString(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_DELETESTRING, index, 0)
      end

      def ListBox_Dir(hwndCtl, attrs, lpszFileSpec)
        User32.SendMessage(hwndCtl, LB_DIR, attrs, lpszFileSpec)
      end

      def ListBox_Enable(hwndCtl, fEnable)
        EnableWindow(hwndCtl, fEnable)
      end

      def ListBox_FindItemData(hwndCtl, indexStart, data)
        User32.SendMessage(hwndCtl, LB_FINDSTRING, indexStart, data)
      end

      def ListBox_FindString(hwndCtl, indexStart, lpszFind)
        User32.SendMessage(hwndCtl, LB_FINDSTRING, indexStart, lpszFind)
      end

      def ListBox_FindStringExact(hwndCtl, indexStart, lpszFind)
        User32.SendMessage(hwndCtl, LB_FINDSTRINGEXACT, indexStart, lpszFind)
      end

      def ListBox_GetCaretIndex(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETCARETINDEX, 0, 0)
      end

      def ListBox_GetCount(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETCOUNT, 0, 0)
      end

      def ListBox_GetCurSel(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETCURSEL, 0, 0)
      end

      def ListBox_GetHorizontalExtent(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETHORIZONTALEXTENT, 0, 0)
      end

      def ListBox_GetItemData(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_GETITEMDATA, index, 0)
      end

      def ListBox_GetItemHeight(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_GETITEMHEIGHT, index, 0)
      end

      def ListBox_GetItemRect(hwndCtl, index, lprc)
        User32.SendMessage(hwndCtl, LB_GETITEMRECT, index, lprc)
      end

      def ListBox_GetSel(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_GETSEL, index, 0)
      end

      def ListBox_GetSelCount(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETSELCOUNT, 0, 0)
      end

      def ListBox_GetSelItems(hwndCtl, cItems, lpItems)
        User32.SendMessage(hwndCtl, LB_GETSELITEMS, cItems, lpItems)
      end

      def ListBox_GetText(hwndCtl, index, lpszBuffer)
        User32.SendMessage(hwndCtl, LB_GETTEXT, index, lpszBuffer)
      end

      def ListBox_GetTextLen(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_GETTEXTLEN, index, 0)
      end

      def ListBox_GetTopIndex(hwndCtl)
        User32.SendMessage(hwndCtl, LB_GETTOPINDEX, 0, 0)
      end

      def ListBox_InsertItemData(hwndCtl, index, data)
        User32.SendMessage(hwndCtl, LB_INSERTSTRING, index, data)
      end

      def ListBox_InsertString(hwndCtl, index, lpsz)
        User32.SendMessage(hwndCtl, LB_INSERTSTRING, index, lpsz)
      end

      def ListBox_ResetContent(hwndCtl)
        User32.SendMessage(hwndCtl, LB_RESETCONTENT, 0, 0)
      end

      def ListBox_SelItemRange(hwndCtl, fSelect, first, last)
        User32.SendMessage(hwndCtl, LB_SELITEMRANGE, fSelect, MAKELPARAM(first, last))
      end

      def ListBox_SelectItemData(hwndCtl, indexStart, data)
        User32.SendMessage(hwndCtl, LB_SELECTSTRING, indexStart, data)
      end

      def ListBox_SelectString(hwndCtl, indexStart, lpszFind)
        User32.SendMessage(hwndCtl, LB_SELECTSTRING, indexStart, lpszFind)
      end

      def ListBox_SetCaretIndex(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_SETCARETINDEX, index, 0)
      end

      def ListBox_SetColumnWidth(hwndCtl, cxColumn)
        User32.SendMessage(hwndCtl, LB_SETCOLUMNWIDTH, cxColumn, 0)
      end

      def ListBox_SetCurSel(hwndCtl, index)
        User32.SendMessage(hwndCtl, LB_SETCURSEL, index, 0)
      end

      def ListBox_SetHorizontalExtent(hwndCtl, cxExtent)
        User32.SendMessage(hwndCtl, LB_SETHORIZONTALEXTENT, cxExtent, 0)
      end

      def ListBox_SetItemData(hwndCtl, index, data)
        User32.SendMessage(hwndCtl, LB_SETITEMDATA, index, data)
      end

      def ListBox_SetItemHeight(hwndCtl, index, cy)
        User32.SendMessage(hwndCtl, LB_SETITEMHEIGHT, index, MAKELPARAM(cy, 0))
      end

      def ListBox_SetSel(hwndCtl, fSelect, index)
        User32.SendMessage(hwndCtl, LB_SETSEL, fSelect, index)
      end

      def ListBox_SetTabStops(hwndCtl, cTabs, lpTabs)
        User32.SendMessage(hwndCtl, LB_SETTABSTOPS, cTabs, lpTabs)
      end

      def ListBox_SetTopIndex(hwndCtl, indexTop)
        User32.SendMessage(hwndCtl, LB_SETTOPINDEX, indexTop, 0)
      end
    end
  end
end

