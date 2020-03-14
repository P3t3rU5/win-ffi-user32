require_relative '../../../typedef/hmenu'
require_relative '../../../enum/resource/menu/get_object_info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menugetobjectinfo
    class MENUGETOBJECTINFO < FFIAdditions::Struct
      attr_accessor :dwFlags,
                    :uPos,
                    :hmenu,
                    :riid,
                    :pvObj

      layout dwFlags: MenuGetObjectInfoFlag,
             uPos:    :uint,
             hmenu:   :hmenu,
             riid:    :pointer,
             pvObj:   :pointer
    end
  end
end