require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monhszstructa
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monhszstructw
    class MONHSZSTRUCT < FFIAdditions::Struct
      attr_accessor :cb,
                    :fsAction,
                    :dwTime,
                    :hsz,
                    :hTask,
                    :str

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