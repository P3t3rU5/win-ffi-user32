module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-dlgtemplate
    # original NT 32 bit dialog template:
    class DLGTEMPLATE < FFIAdditions::Struct
      attr_accessor :style,
                    :dwExtendedStyle,
                    :cdit,
                    :x,
                    :y,
                    :cx,
                    :cy

      layout style:           :dword,
             dwExtendedStyle: :dword,
             cdit:            :word,
             x:               :short,
             y:               :short,
             cx:              :short,
             cy:              :short
    end
  end
end
