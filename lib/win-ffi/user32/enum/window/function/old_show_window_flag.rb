require 'win-ffi/user32'

module WinFFI

  LOGGER.warn('OldShowWindowFlag Deprecated, use ShowWindowFlag instead.')

  module User32
    # Old ShowWindow() Commands
    OldShowWindowFlag = enum :show_window_flag, [
        :OPENWINDOW,     1,
        :ICONWINDOW,     2,
        :FULLSCREEN,     3,
        :OPENNOACTIVATE, 4,
    ]

    HIDE_WINDOW = 0

    define_prefix(:SHOW, OldShowWindowFlag)
  end
end