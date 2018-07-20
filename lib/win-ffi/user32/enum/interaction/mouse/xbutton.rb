module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646273
    XButton = enum :x_button, [:BUTTON1, 0x0001, :BUTTON2, 0x0002]

    define_prefix(:X, XButton, true)
  end
end