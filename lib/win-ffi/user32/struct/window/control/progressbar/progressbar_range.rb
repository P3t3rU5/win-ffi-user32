require 'win-ffi/user32'

module WinFFI
  module User32
    class PBRANGE < FFIAdditions::Struct
      layout iLow:  :int,
             iHigh: :int
    end
  end
end