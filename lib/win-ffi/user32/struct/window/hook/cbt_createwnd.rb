require_relative '../message/create_struct'

module WinFFI
  module User32
    # HCBT_CREATEWND parameters pointed to by lParam
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cbt_createwnda
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-cbt_createwndw
    class CBT_CREATEWND < FFIAdditions::Struct
      attr_accessor :lpcs, :hwndInsertAfter

      layout lpcs:            CREATESTRUCT,
             hwndInsertAfter: :hwnd
    end
  end
end