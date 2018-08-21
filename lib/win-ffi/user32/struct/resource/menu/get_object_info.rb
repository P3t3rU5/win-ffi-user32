require_relative '../../../typedef/hmenu'
require_relative '../../../enum/resource/menu/get_object_info_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenugetobjectinfo
    class MENUGETOBJECTINFO < FFIAdditions::Struct
      def dwFlags; end
      def dwFlags=(v) end
      def uPos; end
      def uPos=(v) end
      def hmenu; end
      def hmenu=(v) end
      def riid; end
      def riid=(v) end
      def pvObj; end
      def pvObj=(v) end

      layout dwFlags: MenuGetObjectInfoFlag,
             uPos:    :uint,
             hmenu:   :hmenu,
             riid:    :pointer,
             pvObj:   :pointer
    end
  end
end