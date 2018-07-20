module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # Message filter action values (action parameter to ChangeWindowMessageFilterEx)
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd388202
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632675
      buffer = [:ADD, 1, :REMOVE, 2]

      buffer += [:RESET, 0, :ALLOW, 1, :DISALLOW, 2] if WINDOWS_VERSION >= 7

      MessageFilter = enum :message_filter, buffer

      define_prefix(:MSGFLT, MessageFilter)
    end
  end
end