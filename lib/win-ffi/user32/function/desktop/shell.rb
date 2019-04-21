require 'win-ffi/user32/typedef/hmenu'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenucontexthelpid
    # DWORD GetMenuContextHelpId( HMENU hmenu )
    # @param [FFI::Pointer] hmenu
    # @return [Integer]
    def self.GetMenuContextHelpId(hmenu) end
    attach_function 'GetMenuContextHelpId', [:hmenu], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getwindowcontexthelpid
    # @param [FFI::Pointer] hwnd
    # @return [Integer]
    def self.GetWindowContextHelpId(hwnd) end
    attach_function 'GetWindowContextHelpId', [:hwnd], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setmenucontexthelpid
    # @param [FFI::Pointer] hmenu
    # @param [Integer] dwContextHelpId
    # @return [true, false]
    def self.SetMenuContextHelpId(hmenu, dwContextHelpId) end
    attach_function 'SetMenuContextHelpId', [:hmenu, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwindowcontexthelpid
    # @param [FFI::Pointer] hwnd
    # @param [Integer] dwContextHelpId
    # @return [true, false]
    def self.SetWindowContextHelpId(hwnd, dwContextHelpId) end
    attach_function 'SetWindowContextHelpId', [:hwnd, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-winhelpa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-winhelpw
    # @param [FFI::Pointer] hWndMain
    # @param [String] lpszHelp
    # @param [Integer] uCommand
    # @param [Integer] dwData
    # @return [true, false]
    def self.WinHelp(hWndMain, lpszHelp, uCommand, dwData); end
    encoded_function 'WinHelp', [:hwnd, :string, :uint, :ulong_ptr], :bool
  end
end