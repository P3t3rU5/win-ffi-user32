module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/core/struct/luid'

    require_relative '../../../function/desktop/desktop'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-bsminfo
      class BSMINFO < FFIAdditions::Struct
        attr_accessor :cItems, :hdesk, :hwnd, :luid

        layout cItems: :int,
               hdesk:  :hdesk,
               hwnd:   :hwnd,
               luid:   LUID
      end
    end
  end
end