module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633556
    UpdateLayeredWindowFlag = enum :update_layered_window_flag, [
        :COLORKEY,    0x00000001, # Use crKey as the transparency color.
        :ALPHA,       0x00000002, # Use bAlpha to determine the opacity of the layered class.
        :OPAQUE,      0x00000004, # Draw an opaque layered class.
        :EX_NORESIZE, 0x00000008,
    ]

    define_prefix(:ULW, UpdateLayeredWindowFlag)
  end
end