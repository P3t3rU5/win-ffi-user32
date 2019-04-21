require_relative '../../../enum/window/control/dlg_dir_list_flag'

require_relative '../../../struct/window/control/combobox/info'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistcomboboxa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistcomboboxw
    # @param [FFI::Pointer] hDlg
    # @param [String] lpPathSpec
    # @param [Integer] nIDComboBox
    # @param [Integer] nIDStaticPath
    # @param [Integer] uFiletype
    # @return [Integer]
    def self.DlgDirListComboBox(hDlg, lpPathSpec, nIDComboBox, nIDStaticPath, uFiletype); end
    encoded_function 'DlgDirListComboBox', [:hwnd, :string, :int, :int, DlgDirListFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectcomboboxexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectcomboboxexw
    # @param [FFI::Pointer] hDlg
    # @param [String] lpString
    # @param [Integer] nCount
    # @param [Integer] nIDComboBox
    # @return [true, false]
    def self.DlgDirSelectComboBoxEx(hDlg, lpString, nCount, nIDComboBox); end
    encoded_function 'DlgDirSelectComboBoxEx', [:hwnd, :string, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getcomboboxinfo
    # @param [FFI::Pointer] hwndCombo
    # @param [FFI::Pointer] pcbi
    # @return [true, false]
    def self.GetComboBoxInfo(hwndCombo, pcbi); end
    attach_function 'GetComboBoxInfo', [:hwnd, COMBOBOXINFO.ptr(:out)], :bool
  end
end