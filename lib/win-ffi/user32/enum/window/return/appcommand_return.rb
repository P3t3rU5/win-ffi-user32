module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646248
    AppcommandReturn = enum :appcommand_return, [:KEY, 0, :OEM, 0x1000, :MOUSE, 0x8000, :MASK, 0xF000]

    define_prefix(:FAPPCOMMAND, AppcommandReturn)
  end
end