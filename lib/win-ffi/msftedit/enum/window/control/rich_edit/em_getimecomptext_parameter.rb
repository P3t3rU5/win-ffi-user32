require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787934(v=vs.85).aspx
      EmGetimecomptextParameter = enum :em_getimecomptext_parameter, [
          :RESULTREADSTR, 1
      ]

      define_prefix(:ICT, EmGetimecomptextParameter)
    end
  end
end