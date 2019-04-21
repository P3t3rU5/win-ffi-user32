require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/control/messagebox/flag'
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
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpTemplate
    # @param [FFI::Pointer] hWndParent
    # @param [DialogProc] lpDialogFunc
    # @param [Integer] lParamInit
    # @return [FFI::Pointer]
    def self.CreateDialogIndirectParam(hInstance, lpTemplate, hWndParent, lpDialogFunc, lParamInit) end
    encoded_function 'CreateDialogIndirectParam', [:hinstance, DLGTEMPLATE.ptr(:in), :hwnd, DialogProc, :lparam], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogparamw
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpTemplateName
    # @param [FFI::Pointer] hWndParent
    # @param [DialogProc] lpDialogFunc
    # @param [Integer] dwInitParam
    # @return [FFI::Pointer]
    def self.CreateDialogParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam) end
    encoded_function 'CreateDialogParam', [:hinstance, :pointer, :hwnd, DialogProc, :lparam], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-defdlgprocw
    # @param [FFI::Pointer] hDlg
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Integer]
    def self.DefDlgProc(hDlg, msg, wParam, lParam) end
    encoded_function 'DefDlgProc', [:hwnd, :uint, :wparam, :lparam], :lresult

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectparamw
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] hDialogTemplate
    # @param [FFI::Pointer] hWndParent
    # @param [DialogProc] lpDialogFunc
    # @param [Integer] dwInitParam
    # @return [Integer]
    def self.DialogBoxIndirectParam(hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam) end
    encoded_function 'DialogBoxIndirectParam', [:hinstance, DLGTEMPLATE.ptr(:in), :hwnd, DialogProc, :lparam], :int_ptr

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxparama
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxparamw
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpTemplateName
    # @param [FFI::Pointer] hWndParent
    # @param [DialogProc] lpDialogFunc
    # @param [Integer] dwInitParam
    # @return [Integer]
    def self.DialogBoxParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam) end
    encoded_function 'DialogBoxParam', [:hinstance, :buffer_in, :hwnd, DialogProc, :lparam], :int_ptr

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-enddialog
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nResult
    # @return [true, false]
    def self.EndDialog(hDlg, nResult) end
    attach_function 'EndDialog', [:hwnd, :int_ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogbaseunits
    # @return [Integer]
    def self.GetDialogBaseUnits; end
    attach_function 'GetDialogBaseUnits', [], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgctrlid
    # @param [FFI::Pointer] hwndCtl
    # @return [Integer]
    def self.GetDlgCtrlID(hwndCtl) end
    attach_function 'GetDlgCtrlID', [:hwnd], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitem
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @return [FFI::Pointer]
    def self.GetDlgItem(hDlg, nIDDlgItem) end
    attach_function 'GetDlgItem', [:hwnd, :int], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemint
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @param [FFI::Pointer] lpTranslated
    # @param [true, false] bSigned
    # @return [Integer]
    def self.GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated, bSigned) end
    attach_function 'GetDlgItemInt', [:hwnd, :int, :pointer, :bool], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdlgitemtextw
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @param [FFI::Pointer] lpString
    # @param [true, false] nMaxCount
    # @return [Integer]
    def self.GetDlgItemText(hDlg, nIDDlgItem, lpString, nMaxCount) end
    encoded_function 'GetDlgItemText', [:hwnd, :int, :pointer, :bool], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getnextdlggroupitem
    # @param [FFI::Pointer] hDlg
    # @param [FFI::Pointer] hCtl
    # @param [true, false] bPrevious
    # @return [FFI::Pointer]
    def self.GetNextDlgGroupItem(hDlg, hCtl, bPrevious) end
    attach_function 'GetNextDlgGroupItem', [:hwnd, :hwnd, :bool], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getnextdlgtabitem
    # @param [FFI::Pointer] hDlg
    # @param [FFI::Pointer] hCtl
    # @param [true, false] bPrevious
    def self.GetNextDlgTabItem(hDlg, hCtl, bPrevious) end
    attach_function 'GetNextDlgTabItem', [:hwnd, :hwnd, :bool], :hwnd

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdialogmessagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdialogmessagew
    # @param [FFI::Pointer] hDlg
    # @param [FFI::Pointer] lpMsg
    # @return [true, false]
    def self.IsDialogMessage(hDlg, lpMsg) end
    encoded_function 'IsDialogMessage', [:hwnd, MSG.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-mapdialogrect
    # @param [FFI::Pointer] hDlg
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.MapDialogRect(hDlg, lpRect) end
    attach_function 'MapDialogRect', [:hwnd, RECT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dn910915
    # @param [Integer] wBtn
    # @return [String]
    def self.MB_GetString(wBtn) end
    attach_function 'MB_GetString', [:uint], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebeep
    # @param [Integer] uType
    # @return [true, false]
    def self.MessageBeep(uType) end
    attach_function 'MessageBeep', [MessageBoxFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebox
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxw
    # @param [FFI::Pointer] hWnd
    # @param [String] lpText
    # @param [String] lpCaption
    # @param [Integer] uType
    def self.MessageBox(hWnd, lpText, lpCaption, uType) end
    encoded_function 'MessageBox', [:hwnd, :buffer_in, :buffer_in, MessageBoxFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxexw
    # @param [FFI::Pointer] hWnd
    # @param [String] lpText
    # @param [String] lpCaption
    # @param [Integer] uType
    # @param [Integer] wLanguageId
    def self.MessageBoxEx(hWnd, lpText, lpCaption, uType, wLanguageId) end
    encoded_function 'MessageBoxEx', [:hwnd, :buffer_in, :buffer_in, MessageBoxFlag, :word], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messageboxindirectw
    # @param [FFI::Pointer] lpMsgBoxParams
    # @return [Integer]
    def self.MessageBoxIndirect(lpMsgBoxParams) end
    encoded_function 'MessageBoxIndirect', [MSGBOXPARAMS.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-senddlgitemmessagea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-senddlgitemmessagew
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @param [Integer] msg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Integer]
    def self.SendDlgItemMessage(hDlg, nIDDlgItem, msg, wParam, lParam) end
    encoded_function 'SendDlgItemMessage', [:hwnd, :int, :uint, :wparam, :lparam], :lresult

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemint
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @param [Integer] uValue
    # @param [true, false] bSigned
    # @return [true, false]
    def self.SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned) end
    attach_function 'SetDlgItemInt', [:hwnd, :int, :uint, :bool], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemtexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdlgitemtextw
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDDlgItem
    # @param [String] lpString
    # @return [true, false]
    def self.SetDlgItemText(hDlg, nIDDlgItem, lpString) end
    encoded_function 'SetDlgItemText', [:hwnd, :int, :buffer_in], :bool

    if WINDOWS_VERSION >= 10
      require_relative '../../enum/window/control/dialog/control_dpi_change_behaviors'
      require_relative '../../enum/window/control/dialog/dpi_change_behaviors'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdialogcontroldpichangebehavior
      # @param [FFI::Pointer] hWnd
      # @param [Integer] mask
      # @param [Integer] values
      # @return [true, false]
      def self.SetDialogControlDpiChangeBehavior(hWnd, mask, values) end
      attach_function 'SetDialogControlDpiChangeBehavior',
                      [:hwnd, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogcontroldpichangebehavior
      # @param [FFI::Pointer] hWnd
      # @return [Integer]
      def self.GetDialogControlDpiChangeBehavior(hWnd); end
      attach_function 'GetDialogControlDpiChangeBehavior', [:hwnd], DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdialogdpichangebehavior
      # @param [FFI::Pointer] hDlg
      # @param [Integer] mask
      # @param [Integer] values
      # @return [true, false]
      def self.SetDialogDpiChangeBehavior(hDlg, mask, values); end
      attach_function 'SetDialogDpiChangeBehavior', [:hwnd, DIALOG_DPI_CHANGE_BEHAVIORS, DIALOG_DPI_CHANGE_BEHAVIORS], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdialogdpichangebehavior
      # @param [FFI::Pointer] hDlg
      # @return [Integer]
      def self.GetDialogDpiChangeBehavior(hDlg); end
      attach_function 'GetDialogDpiChangeBehavior', [:hwnd], DIALOG_DPI_CHANGE_BEHAVIORS
    end
  end
end