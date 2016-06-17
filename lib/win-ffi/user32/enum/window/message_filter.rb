require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :vista
    module User32
      # Message filter action values (action parameter to ChangeWindowMessageFilterEx)
      # Message filter action values (action parameter to ChangeWindowMessageFilterEx)
      buffer = [
          :ADD,    1,
          :REMOVE, 2
      ]

      if WindowsVersion >= 7
        buffer += [
            :RESET,    0,
            :ALLOW,    1,
            :DISALLOW, 2,
        ]
      end
      MessageFilter = enum :message_filter, buffer

      define_prefix(:MSGFLT, MessageFilter)
    end
  end
end