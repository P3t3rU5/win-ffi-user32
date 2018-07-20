require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/message_box_flag'
require_relative '../../enum/window/control/dialog/box_command_id'

require_relative '../../struct/window/dialog/dlg_template'
require_relative '../../struct/window/message/msg'
require_relative '../../struct/window/dialog/msgbox_params'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645469
    # INT_PTR CALLBACK DialogProc( _In_  HWND hwndDlg, _In_  UINT uMsg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    DialogProc = callback :DialogProc, [:hwnd, :uint, :wparam, :lparam], :int_ptr

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirectparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirectparamw
    # HWND CreateDialogIndirectParam(
    #   _In_opt_  HINSTANCE hInstance,
    #   _In_      LPCDLGTEMPLATE lpTemplate,
    #   _In_opt_  HWND hWndParent,
    #   _In_opt_  DLGPROC lpDialogFunc,
    #   _In_      LPARAM lParamInit )
    def self.CreateDialogIndirectParam(hInstance, lpTemplate, hWndParent, lpDialogFunc, lParamInit); end
    encoded_function 'CreateDialogIndirectParam', [:hinstance, DLGTEMPLATE.ptr, :hwnd, DialogProc, :lparam], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogparamw
    # HWND CreateDialogParam(
    #   _In_opt_  HINSTANCE hInstance,
    #   _In_      LPCTSTR lpTemplateName,
    #   _In_opt_  HWND hWndParent,
    #   _In_opt_  DLGPROC lpDialogFunc,
    #   _In_      LPARAM dwInitParam )
    def self.CreateDialogParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam); end
    encoded_function 'CreateDialogParam', [:hinstance, :pointer, :hwnd, DialogProc, :lparam], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-defdlgprocw
    # LRESULT DefDlgProc( _In_  HWND hDlg, _In_  UINT Msg, _In_  WPARAM wParam, _In_  LPARAM lParam )
    def self.DefDlgProc(hDlg, msg, wParam, lParam); end
    encoded_function 'DefDlgProc', [:hwnd, :uint, :wparam, :lparam], :lresult

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectparamw
    # INT_PTR DialogBoxIndirectParam(
    #   _In_opt_  HINSTANCE hInstance,
    #   _In_      LPCDLGTEMPLATE hDialogTemplate,
    #   _In_opt_  HWND hWndParent,
    #   _In_opt_  DLGPROC lpDialogFunc,
    #   _In_      LPARAM dwInitParam )
    def self.DialogBoxIndirectParam(hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam); end
    encoded_function 'DialogBoxIndirectParam', [:hinstance, DLGTEMPLATE.ptr, :hwnd, DialogProc, :lparam], :int_ptr

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxparamw
    # INT_PTR DialogBoxParam(
    #   _In_opt_  HINSTANCE hInstance,
    #   _In_      LPCTSTR lpTemplateName,
    #   _In_opt_  HWND hWndParent,
    #   _In_opt_  DLGPROC lpDialogFunc,
    #   _In_      LPARAM dwInitParam )
    def self.DialogBoxParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam); end
    encoded_function 'DialogBoxParam', [:hinstance, :buffer_in, :hwnd, DialogProc, :lparam], :int_ptr

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enddialog
    # BOOL EndDialog( _In_  HWND hDlg, _In_  INT_PTR nResult )
    def self.EndDialog(hDlg, nResult); end
    attach_function 'EndDialog', [:hwnd, :int_ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogbaseunits
    # LONG GetDialogBaseUnits(void)
    def self.GetDialogBaseUnits; end
    attach_function 'GetDialogBaseUnits', [], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgctrlid
    # int GetDlgCtrlID( _In_  HWND hwndCtl )
    def self.GetDlgCtrlID(hwndCtl); end
    attach_function 'GetDlgCtrlID', [:hwnd], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitem
    # HWND GetDlgItem( _In_opt_  HWND hDlg, _In_      int nIDDlgItem )
    def self.GetDlgItem(hDlg, nIDDlgItem); end
    attach_function 'GetDlgItem', [:hwnd, :int], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemint
    # UINT GetDlgItemInt( _In_ HWND hDlg, _In_ int nIDDlgItem, _Out_opt_  BOOL *lpTranslated, _In_ BOOL bSigned )
    def self.GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated, bSigned); end
    attach_function 'GetDlgItemInt', [:hwnd, :int, :pointer, :bool], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemtextw
    # UINT GetDlgItemText(_In_ HWND hDlg, _In_ int nIDDlgItem, _Out_ LPTSTR lpString, _In_ int nMaxCount)
    def self.GetDlgItemText(hDlg, nIDDlgItem, lpString, nMaxCount); end
    encoded_function 'GetDlgItemText', [:hwnd, :int, :pointer, :bool], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getnextdlggroupitem
    # HWND GetNextDlgGroupItem( _In_      HWND hDlg, _In_opt_  HWND hCtl, _In_      BOOL bPrevious )
    def self.GetNextDlgGroupItem(hDlg, hCtl, bPrevious); end
    attach_function 'GetNextDlgGroupItem', [:hwnd, :hwnd, :bool], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getnextdlgtabitem
    # HWND GetNextDlgTabItem( _In_      HWND hDlg, _In_opt_  HWND hCtl, _In_      BOOL bPrevious )
    def self.GetNextDlgTabItem(hDlg, hCtl, bPrevious); end
    attach_function 'GetNextDlgTabItem', [:hwnd, :hwnd, :bool], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdialogmessagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdialogmessagew
    # BOOL IsDialogMessage( _In_  HWND hDlg, _In_  LPMSG lpMsg )
    def self.IsDialogMessage(hDlg, lpMsg); end
    encoded_function 'IsDialogMessage', [:hwnd, MSG.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-mapdialogrect
    # BOOL MapDialogRect( _In_     HWND hDlg, _Inout_  LPRECT lpRect )
    def self.MapDialogRect(hDlg, lpRect); end
    attach_function 'MapDialogRect', [:hwnd, RECT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dn910915
    # LPCWSTR MB_GetString(UINT wBtn)
    def self.MB_GetString(wBtn); end
    attach_function 'MB_GetString', [:uint], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebeep
    # BOOL MessageBeep( _In_  UINT uType )
    def self.MessageBeep(uType); end
    attach_function 'MessageBeep', [MessageBoxFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebox
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxw
    # int MessageBox( __in_opt HWND hWnd, __in_opt LPCTSTR lpText, __in_opt LPCTSTR lpCaption, __in UINT uType)
    def self.MessageBox(hWnd, lpText, lpCaption, uType); end
    encoded_function 'MessageBox', [:hwnd, :buffer_in, :buffer_in, MessageBoxFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxexw
    # int MessageBoxEx(
    #   _In_opt_  HWND hWnd,
    #   _In_opt_  LPCTSTR lpText,
    #   _In_opt_  LPCTSTR lpCaption,
    #   _In_      UINT uType,
    #   _In_      WORD wLanguageId )
    def self.MessageBoxEx(hWnd, lpText, lpCaption, uType, wLanguageId); end
    encoded_function 'MessageBoxEx', [:hwnd, :buffer_in, :buffer_in, MessageBoxFlag, :word], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxindirectw
    # int MessageBoxIndirect( _In_  const LPMSGBOXPARAMS lpMsgBoxParams )
    def self.MessageBoxIndirect(lpMsgBoxParams); end
    encoded_function 'MessageBoxIndirect', [MSGBOXPARAMS.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-senddlgitemmessagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-senddlgitemmessagew
    # LRESULT SendDlgItemMessage(
    #   _In_  HWND hDlg,
    #   _In_  int nIDDlgItem,
    #   _In_  UINT Msg,
    #   _In_  WPARAM wParam,
    #   _In_  LPARAM lParam )
    def self.SendDlgItemMessage(hDlg, nIDDlgItem, msg, wParam, lParam); end
    encoded_function 'SendDlgItemMessage', [:hwnd, :int, :uint, :wparam, :lparam], :lresult

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemint
    # BOOL SetDlgItemInt( _In_  HWND hDlg, _In_  int nIDDlgItem, _In_  UINT uValue, _In_  BOOL bSigned )
    def self.SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned); end
    attach_function 'SetDlgItemInt', [:hwnd, :int, :uint, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemtextw
    # BOOL SetDlgItemText( _In_  HWND hDlg, _In_  int nIDDlgItem, _In_  LPCTSTR lpString )
    def self.SetDlgItemText(hDlg, nIDDlgItem, lpString); end
    encoded_function 'SetDlgItemText', [:hwnd, :int, :buffer_in], :bool

    if WINDOWS_VERSION >= 10
      require_relative '../../enum/window/control/dialog/control_dpi_change_behaviors'
      require_relative '../../enum/window/control/dialog/dpi_change_behaviors'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdialogcontroldpichangebehavior
      # BOOL SetDialogControlDpiChangeBehavior(
      #   _In_ HWND hWnd,
      #   _In_ DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS mask,
      #   _In_ DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS values)
      def self.SetDialogControlDpiChangeBehavior(hWnd, mask, values); end
      attach_function 'SetDialogControlDpiChangeBehavior',
                      [:hwnd, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogcontroldpichangebehavior
      # DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS GetDialogControlDpiChangeBehavior(_In_ HWND hWnd);
      def self.GetDialogControlDpiChangeBehavior(hWnd); end
      attach_function 'GetDialogControlDpiChangeBehavior', [:hwnd], DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdialogdpichangebehavior
      # BOOL SetDialogDpiChangeBehavior(
      #   _In_ HWND hDlg,
      #   _In_ DIALOG_DPI_CHANGE_BEHAVIORS mask,
      #   _In_ DIALOG_DPI_CHANGE_BEHAVIORS values)
      def self.SetDialogDpiChangeBehavior(hDlg, mask, values); end
      attach_function 'SetDialogDpiChangeBehavior', [:hwnd, DIALOG_DPI_CHANGE_BEHAVIORS, DIALOG_DPI_CHANGE_BEHAVIORS], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogdpichangebehavior
      # DIALOG_DPI_CHANGE_BEHAVIORS GetDialogDpiChangeBehavior(_In_ HWND hDlg);
      def self.GetDialogDpiChangeBehavior(hDlg); end
      attach_function 'GetDialogDpiChangeBehavior', [:hwnd], DIALOG_DPI_CHANGE_BEHAVIORS
    end
  end
end