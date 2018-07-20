require 'win-ffi/user32/typedef/hsz'
require 'win-ffi/user32/typedef/hconv'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmonconvstruct
    class MONCONVSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def fConnect; end
      def fConnect=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hTask; end
      def hTask=(v); end
      def hszSvc; end
      def hszSvc=(v); end
      def hszTopic; end
      def hszTopic=(v); end
      def hConvClient; end
      def hConvClient=(v); end
      def hConvServer; end
      def hConvServer=(v); end

      layout cb:          :uint,
             fConnect:    :bool,
             dwTime:      :dword,
             hTask:       :handle,
             hszSvc:      :hsz,
             hszTopic:    :hsz,
             hConvClient: :hconv, # Globally unique value != apps local hConv,
             hConvServer: :hconv  # Globally unique value != apps local hConv

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end