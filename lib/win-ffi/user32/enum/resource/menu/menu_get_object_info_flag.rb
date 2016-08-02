require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms647572(v=vs.85).aspx
    MenuGetObjectInfoFlag = enum :menu_get_object_info_flag, [
        :TOPGAP,    0x00000001,
        :BOTTOMGAP, 0x00000002
    ]

    define_prefix(:MNGOF, MenuGetObjectInfoFlag)
  end
end