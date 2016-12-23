require 'win-ffi/user32'

module WinFFI
  module User32
    class MDICREATESTRUCT < FFIAdditions::Struct
      layout szClass: :string,
             szTitle: :string,
             hOwner:  :handle,
             x:          :int,
             y:          :int,
             cx:         :int,
             cy:         :int,
             style:    :dword,
             lParam:  :lparam
    end
  end
end


