require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # ECO operations
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774254(v=vs.85).aspx
      EditControlOptionOperation = enum :edit_control_option_operation, [
          :SET, 0x0001,
          :OR,  0x0002,
          :AND, 0x0003,
          :XOR, 0x0004,
      ]

      define_prefix(:ECOOP, EditControlOptionOperation)
    end
  end
end