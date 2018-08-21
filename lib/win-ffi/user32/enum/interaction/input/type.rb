module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646270
    InputType = enum :input_type, [:MOUSE, 0, :KEYBOARD, 1, :HARDWARE, 2]

    define_prefix(:INPUT, InputType)
  end
end
