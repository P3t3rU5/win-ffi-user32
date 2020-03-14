require_relative '../../../enum/resource/menu/info_member'
require_relative '../../../enum/resource/menu/style'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menuinfo
    class MENUINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :fMask,
                    :dwStyle,
                    :cyMax,
                    :hbrBack,
                    :dwContextHelpID,
                    :dwMenuData

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

      private :cbSize=
    end
  end
end