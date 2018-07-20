module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getmenudefaultitem#parameters
    GetMenuDefaultItemFlag = enum :get_menu_default_item_flag, [:USEDISABLED,  0x0001, :GOINTOPOPUPS, 0x0002]

    define_prefix(:GMDI, GetMenuDefaultItemFlag)
  end
end