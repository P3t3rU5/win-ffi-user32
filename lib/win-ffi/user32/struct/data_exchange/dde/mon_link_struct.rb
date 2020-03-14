require 'win-ffi/user32/typedef/hconv'
require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monlinkstruct
    class MONLINKSTRUCT < FFIAdditions::Struct
      attr_accessor :cb,
                    :dwTime,
                    :hTask,
                    :fEstablished,
                    :fNoData,
                    :hszSvc,
                    :hszTopic,
                    :hszItem,
                    :wFmt,
                    :fServer,
                    :hConvServer,
                    :hConvClient

      layout cb:           :uint,
             dwTime:       :dword,
             hTask:        :handle,
             fEstablished: :bool,
             fNoData:      :bool,
             hszSvc:       :hsz,
             hszTopic:     :hsz,
             hszItem:      :hsz,
             wFmt:         :uint,
             fServer:      :bool,
             hConvServer:  :hconv,
             hConvClient:  :hconv

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end
