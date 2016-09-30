require 'win-ffi/user32'

module WinFFI
  module User32
    class CLIENTCREATESTRUCT < FFIAdditions::Struct
      layout hWindowMenu: :handle,
             idFirstChild:  :uint
    end
  end
end