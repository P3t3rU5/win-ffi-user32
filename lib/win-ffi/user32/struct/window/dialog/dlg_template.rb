require 'win-ffi/user32'

module WinFFI
  module User32
    # original NT 32 bit dialog template:
    class DLGTEMPLATE < FFIAdditions::Struct
      layout style:           :dword,
             dwExtendedStyle: :dword,
             cdit:             :word,
             x:               :short,
             y:               :short,
             cx:              :short,
             cy:              :short
    end
  end
end
