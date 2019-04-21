module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkdlgbutton
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDButton
    # @param [Integer] uCheck
    # @return [true, false]
    def self.CheckDlgButton(hDlg, nIDButton, uCheck); end
    attach_function 'CheckDlgButton', [:hwnd, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-checkradiobutton
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDFirstButton
    # @param [Integer] nIDLastButton
    # @param [Integer] nIDCheckButton
    # @return [true, false]
    def self.CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton); end
    attach_function 'CheckRadioButton', [:hwnd, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isdlgbuttonchecked
    # @param [FFI::Pointer] hDlg
    # @param [Integer] nIDButton
    # @return [Integer]
    def self.IsDlgButtonChecked(hDlg, nIDButton); end
    attach_function 'IsDlgButtonChecked', [:hwnd, :int], :uint
  end
end