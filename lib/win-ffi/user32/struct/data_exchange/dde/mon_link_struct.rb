require 'win-ffi/user32/typedef/hconv'
require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonlinkstruct
    class MONLINKSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hTask; end
      def hTask=(v); end
      def fEstablished; end
      def fEstablished=(v); end
      def fNoData; end
      def fNoData=(v); end
      def hszSvc; end
      def hszSvc=(v); end
      def hszTopic; end
      def hszTopic=(v); end
      def hszItem; end
      def hszItem=(v); end
      def wFmt; end
      def wFmt=(v); end
      def fServer; end
      def fServer=(v); end
      def hConvServer; end
      def hConvServer=(v); end
      def hConvClient; end
      def hConvClient=(v); end

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
