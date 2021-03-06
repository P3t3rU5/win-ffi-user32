require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/em-findwordbreak
      EmFindwordbreakParameter = enum :em_findwordbreak_parameter, [
          # EDITWORDBREAKPROC code values
          :LEFT,          0,
          :RIGHT,         1,
          :ISDELIMITER,   2,

          # word break function actions
          :CLASSIFY,      3,
          :MOVEWORDLEFT,  4,
          :MOVEWORDRIGHT, 5,
          :LEFTBREAK,     6,
          :RIGHTBREAK,    7,

          # East Asia specific flags
          :MOVEWORDPREV, 4,
          :MOVEWORDNEXT, 5,
          :PREVBREAK,    6,
          :NEXTBREAK,    7,
      ]

      define_prefix(:WB, EmFindwordbreakParameter)
    end
  end
end