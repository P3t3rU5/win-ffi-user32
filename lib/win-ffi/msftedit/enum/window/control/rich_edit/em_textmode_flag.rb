require 'win-ffi/msftedit'

module WinFFI
  module Msftedit
    # enum for use with EM_GET/SETTEXTMODE
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb788031(v=vs.85).aspx
    TextMode = enum :text_mode, [
        :PLAINTEXT,       1,
        :RICHTEXT,        2,
        :SINGLELEVELUNDO, 4,
        :MULTILEVELUNDO,  8,
        :SINGLECODEPAGE, 16,
        :MULTICODEPAGE,  32,
    ]

    define_prefix(:TM, TextMode)
  end
end