require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 7
    module User32
      # Message filter info values (CHANGEFILTERSTRUCT.ExtStatus)
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd388197(v=vs.85).aspx
      MessageFilterInfo = enum :message_filter_info, [
          :NONE,                     0,
          :ALREADYALLOWED_FORWND,    1,
          :ALREADYDISALLOWED_FORWND, 2,
          :ALLOWED_HIGHER,           3
      ]

      define_prefix(:MSGFLTINFO, MessageFilterInfo)
    end
  end
end