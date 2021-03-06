module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenugetobjectinfo
    MenuGetObjectInfoFlag = enum :menu_get_object_info_flag, [:TOPGAP, 0x00000001, :BOTTOMGAP, 0x00000002]

    define_prefix(:MNGOF, MenuGetObjectInfoFlag)
  end
end