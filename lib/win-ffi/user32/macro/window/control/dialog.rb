require_relative '../../../function/window/dialog'

module WinFFI
  module User32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialoga
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogw
      # HWND WINAPI CreateDialog(
      #   _In_opt_ HINSTANCE hInstance,
      #   _In_     LPCTSTR   lpTemplate,
      #   _In_opt_ HWND      hWndParent,
      #   _In_opt_ DLGPROC   lpDialogFunc)
      def CreateDialog(hInstance, lpName, hParent, lpDialogFunc)
        CreateDialogParam(hInstance, lpName, hParent, lpDialogFunc, 0)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirecta
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirectw
      # HWND WINAPI CreateDialogIndirect(
      #   _In_opt_ HINSTANCE      hInstance,
      #   _In_     LPCDLGTEMPLATE lpTemplate,
      #   _In_opt_ HWND           hWndParent,
      #   _In_opt_ DLGPROC        lpDialogFunc)
      def CreateDialogIndirect(hInst, lpTemp, hPar, lpDialFunc)
        CreateDialogIndirectParam(hInst, lpTemp, hPar, lpDialFunc, 0)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxa
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxw
      # INT_PTR WINAPI DialogBox(
      #   _In_opt_ HINSTANCE hInstance,
      #   _In_     LPCTSTR   lpTemplate,
      #   _In_opt_ HWND      hWndParent,
      #   _In_opt_ DLGPROC   lpDialogFunc)
      def DialogBox(hInstance, lpTemp, hParent, lpDialogFunc)
        DialogBoxParam(hInstance, lpTemp, hParent, lpDialogFunc, 0)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirecta
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectw
      # INT_PTR WINAPI DialogBoxIndirect(
      #   _In_opt_ HINSTANCE      hInstance,
      #   _In_     LPCDLGTEMPLATE lpTemplate,
      #   _In_opt_ HWND           hWndParent,
      #   _In_opt_ DLGPROC        lpDialogFunc)
      def DialogBoxIndirect(hInst, lpTemp, hParent, lpDialogFunc)
        DialogBoxIndirectParam(hInst, lpTemp, hParent, lpDialogFunc, 0)
      end

      #define SubclassDialog(hwndDlg, lpfn) (SetWindowLongPtr(hwndDlg, DWLP_DLGPROC, (LPARAM)(lpfn)))
      def SubclassDialog(hwndDlg, lpfn) SetWindowLongPtr(hwndDlg, DWLP_DLGPROC, lpfn) end

      DIALOG_MESSAGES = [
        :CTLCOLORMSGBOX,
        :CTLCOLOREDIT,
        :CTLCOLORLISTBOX,
        :CTLCOLORBTN,
        :CTLCOLORDLG,
        :CTLCOLORSCROLLBAR,
        :CTLCOLORSTATIC,
        :COMPAREITEM,
        :VKEYTOITEM,
        :CHARTOITEM,
        :QUERYDRAGICON,
        :INITDIALOG
      ]

      #define     SetDlgMsgResult(hwnd, msg, result) (( \
      #     (msg) == WM_CTLCOLORMSGBOX      || \
      #     (msg) == WM_CTLCOLOREDIT        || \
      #     (msg) == WM_CTLCOLORLISTBOX     || \
      #     (msg) == WM_CTLCOLORBTN         || \
      #     (msg) == WM_CTLCOLORDLG         || \
      #     (msg) == WM_CTLCOLORSCROLLBAR   || \
      #     (msg) == WM_CTLCOLORSTATIC      || \
      #     (msg) == WM_COMPAREITEM         || \
      #     (msg) == WM_VKEYTOITEM          || \
      #     (msg) == WM_CHARTOITEM          || \
      #     (msg) == WM_QUERYDRAGICON       || \
      #     (msg) == WM_INITDIALOG             \
      # ) ? (BOOL)(result) : (SetWindowLongPtr((hwnd), DWLP_MSGRESULT, (LPARAM)(LRESULT)(result)), TRUE))
      def SetDlgMsgResult(hwnd, msg, result)
        DIALOG_MESSAGES.include?(msg) ? result : [SetWindowLongPtr(hwnd, DWLP_MSGRESULT, result), 1]
      end

      #define DefDlgProcEx(hwnd, msg, wParam, lParam, pfRecursion) (*(pfRecursion) = TRUE, DefDlgProc(hwnd, msg, wParam, lParam))
      def DefDlgProcEx(hwnd, msg, wParam, lParam, pfRecursion)
        pfRecursion = [true, DefDlgProc(hwnd, msg, wParam, lParam)]
      end

      #define CheckDefDlgRecursion(pfRecursion) if (*(pfRecursion)) { *(pfRecursion) = FALSE; return FALSE; }
      def CheckDefDlgRecursion(pfRecursion) pfRecursion = false if pfRecursion end


    end
  end
end
