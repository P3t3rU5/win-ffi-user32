require_relative '../../../enum/resource/menu/info_member'
require_relative '../../../enum/resource/menu/style'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagmenuinfo
    class MENUINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def fMask; end
      def fMask=(v) end
      def dwStyle; end
      def dwStyle=(v) end
      def cyMax; end
      def cyMax=(v) end
      def hbrBack; end
      def hbrBack=(v) end
      def dwContextHelpID; end
      def dwContextHelpID=(v) end
      def dwMenuData; end
      def dwMenuData=(v) end

      layout cbSize:          :dword,
             fMask:           MenuInfoMember,
             dwStyle:         MenuStyle,
             cyMax:           :uint,
             hbrBack:         :hbrush,
             dwContextHelpID: :dword,
             dwMenuData:      :ulong

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end