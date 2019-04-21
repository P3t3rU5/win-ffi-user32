require_relative '../../../enum/window/control/edit/message'

module WinFFI
  module User32
    class << self
      #define Edit_CanUndo(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_CANUNDO,0,0))
      def Edit_CanUndo(hwndCtl) send_edit_message(hwndCtl, :CANUNDO)end

      #define Edit_EmptyUndoBuffer(hwndCtl) ((void)SNDMSG((hwndCtl),EM_EMPTYUNDOBUFFER,0,0))
      def Edit_EmptyUndoBuffer(hwndCtl) send_edit_message(hwndCtl, :EMPTYUNDOBUFFER) end

      #define Edit_Enable(hwndCtl,fEnable) EnableWindow((hwndCtl),(fEnable))
      def Edit_Enable(hwndCtl, fEnable) EnableWindow(hwndCtl, fEnable) end

      #define Edit_FmtLines(hwndCtl,fAddEOL) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_FMTLINES,(WPARAM)(BOOL)(fAddEOL),0))
      def Edit_FmtLines(hwndCtl, fAddEOL) send_edit_message(hwndCtl, :FMTLINES, wparam: fAddEOL) end

      #define Edit_GetFirstVisibleLine(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),EM_GETFIRSTVISIBLELINE,0,0))
      def Edit_GetFirstVisibleLine(hwndCtl) send_edit_message(hwndCtl, :GETFIRSTVISIBLELINE) end

      #define Edit_GetHandle(hwndCtl) ((HLOCAL)(UINT)(DWORD)SNDMSG((hwndCtl),EM_GETHANDLE,0,0))
      def Edit_GetHandle(hwndCtl) send_edit_message(hwndCtl, :GETHANDLE) end

      #define Edit_GetLine(hwndCtl,line,lpch,cchMax) ((*((int*)(lpch)) = (cchMax)),((int)(DWORD)SNDMSG((hwndCtl),EM_GETLINE,(WPARAM)(int)(line),(LPARAM)(LPTSTR)(lpch))))
      def Edit_GetLine(hwndCtl, line, lpch, cchMax)
        # ((*((int*)(lpch)) = (cchMax)),
        send_edit_message(hwndCtl, EM_GETLINE, line,  lpch)
      end

      #define Edit_GetLineCount(hwndCtl) ((int)(DWORD)SNDMSG((hwndCtl),EM_GETLINECOUNT,0,0))
      def Edit_GetLineCount(hwndCtl) send_edit_message(hwndCtl, :GETLINECOUNT) end

      #define Edit_GetModify(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_GETMODIFY,0,0))
      def Edit_GetModify(hwndCtl) send_edit_message(hwndCtl, :GETMODIFY) end

      #define Edit_GetPasswordChar(hwndCtl) ((TCHAR)(DWORD)SNDMSG((hwndCtl),EM_GETPASSWORDCHAR,0,0))
      def Edit_GetPasswordChar(hwndCtl) send_edit_message(hwndCtl, :GETPASSWORDCHAR) end

      #define Edit_GetRect(hwndCtl,lprc) ((void)SNDMSG((hwndCtl),EM_GETRECT,0,(LPARAM)(RECT*)(lprc)))
      def Edit_GetRect(hwndCtl, lprc) send_edit_message(hwndCtl, :GETRECT, lparam: lprc) end

      #define Edit_GetSel(hwndCtl) ((DWORD)SNDMSG((hwndCtl),EM_GETSEL,0,0))
      def Edit_GetSel(hwndCtl) send_edit_message(hwndCtl, :GETSEL) end

      #define Edit_GetText(hwndCtl,lpch,cchMax) GetWindowText((hwndCtl),(lpch),(cchMax))
      def Edit_GetText(hwndCtl, lpch, cchMax) GetWindowText(hwndCtl, lpch, cchMax) end

      #define Edit_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl)
      def Edit_GetTextLength(hwndCtl) GetWindowTextLength(hwndCtl) end

      #define Edit_GetWordBreakProc(hwndCtl) ((EDITWORDBREAKPROC)SNDMSG((hwndCtl),EM_GETWORDBREAKPROC,0,0))
      def Edit_GetWordBreakProc(hwndCtl) send_edit_message(hwndCtl, :GETWORDBREAKPROC) end

      #define Edit_LimitText(hwndCtl,cchMax) ((void)SNDMSG((hwndCtl),EM_LIMITTEXT,(WPARAM)(cchMax),0))
      def Edit_LimitText(hwndCtl, cchMax) send_edit_message(hwndCtl, :LIMITTEXT, wparam: cchMax) end

      #define Edit_LineFromChar(hwndCtl,ich) ((int)(DWORD)SNDMSG((hwndCtl),EM_LINEFROMCHAR,(WPARAM)(int)(ich),0))
      def Edit_LineFromChar(hwndCtl, ich) send_edit_message(hwndCtl, :LINEFROMCHAR, wparam: ich) end

      #define Edit_LineIndex(hwndCtl,line) ((int)(DWORD)SNDMSG((hwndCtl),EM_LINEINDEX,(WPARAM)(int)(line),0))
      def Edit_LineIndex(hwndCtl, line) send_edit_message(hwndCtl, :LINEINDEX, wparam: line) end

      #define Edit_LineLength(hwndCtl,line) ((int)(DWORD)SNDMSG((hwndCtl),EM_LINELENGTH,(WPARAM)(int)(line),0))
      def Edit_LineLength(hwndCtl, line) send_edit_message(hwndCtl, :LINELENGTH, wparam: line) end

      #define Edit_ReplaceSel(hwndCtl,lpszReplace) ((void)SNDMSG((hwndCtl),EM_REPLACESEL,0,(LPARAM)(LPCTSTR)(lpszReplace)))
      def Edit_ReplaceSel(hwndCtl, lpszReplace) send_edit_message(hwndCtl, :REPLACESEL, lparam: lpszReplace) end

      #define Edit_Scroll(hwndCtl,dv,dh) ((void)SNDMSG((hwndCtl),EM_LINESCROLL,(WPARAM)(dh),(LPARAM)(dv)))
      def Edit_Scroll(hwndCtl, dv, dh)
        send_edit_message(hwndCtl, :LINESCROLL, wparam: dh, lparam: dv)
      end

      #define Edit_ScrollCaret(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_SCROLLCARET,0,0))
      def Edit_ScrollCaret(hwndCtl) send_edit_message(hwndCtl, :SCROLLCARET) end

      #define Edit_SetHandle(hwndCtl,h) ((void)SNDMSG((hwndCtl),EM_SETHANDLE,(WPARAM)(UINT)(HLOCAL)(h),0))
      def Edit_SetHandle(hwndCtl, h) send_edit_message(hwndCtl, :SETHANDLE, wparam: h) end

      #define Edit_SetModify(hwndCtl,fModified) ((void)SNDMSG((hwndCtl),EM_SETMODIFY,(WPARAM)(UINT)(fModified),0))
      def Edit_SetModify(hwndCtl, fModified) send_edit_message(hwndCtl, :SETMODIFY, wparam: fModified) end

      #define Edit_SetPasswordChar(hwndCtl,ch) ((void)SNDMSG((hwndCtl),EM_SETPASSWORDCHAR,(WPARAM)(UINT)(ch),0))
      def Edit_SetPasswordChar(hwndCtl, ch) send_edit_message(hwndCtl, :SETPASSWORDCHAR, wparam: ch) end

      #define Edit_SetReadOnly(hwndCtl,fReadOnly) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_SETREADONLY,(WPARAM)(BOOL)(fReadOnly),0))
      def Edit_SetReadOnly(hwndCtl, fReadOnly) send_edit_message(hwndCtl, :SETREADONLY, wparam: fReadOnly) end

      #define Edit_SetRect(hwndCtl,lprc) ((void)SNDMSG((hwndCtl),EM_SETRECT,0,(LPARAM)(const RECT*)(lprc)))
      def Edit_SetRect(hwndCtl, lprc) send_edit_message(hwndCtl, :SETRECT, lparam: lprc) end

      #define Edit_SetRectNoPaint(hwndCtl,lprc) ((void)SNDMSG((hwndCtl),EM_SETRECTNP,0,(LPARAM)(const RECT*)(lprc)))
      def Edit_SetRectNoPaint(hwndCtl, lprc) send_edit_message(hwndCtl, :SETRECTNP, lparam: lprc) end

      #define Edit_SetSel(hwndCtl,ichStart,ichEnd) ((void)SNDMSG((hwndCtl),EM_SETSEL,(ichStart),(ichEnd)))
      def Edit_SetSel(hwndCtl, ichStart, ichEnd)
        send_edit_message(hwndCtl, :SETSEL, wparam: ichStart, lparam: ichEnd)
      end

      #define Edit_SetTabStops(hwndCtl,cTabs,lpTabs) ((void)SNDMSG((hwndCtl),EM_SETTABSTOPS,(WPARAM)(int)(cTabs),(LPARAM)(const int*)(lpTabs)))
      def Edit_SetTabStops(hwndCtl, cTabs, lpTabs)
        send_edit_message(hwndCtl, :SETTABSTOPS, wparam: cTabs, lparam: lpTabs)
      end

      #define Edit_SetText(hwndCtl,lpsz) SetWindowText((hwndCtl),(lpsz))
      def Edit_SetText(hwndCtl, lpsz) SetWindowText(hwndCtl, lpsz) end

      #define Edit_SetWordBreakProc(hwndCtl,lpfnWordBreak) ((void)SNDMSG((hwndCtl),EM_SETWORDBREAKPROC,0,(LPARAM)(EDITWORDBREAKPROC)(lpfnWordBreak)))
      def Edit_SetWordBreakProc(hwndCtl, lpfnWordBreak)
        send_edit_message(hwndCtl, :SETWORDBREAKPROC,  lparam: lpfnWordBreak)
      end

      #define Edit_Undo(hwndCtl) ((BOOL)(DWORD)SNDMSG((hwndCtl),EM_UNDO,0,0))
      def Edit_Undo(hwndCtl) send_edit_message(hwndCtl, :UNDO) end

      #define Edit_NoSetFocus(hwndCtl)                   ((DWORD)SNDMSG((hwndCtl), EM_NOSETFOCUS, 0L, 0L))
      def Edit_NoSetFocus(hwndCtl) send_edit_message(hwndCtl, :NOSETFOCUS) end

      #define Edit_TakeFocus(hwndCtl)                   ((DWORD)SNDMSG((hwndCtl), EM_TAKEFOCUS, 0L, 0L))
      def Edit_TakeFocus(hwndCtl) send_edit_message(hwndCtl, :TAKEFOCUS) end

      if WINDOWS_VERSION >= :xp
        #define Edit_SetCueBannerText(hwnd, lpcwText) (BOOL)SNDMSG((hwnd), EM_SETCUEBANNER, 0, (LPARAM)(lpcwText))
        def Edit_SetCueBannerText(hwnd, lpcwText) send_edit_message(hwnd, :SETCUEBANNER, lparam: lpcwText) end

        #define Edit_SetCueBannerTextFocused(hwnd, lpcwText, fDrawFocused) (BOOL)SNDMSG((hwnd), EM_SETCUEBANNER, (WPARAM)fDrawFocused, (LPARAM)lpcwText)
        def Edit_SetCueBannerTextFocused(hwnd, lpcwText, fDrawFocused)
          send_edit_message(hwnd, :SETCUEBANNER, wparam: fDrawFocused, lparam: lpcwText)
        end

        #define Edit_GetCueBannerText(hwnd, lpwText, cchText) (BOOL)SNDMSG((hwnd), EM_GETCUEBANNER, (WPARAM)(lpwText), (LPARAM)(cchText))
        def Edit_GetCueBannerText(hwnd, lpwText, cchText)
          send_edit_message(hwnd, :GETCUEBANNER, wparam: lpwText, lparam: cchText)
        end

        #define Edit_ShowBalloonTip(hwnd, peditballoontip) (BOOL)SNDMSG((hwnd), EM_SHOWBALLOONTIP, 0, (LPARAM)(peditballoontip))
        def Edit_ShowBalloonTip(hwnd, peditballoontip)
          send_edit_message(hwnd, :SHOWBALLOONTIP, lparam: peditballoontip)
        end

        #define Edit_HideBalloonTip(hwnd) (BOOL)SNDMSG((hwnd), EM_HIDEBALLOONTIP, 0, 0)
        def Edit_HideBalloonTip(hwnd) send_edit_message(hwnd, :HIDEBALLOONTIP) end

        if WINDOWS_VERSION >= :vista
          #define Edit_SetHilite(hwndCtl, ichStart, ichEnd)  ((void)SNDMSG((hwndCtl), EM_SETHILITE, (ichStart), (ichEnd)))
          def Edit_SetHilite(hwndCtl, ichStart, ichEnd)
            send_edit_message(hwndCtl, :SETHILITE, wparam: ichStart, lparam: ichEnd)
          end

          #define Edit_GetHilite(hwndCtl)                    ((DWORD)SNDMSG((hwndCtl), EM_GETHILITE, 0L, 0L))
          def Edit_GetHilite(hwndCtl) send_edit_message(hwndCtl, :GETHILITE) end
        end
      end

      private def send_edit_message(hwnd, message, wparam: 0, lparam: 0)
        SendMessage(hwnd, EditMessage[:message], wparam, lparam)
      end
    end
  end
end
