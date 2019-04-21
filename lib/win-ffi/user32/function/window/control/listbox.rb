require_relative '../../../enum/window/control/dlg_dir_list_flag'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlista
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistw
    # @param [FFI::Pointer] hDlg
    # @param [String] lpPathSpec
    # @param [Integer] nIDListBox
    # @param [Integer] nIDStaticPath
    # @param [Integer] uFileType
    # @return [Integer]
    def self.DlgDirList(hDlg, lpPathSpec, nIDListBox, nIDStaticPath, uFileType); end
    encoded_function 'DlgDirList', [:hwnd, :string, :int, :int, DlgDirListFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectexw
    # @param [FFI::Pointer] hDlg
    # @param [String] lpString
    # @param [Integer] nCount
    # @param [Integer] nIDListBox
    # @return [true, false]
    def self.DlgDirSelectEx(hDlg, lpString, nCount, nIDListBox); end
    encoded_function 'DlgDirSelectEx', [:hwnd, :string, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getlistboxinfo
    # Listbox information.
    # Returns the number of items per row.
    # DWORD GetListBoxInfo( _In_  HWND hwnd )
    # @param [FFI::Pointer] hwnd
    # @return [Integer]
    def self.GetListBoxInfo(hwnd); end
    attach_function 'GetListBoxInfo', [:hwnd], :dword
  end
end