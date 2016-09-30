require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
    module Msftedit
      # AutoCorrect callback
      # https://msdn.microsoft.com/en-Us/hh768289
      AutoCorrectCallbackReturn = enum :auto_correct_callback_return, [
          :NOCHANGE,       0,
          :CHANGE,         1,
          :NODELIMITER,    2,
          :REPLACEALLTEXT, 4,
      ]

      define_prefix(:ATP, AutoCorrectCallbackReturn)
    end
  end
end