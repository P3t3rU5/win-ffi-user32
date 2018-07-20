require 'win-ffi/user32/typedef/hddedata'
require 'win-ffi/user32/typedef/hconv'
require 'win-ffi/user32/typedef/hsz'

require 'win-ffi/user32/struct/data_exchange/dde/conv_context'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagmoncbstruct
    class MONCBSTRUCT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def dwTime; end
      def dwTime=(v); end
      def hTask; end
      def hTask=(v); end
      def dwRet; end
      def dwRet=(v); end
      def wType; end
      def wType=(v); end
      def wFmt; end
      def wFmt=(v); end
      def hConv; end
      def hConv=(v); end
      def hsz1; end
      def hsz1=(v); end
      def hsz2; end
      def hsz2=(v); end
      def hData; end
      def hData=(v); end
      def dwData1; end
      def dwData1=(v); end
      def dwData2; end
      def dwData2=(v); end
      def cc; end
      def cc=(v); end
      def cbData; end
      def cbData=(v); end
      def Data; end
      def Data=(v); end

      layout cb:      :uint,
             dwTime:  :dword,
             hTask:   :handle,
             dwRet:   :dword,
             wType:   :uint,
             wFmt:    :uint,
             hConv:   :hconv,
             hsz1:    :hsz,
             hsz2:    :hsz,
             hData:   :hddedata,
             dwData1: :ulong,
             dwData2: :ulong,
             cc:      CONVCONTEXT, # new for NT for XTYP_CONNECT callbacks,
             cbData:  :dword, # new for NT for data peeking,
             Data:    [:dword, 8] # new for NT for data peeking

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end