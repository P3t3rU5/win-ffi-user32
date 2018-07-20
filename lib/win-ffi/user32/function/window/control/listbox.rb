require_relative '../../../enum/window/control/dlg_dir_list_flag'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlista
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirlistw
    # int DlgDirList(
    #   _In_     HWND hDlg,
    #   _Inout_  LPTSTR lpPathSpec,
    #   _In_     int nIDListBox,
    #   _In_     int nIDStaticPath,
    #   _In_     UINT uFileType )
    def self.DlgDirList(hDlg, lpPathSpec, nIDListBox, nIDStaticPath, uFileType); end
    encoded_function 'DlgDirList', [:hwnd, :string, :int, :int, DlgDirListFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dlgdirselectexw
    # BOOL DlgDirSelectEx( _In_   HWND hDlg, _Out_  LPTSTR lpString, _In_   int nCount, _In_   int nIDListBox )
    def self.DlgDirSelectEx(hDlg, lpString, nCount, nIDListBox); end
    encoded_function 'DlgDirSelectEx', [:hwnd, :string, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getlistboxinfo
    # Listbox information.
    # Returns the number of items per row.
    # DWORD GetListBoxInfo( _In_  HWND hwnd )
    def self.GetListBoxInfo(hwnd); end
    attach_function 'GetListBoxInfo', [:hwnd], :dword
  end
end