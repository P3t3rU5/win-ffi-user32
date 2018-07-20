module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ntddmou/ns-ntddmou-_mouse_input_data#members
    buffer = [
        :MOVE_RELATIVE,         0,
        :MOVE_ABSOLUTE,         1,
        :VIRTUAL_DESKTOP,    0x02,  # the coordinates are mapped to the virtual desktop
        :ATTRIBUTES_CHANGED, 0x04  # requery for mouse attributes
    ]

    buffer += [:MOVE_NOCOALESCE, 0x08] if WINDOWS_VERSION >= :vista # do not coalesce mouse moves

    # Define the mouse indicator flags.
    RawInputMouseFlag = enum :rawinput_mouse_flag, buffer

    define_prefix(:MOUSE, RawInputMouseFlag)
  end
end