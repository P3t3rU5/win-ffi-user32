require_relative '../../../typedef/hmenu'

require_relative '../../../enum/resource/menu/item_info_member'
require_relative '../../../enum/resource/menu/flag_type'
require_relative '../../../enum/resource/menu/flag_state'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menuiteminfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menuiteminfow
    class MENUITEMINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :fMask,
                    :fType,
                    :fState,
                    :wID,
                    :hSubMenu,
                    :hbmpChecked,
                    :hbmpUnchecked,
                    :dwItemData,
                    :dwTypeData,
                    :cch,
                    :hbmpItem

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