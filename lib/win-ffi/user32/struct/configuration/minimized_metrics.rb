require 'win-ffi/user32/enum/configuration/arrange_window'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724500(v=vs.85).aspx
    class MINIMIZEDMETRICS < FFIAdditions::Struct
      layout cbSize:           :uint,
             iWidth:            :int,
             iHorzGap:          :int,
             iVertGap:          :int,
             iArrange: ArrangeWindow
    end
  end
end