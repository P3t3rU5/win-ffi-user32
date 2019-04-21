require_relative '../../../enum/window/control/combobox/message'

module WinFFI
  module User32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_additemdata
      #define ComboBox_AddItemData(hwndCtl,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_ADDSTRING,0,(LPARAM)(data)))
      def ComboBox_AddItemData(hwndCtl, data) send_combobox_message(hwndCtl, :ADDSTRING, lparam: data) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_addstring
      #define ComboBox_AddString(hwndCtl,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),CB_ADDSTRING,0,(LPARAM)(LPCTSTR)(lpsz)))
      def ComboBox_AddString(hwndCtl, lpsz)
        send_combobox_message(hwndCtl, :ADDSTRING, lparam: lpsz)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_deletestring
      #define ComboBox_DeleteString(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_DELETESTRING,(WPARAM)(int)(index),0))
      def ComboBox_DeleteString(hwndCtl, index)
        send_combobox_message(hwndCtl, :DELETESTRING, wparam: index)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_dir
      #define ComboBox_Dir(hwndCtl,attrs,lpszFileSpec) ((int)(DWORD)SNDMSG((hwndCtl),CB_DIR,(WPARAM)(UINT)(attrs),(LPARAM)(LPCTSTR)(lpszFileSpec)))
      def ComboBox_Dir(hwndCtl, attrs, lpszFileSpec)
        send_combobox_message(hwndCtl, :DIR, wparam: attrs, lparam: lpszFileSpec)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_enable
      #define ComboBox_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def ComboBox_Enable(hwndCtl, fEnable) EnableWindow(hwndCtl, fEnable) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_finditemdata
      #define ComboBox_FindItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ComboBox_FindItemData(hwndCtl, indexStart, data)
        send_combobox_message(hwndCtl, :FINDSTRING, wparam: indexStart, lparam: data)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_findstring
      #define ComboBox_FindString(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ComboBox_FindString(hwndCtl, indexStart, lpszFind)
        send_combobox_message(hwndCtl, :FINDSTRING, wparam: indexStart, lparam: lpszFind)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_findstringexact
      #define ComboBox_FindStringExact(hwndCtl,indexStart,lpszFind) ((int)(DWORD)SNDMSG((hwndCtl),CB_FINDSTRINGEXACT,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszFind)))
      def ComboBox_FindStringExact(hwndCtl, indexStart, lpszFind)
        send_combobox_message(hwndCtl, :FINDSTRINGEXACT, wparam: indexStart, lparam: lpszFind)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getcount
      #define ComboBox_GetCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETCOUNT,0,0))
      def ComboBox_GetCount(hwndCtl) send_combobox_message(hwndCtl, :GETCOUNT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getcursel
      #define ComboBox_GetCurSel(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETCURSEL,0,0))
      def ComboBox_GetCurSel(hwndCtl) send_combobox_message(hwndCtl, :GETCURSEL) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getdroppedcontrolrect
      #define ComboBox_GetDroppedControlRect(hwndCtl,lprc) ((void)SNDMSG((hwndCtl),CB_GETDROPPEDCONTROLRECT,0,(LPARAM)(RECT*)(lprc)))
      def ComboBox_GetDroppedControlRect(hwndCtl, lprc)
        send_combobox_message(hwndCtl, :GETDROPPEDCONTROLRECT, lparam: lprc)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getdroppedstate
      #define ComboBox_GetDroppedState(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),CB_GETDROPPEDSTATE,0,0))
      def ComboBox_GetDroppedState(hwndCtl) send_combobox_message(hwndCtl, :GETDROPPEDSTATE) end

      #define ComboBox_GetEditSel(hwndCtl) ((DWORD)SNDMSG((hwndCtl),CB_GETEDITSEL,0,0))
      def ComboBox_GetEditSel(hwndCtl) send_combobox_message(hwndCtl, :GETEDITSEL) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getextendedui
      #define ComboBox_GetExtendedUI(hwndCtl) ((UINT)(DWORD)SNDMSG((hwndCtl),CB_GETEXTENDEDUI,0,0))
      def ComboBox_GetExtendedUI(hwndCtl) send_combobox_message(hwndCtl, :GETEXTENDEDUI) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getitemdata
      #define ComboBox_GetItemData(hwndCtl,index) ((LRESULT)(DWORD)SNDMSG((hwndCtl),CB_GETITEMDATA,(WPARAM)(int)(index),0))
      def ComboBox_GetItemData(hwndCtl, index) send_combobox_message(hwndCtl, :GETITEMDATA, wparam: index) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getitemheight
      #define ComboBox_GetItemHeight(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETITEMHEIGHT,0,0))
      def ComboBox_GetItemHeight(hwndCtl) send_combobox_message(hwndCtl, :GETITEMHEIGHT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getlbtext
      #define ComboBox_GetLBText(hwndCtl,index,lpszBuffer) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETLBTEXT,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpszBuffer)))
      def ComboBox_GetLBText(hwndCtl, index, lpszBuffer)
        send_combobox_message(hwndCtl, :GETLBTEXT, wparam: index, lparam: lpszBuffer)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_getlbtextlen
      #define ComboBox_GetLBTextLen(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_GETLBTEXTLEN,(WPARAM)(int)(index),0))
      def ComboBox_GetLBTextLen(hwndCtl, index) send_combobox_message(hwndCtl, :GETLBTEXTLEN, wparam: index) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_gettext
      #define ComboBox_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def ComboBox_GetText(hwndCtl, lpch, cchMax) GetWindowText(hwndCtl, lpch, cchMax) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_gettextlength
      #define ComboBox_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def ComboBox_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl) end

      #define ComboBox_InsertItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(data)))
      def ComboBox_InsertItemData(hwndCtl, index, data)
        send_combobox_message(hwndCtl, :INSERTSTRING, wparam: index, lparam: data)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_insertitemdata
      #define ComboBox_InsertString(hwndCtl,index,lpsz) ((int)(DWORD)SNDMSG((hwndCtl),CB_INSERTSTRING,(WPARAM)(int)(index),(LPARAM)(LPCTSTR)(lpsz)))
      def ComboBox_InsertString(hwndCtl, index, lpsz)
        send_combobox_message(hwndCtl, :INSERTSTRING, wparam: index, lparam: lpsz)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_limittext
      #define ComboBox_LimitText(hwndCtl,cchLimit) ((int)(DWORD)SNDMSG((hwndCtl),CB_LIMITTEXT,(WPARAM)(int)(cchLimit),0))
      def ComboBox_LimitText(hwndCtl, cchLimit) send_combobox_message(hwndCtl, :LIMITTEXT, wparam: cchLimit) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_resetcontent
      #define ComboBox_ResetContent(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),CB_RESETCONTENT,0,0))
      def ComboBox_ResetContent(hwndCtl) send_combobox_message(hwndCtl, :RESETCONTENT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_selectitemdata
      #define ComboBox_SelectItemData(hwndCtl,indexStart,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(data)))
      def ComboBox_SelectItemData(hwndCtl, indexStart, data)
        send_combobox_message(hwndCtl, :SELECTSTRING, wparam: indexStart, lparam: data)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_selectstring
      #define ComboBox_SelectString(hwndCtl,indexStart,lpszSelect) ((int)(DWORD)SNDMSG((hwndCtl),CB_SELECTSTRING,(WPARAM)(int)(indexStart),(LPARAM)(LPCTSTR)(lpszSelect)))
      def ComboBox_SelectString(hwndCtl, indexStart, lpszSelect)
        send_combobox_message(hwndCtl, :SELECTSTRING, wparam: indexStart, lparam: lpszSelect)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_setcursel
      #define ComboBox_SetCurSel(hwndCtl,index) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETCURSEL,(WPARAM)(int)(index),0))
      def ComboBox_SetCurSel(hwndCtl, index) send_combobox_message(hwndCtl, :SETCURSEL, wparam: index) end

      #define ComboBox_SetEditSel(hwndCtl,ichStart,ichEnd) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETEDITSEL,0,MAKELPARAM((ichStart),(ichEnd))))
      def ComboBox_SetEditSel(hwndCtl, ichStart, ichEnd)
        send_combobox_message(hwndCtl, :SETEDITSEL, lparam: MAKELPARAM(ichStart, ichEnd))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_setextendedui
      #define ComboBox_SetExtendedUI(hwndCtl,flags) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETEXTENDEDUI,(WPARAM)(UINT)(flags),0))
      def ComboBox_SetExtendedUI(hwndCtl, flags) send_combobox_message(hwndCtl, :SETEXTENDEDUI, wparam: flags) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_setitemdata
      #define ComboBox_SetItemData(hwndCtl,index,data) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETITEMDATA,(WPARAM)(int)(index),(LPARAM)(data)))
      def ComboBox_SetItemData(hwndCtl, index, data)
        send_combobox_message(hwndCtl, :SETITEMDATA, wparam: index, lparam: data)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_setitemheight
      #define ComboBox_SetItemHeight(hwndCtl,index,cyItem) ((int)(DWORD)SNDMSG((hwndCtl),CB_SETITEMHEIGHT,(WPARAM)(int)(index),(LPARAM)(int)cyItem))
      def ComboBox_SetItemHeight(hwndCtl, index, cyItem)
        send_combobox_message(hwndCtl, :SETITEMHEIGHT, wparam: index, lparam: cyItem)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_settext
      #define ComboBox_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def ComboBox_SetText(hwndCtl, lpsz) SetWindowText(hwndCtl, lpsz) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/windowsx/nf-windowsx-combobox_showdropdown
      #define ComboBox_ShowDropdown(hwndCtl,fShow) ((BOOL)(DWORD)SNDMSG((hwndCtl),CB_SHOWDROPDOWN,(WPARAM)(BOOL)(fShow),0))
      def ComboBox_ShowDropdown(hwndCtl, fShow) send_combobox_message(hwndCtl, :SHOWDROPDOWN, wparam: fShow) end

      if WINDOWS_VERSION >= :xp
        #define ComboBox_SetMinVisible(hwnd, iMinVisible) (BOOL)SNDMSG((hwnd), CB_SETMINVISIBLE, (WPARAM)(iMinVisible), 0)
        def ComboBox_SetMinVisible(hwnd, iMinVisible) send_combobox_message(hwnd, :SETMINVISIBLE, wparam: iMinVisible) end

        #define ComboBox_GetMinVisible(hwnd) (int)SNDMSG((hwnd), CB_GETMINVISIBLE, 0, 0)
        def ComboBox_GetMinVisible(hwnd) send_combobox_message(hwnd, :GETMINVISIBLE) end

        #define ComboBox_SetCueBannerText(hwnd, lpcwText) (BOOL)SNDMSG((hwnd), CB_SETCUEBANNER, 0, (LPARAM)(lpcwText))
        def ComboBox_SetCueBannerText(hwnd, lpcwText) send_combobox_message(hwnd, :SETCUEBANNER, lparam: lpcwText) end

        #define ComboBox_GetCueBannerText(hwnd, lpwText, cchText) (BOOL)SNDMSG((hwnd), CB_GETCUEBANNER, (WPARAM)(lpwText), (LPARAM)(cchText))
        def ComboBox_GetCueBannerText(hwnd, lpwText, cchText)
          send_combobox_message(hwnd, :GETCUEBANNER, wparam: lpwText, lparam: cchText)
        end
      end

      private def send_combobox_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, ComboBoxMessage[message], wparam, lparam)
      end
    end
  end
end
