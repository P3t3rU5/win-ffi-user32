require_relative '../../../enum/window/control/dlg_dir_list_flag'

require_relative '../../../struct/window/control/combobox/info'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistcomboboxa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistcomboboxw
    # int DlgDirListComboBox(
    #   _In_     HWND hDlg,
    #   _Inout_  HWND lpPathSpec,
    #   _In_     int nIDComboBox,
    #   _In_     int nIDStaticPath,
    #   _In_     UINT uFiletype )
    def self.DlgDirListComboBox(hDlg, lpPathSpec, nIDComboBox, nIDStaticPath, uFiletype); end
    encoded_function 'DlgDirListComboBox', [:hwnd, :string, :int, :int, DlgDirListFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectcomboboxexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectcomboboxexw
    # BOOL DlgDirSelectComboBoxEx(
    #   _In_   HWND hDlg,
    #   _Out_  LPTSTR lpString,
    #   _In_   int nCount,
    #   _In_   int nIDComboBox )
    def self.DlgDirSelectComboBoxEx(hDlg, lpString, nCount, nIDComboBox); end
    encoded_function 'DlgDirSelectComboBoxEx', [:hwnd, :string, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcomboboxinfo
    # BOOL GetComboBoxInfo(
    #   _In_   HWND hwndCombo,
    #   _Out_  PCOMBOBOXINFO pcbi )
    def self.GetComboBoxInfo(hwndCombo, pcbi); end
    attach_function 'GetComboBoxInfo', [:hwnd, COMBOBOXINFO.ptr], :bool
  end
end