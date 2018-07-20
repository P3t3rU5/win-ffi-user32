require_relative '../../../typedef/hmenu'

require_relative '../../../enum/resource/menu/menu_item_info_member'
require_relative '../../../enum/resource/menu/menu_flag_type'
require_relative '../../../enum/resource/menu/menu_flag_state'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenuiteminfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenuiteminfow
    class MENUITEMINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def fMask; end
      def fMask=(v) end
      def fType; end
      def fType=(v) end
      def fState; end
      def fState=(v) end
      def wID; end
      def wID=(v) end
      def hSubMenu; end
      def hSubMenu=(v) end
      def hbmpChecked; end
      def hbmpChecked=(v) end
      def hbmpUnchecked; end
      def hbmpUnchecked=(v) end
      def dwItemData; end
      def dwItemData=(v) end
      def dwTypeData; end
      def dwTypeData=(v) end
      def cch; end
      def cch=(v) end
      def hbmpItem; end
      def hbmpItem=(v) end

      layout cbSize:        :uint,
             fMask:         MenuItemInfoMember,
             fType:         MenuFlagType,  # used if MIIM_TYPE (4.0) or MIIM_FTYPE (>4.0)
             fState:        MenuFlagState, # used if MIIM_STATE
             wID:           :uint,         # used if MIIM_ID
             hSubMenu:      :hmenu,        # used if MIIM_SUBMENU
             hbmpChecked:   :pointer,      # used if MIIM_CHECKMARKS
             hbmpUnchecked: :pointer,      # used if MIIM_CHECKMARKS
             dwItemData:    :ulong,        # used if MIIM_DATA
             dwTypeData:    :string,       # used if MIIM_TYPE (4.0) or MIIM_STRING (>4.0)
             cch:           :uint,         # used if MIIM_TYPE (4.0) or MIIM_STRING (>4.0)
             hbmpItem:      :pointer       # used if MIIM_BITMAP

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end