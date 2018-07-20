require 'win-ffi/user32/typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenucontexthelpid
    # DWORD GetMenuContextHelpId( HMENU hmenu )
    def self.GetMenuContextHelpId(hmenu); end
    attach_function 'GetMenuContextHelpId', [:hmenu], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowcontexthelpid
    # DWORD GetWindowContextHelpId( HWND hwnd )
    def self.GetWindowContextHelpId(hwnd); end
    attach_function 'GetWindowContextHelpId', [:hwnd], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenucontexthelpid
    # BOOL SetMenuContextHelpId(HMENU hmenu, DWORD dwContextHelpId )
    def self.SetMenuContextHelpId(hmenu, dwContextHelpId); end
    attach_function 'SetMenuContextHelpId', [:hmenu, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowcontexthelpid
    # BOOL SetWindowContextHelpId(HWND hwnd, DWORD dwContextHelpId )
    def self.SetWindowContextHelpId(hwnd, dwContextHelpId); end
    attach_function 'SetWindowContextHelpId', [:hwnd, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-winhelpa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-winhelpw
    # BOOL WinHelp(HWND hWndMain, LPCTSTR lpszHelp, UINT uCommand, ULONG_PTR dwData)
    def self.WinHelp(hWndMain, lpszHelp, uCommand, dwData); end
    encoded_function 'WinHelp', [:hwnd, :string, :uint, :ulong_ptr], :bool
  end
end