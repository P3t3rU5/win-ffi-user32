require_relative '../../../enum/window/style/ex'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-dlgitemtemplate
    class DLGITEMTEMPLATE < FFIAdditions::Struct
      attr_accessor :style,
                    :dwExtendedStyle,
                    :x,
                    :y,
                    :cx,
                    :cy,
                    :id

      layout style:           :dword,
             dwExtendedStyle: WindowStyleExtended,
             x:               :short,
             y:               :short,
             cx:              :short,
             cy:              :short,
             id:              :word
    end
  end
end