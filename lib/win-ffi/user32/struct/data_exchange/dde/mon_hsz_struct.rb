require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonhszstructa
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonhszstructw
    class MONHSZSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def fsAction; end
      def fsAction=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hsz; end
      def hsz=(v); end
      def hTask; end
      def hTask=(v); end
      def str; end
      def str=(v); end

      layout cb:       :uint,
             fsAction: :bool, # MH_ value */,
             dwTime:   :dword,
             hsz:      :hsz,
             hTask:    :handle,
             str:      [:char, 1]

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end