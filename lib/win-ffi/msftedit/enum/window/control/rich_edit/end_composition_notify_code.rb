require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # Constants for ENDCOMPOSITIONNOTIFY dwCode
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh994450(v=vs.85).aspx
      EndCompositionNotifyCode = enum :end_composition_notify_code, [
          :ENDCOMPOSITION, 0x0001,
          :NEWTEXT,        0x0002,
      ]

      define_prefix(:ECN, EndCompositionNotifyCode)
    end
  end
end