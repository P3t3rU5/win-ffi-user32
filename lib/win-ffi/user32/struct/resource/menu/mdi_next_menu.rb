require 'win-ffi/user32/typedef/hmenu'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647561(v=vs.85).aspx
    class MDINEXTMENU < FFIAdditions::Struct
      layout hmenuIn:   :hmenu,
             hmenuNext: :hmenu,
             hwndNext:   :hwnd
    end
  end
end