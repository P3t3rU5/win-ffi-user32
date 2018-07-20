module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkdlgbutton
    # BOOL CheckDlgButton( _In_  HWND hDlg, _In_  int nIDButton, _In_  UINT uCheck )
    def self.CheckDlgButton(hDlg, nIDButton, uCheck); end
    attach_function 'CheckDlgButton', [:hwnd, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkradiobutton
    # BOOL CheckRadioButton(_In_ HWND hDlg, _In_ int nIDFirstButton, _In_ int nIDLastButton, _In_ int nIDCheckButton )
    def self.CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton); end
    attach_function 'CheckRadioButton', [:hwnd, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdlgbuttonchecked
    # UINT IsDlgButtonChecked( _In_  HWND hDlg, _In_  int nIDButton )
    def self.IsDlgButtonChecked(hDlg, nIDButton); end
    attach_function 'IsDlgButtonChecked', [:hwnd, :int], :uint
  end
end