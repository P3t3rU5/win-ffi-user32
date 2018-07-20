require_relative '../../../enum/window/control/combobox'

module WinFFI
  module User32
    class << self
      #define ComboBox_AddItemData(hwndCtl,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_ADDSTRING,0,(LPARAM)(data)))
      def ComboBox_AddItemData(hwndCtl, data)
        SendMessage(hwndCtl, CB_ADDSTRING, 0, data)
      end

      #define ComboBox_AddString(hwndCtl,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),CB_ADDSTRING,0,(LPARAM)(LPCTSTR)(lpsz)))
      def ComboBox_AddString(hwndCtl, lpsz)
        SendMessage(hwndCtl, CB_ADDSTRING, 0, lpsz)
      end

      #define ComboBox_DeleteString(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_DELETESTRING,(WPARAM)(int)(index),0))
      def ComboBox_DeleteString(hwndCtl, index)
        SendMessage(hwndCtl, CB_DELETESTRING, index, 0)
      end

      #define ComboBox_Dir(hwndCtl,attrs,lpszFileSpec) ((int)(DWORD)SNDMSG((hwndCtl),CB_DIR,(WPARAM)(UINT)(attrs),(LPARAM)(LPCTSTR)(lpszFileSpec)))
      def ComboBox_Dir(hwndCtl, attrs, lpszFileSpec)
        SendMessage(hwndCtl, CB_DIR, attrs, lpszFileSpec)
      end

      #define ComboBox_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def ComboBox_Enable(hwndCtl, fEnable)
        EnableWindow(hwndCtl, fEnable)
      end

      #define ComboBox_FindItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ComboBox_FindItemData(hwndCtl, indexStart, data)
        SendMessage(hwndCtl, CB_FINDSTRING, indexStart, data)
      end

      #define ComboBox_FindString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ComboBox_FindString(hwndCtl, indexStart, lpszFind)
        SendMessage(hwndCtl, CB_FINDSTRING, indexStart, lpszFind)
      end

      #define ComboBox_FindStringExact(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRINGEXACT,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ComboBox_FindStringExact(hwndCtl, indexStart, lpszFind)
        SendMessage(hwndCtl, CB_FINDSTRINGEXACT, indexStart, lpszFind)
      end

      #define ComboBox_GetCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETCOUNT,0,0))
      def ComboBox_GetCount(hwndCtl)
        SendMessage(hwndCtl, CB_GETCOUNT, 0, 0)
      end

      #define ComboBox_GetCurSel(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETCURSEL,0,0))
      def ComboBox_GetCurSel(hwndCtl)
        SendMessage(hwndCtl, CB_GETCURSEL, 0, 0)
      end

      #define ComboBox_GetDroppedControlRect(hwndCtl,lprc) ((void)SNDMSG((hwndCtl),CB_GETDROPPEDCONTROLRECT,0,(LPARAM)(RECT*)(lprc)))
      def ComboBox_GetDroppedControlRect(hwndCtl, lprc)
        SendMessage(hwndCtl, CB_GETDROPPEDCONTROLRECT, 0, lprc)
      end

      #define ComboBox_GetDroppedState(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),CB_GETDROPPEDSTATE,0,0))
      def ComboBox_GetDroppedState(hwndCtl)
        SendMessage(hwndCtl, CB_GETDROPPEDSTATE, 0, 0)
      end

      #define ComboBox_GetEditSel(hwndCtl) ((DWORD)SNDMSG((hwndCtl),CB_GETEDITSEL,0,0))
      def ComboBox_GetEditSel(hwndCtl)
        SendMessage(hwndCtl, CB_GETEDITSEL, 0, 0)
      end

      #define ComboBox_GetExtendedUI(hwndCtl) ((UINT)(DWORD)SNDMSG((hwndCtl),CB_GETEXTENDEDUI,0,0))
      def ComboBox_GetExtendedUI(hwndCtl)
        SendMessage(hwndCtl, CB_GETEXTENDEDUI, 0, 0)
      end

      #define ComboBox_GetItemData(hwndCtl,index) ((LRESULT)(DWORD)SNDMSG((hwndCtl),CB_GETITEMDATA,(WPARAM)(int)(index),0))
      def ComboBox_GetItemData(hwndCtl, index)
        SendMessage(hwndCtl, CB_GETITEMDATA, index, 0)
      end

      #define ComboBox_GetItemHeight(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETITEMHEIGHT,0,0))
      def ComboBox_GetItemHeight(hwndCtl)
        SendMessage(hwndCtl, CB_GETITEMHEIGHT, 0, 0)
      end

      #define ComboBox_GetLBText(hwndCtl,index,lpszBuffer) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETLBTEXT,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpszBuffer)))
      def ComboBox_GetLBText(hwndCtl, index, lpszBuffer)
        SendMessage(hwndCtl, CB_GETLBTEXT, index, lpszBuffer)
      end

      #define ComboBox_GetLBTextLen(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETLBTEXTLEN,(WPARAM)(int)(index),0))
      def ComboBox_GetLBTextLen(hwndCtl, index)
        SendMessage(hwndCtl, CB_GETLBTEXTLEN, index, 0)
      end

      #define ComboBox_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def ComboBox_GetText(hwndCtl, lpch, cchMax)
        GetWindowText(hwndCtl, lpch, cchMax)
      end

      #define ComboBox_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def ComboBox_GetTextLength(hwndCtl)
        GetWindowTextLength(hwndCtl)
      end

      #define ComboBox_InsertItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(data)))
      def ComboBox_InsertItemData(hwndCtl, index, data)
        SendMessage(hwndCtl, CB_INSERTSTRING, index, data)
      end

      #define ComboBox_InsertString(hwndCtl,index,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),CB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpsz)))
      def ComboBox_InsertString(hwndCtl, index, lpsz)
        SendMessage(hwndCtl, CB_INSERTSTRING, index, lpsz)
      end

      #define ComboBox_LimitText(hwndCtl,cchLimit) ((int)(DWORD)SNDMSG((hwndCtl),CB_LIMITTEXT,(WPARAM)(int)(cchLimit),0))
      def ComboBox_LimitText(hwndCtl, cchLimit)
        SendMessage(hwndCtl, CB_LIMITTEXT, cchLimit, 0)
      end

      #define ComboBox_ResetContent(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_RESETCONTENT,0,0))
      def ComboBox_ResetContent(hwndCtl)
        SendMessage(hwndCtl, CB_RESETCONTENT, 0, 0)
      end

      #define ComboBox_SelectItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ComboBox_SelectItemData(hwndCtl, indexStart, data)
        SendMessage(hwndCtl, CB_SELECTSTRING, indexStart, data)
      end

      #define ComboBox_SelectString(hwndCtl,indexStart,lpszSelect) ((int)(DWORD)SNDMSG((hwndCtl),CB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszSelect)))
      def ComboBox_SelectString(hwndCtl, indexStart, lpszSelect)
        SendMessage(hwndCtl, CB_SELECTSTRING, indexStart, lpszSelect)
      end

      #define ComboBox_SetCurSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETCURSEL,(WPARAM)(int)(index),0))
      def ComboBox_SetCurSel(hwndCtl, index)
        SendMessage(hwndCtl, CB_SETCURSEL, index, 0)
      end

      #define ComboBox_SetEditSel(hwndCtl,ichStart,ichEnd) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETEDITSEL,0,MAKELPARAM((ichStart),(ichEnd))))
      def ComboBox_SetEditSel(hwndCtl, ichStart, ichEnd)
        SendMessage(hwndCtl, CB_SETEDITSEL, 0, MAKELPARAM(ichStart, ichEnd))
      end

      #define ComboBox_SetExtendedUI(hwndCtl,flags) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETEXTENDEDUI,(WPARAM)(UINT)(flags),0))
      def ComboBox_SetExtendedUI(hwndCtl, flags)
        SendMessage(hwndCtl, CB_SETEXTENDEDUI, flags, 0)
      end

      #define ComboBox_SetItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETITEMDATA,(WPARAM)(int)(index),(LPARAM)(data)))
      def ComboBox_SetItemData(hwndCtl, index, data)
        SendMessage(hwndCtl, CB_SETITEMDATA, index, data)
      end

      #define ComboBox_SetItemHeight(hwndCtl,index,cyItem) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETITEMHEIGHT,(WPARAM)(int)(index),(LPARAM)(int)cyItem))
      def ComboBox_SetItemHeight(hwndCtl, index, cyItem)
        SendMessage(hwndCtl, CB_SETITEMHEIGHT, index, cyItem)
      end

      #define ComboBox_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def ComboBox_SetText(hwndCtl, lpsz)
        SetWindowText(hwndCtl, lpsz)
      end

      #define ComboBox_ShowDropdown(hwndCtl,fShow) ((BOOL)(DWORD)SNDMSG((hwndCtl),CB_SHOWDROPDOWN,(WPARAM)(BOOL)(fShow),0))
      def ComboBox_ShowDropdown(hwndCtl, fShow)
        SendMessage(hwndCtl, CB_SHOWDROPDOWN, fShow, 0)
      end
    end
  end
end