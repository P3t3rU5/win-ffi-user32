require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373892(v=vs.85).aspx
    WmGetobjectFlag = enum :wm_getobject_flag, [
        :OBJECT,    0,
        :CONTAINER, 0,
    ]

    CHILDID_SELF = 0

    define_prefix(:INDEXID, WmGetobjectFlag)
  end
end