require 'win-ffi/user32'

module WinFFI
  module User32
    # TODO figure out what this represents
    class INPUT_INJECTION_VALUE < FFIAdditions::Struct
      layout page:  :ushort,
             usage: :ushort,
             value:  :int32,
             index: :ushort
    end
  end
end