require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633502(v=vs.85).aspx
    # The "real" ancestor window
    GetAncestorFlag = enum :get_ancestor_flag, [
        :PARENT,    1,
        :ROOT,      2,
        :ROOTOWNER, 3
    ]

    define_prefix(:GA, GetAncestorFlag)
  end
end