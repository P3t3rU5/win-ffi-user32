require_relative '../../../typedef/hconv'
require_relative '../../../typedef/hsz'
require_relative '../../../enum/data_exchange/dde/transaction_type'
require_relative '../../../enum/data_exchange/dde/dde_status'
require_relative '../../../enum/data_exchange/dde/conversation_status'
require_relative 'conv_context'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagconvinfo
    # The following structure is used by DdeQueryConvInfo()
    class CONVINFO < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def hUser; end
      def hUser=(v); end
      def hConvPartner; end
      def hConvPartner=(v); end
      def hszSvcPartner; end
      def hszSvcPartner=(v); end
      def hszServiceReq; end
      def hszServiceReq=(v); end
      def hszTopic; end
      def hszTopic=(v); end
      def hszItem; end
      def hszItem=(v); end
      def wFmt; end
      def wFmt=(v); end
      def wType; end
      def wType=(v); end
      def wStatus; end
      def wStatus=(v); end
      def wConvst; end
      def wConvst=(v); end
      def wLastError; end
      def wLastError=(v); end
      def hConvList; end
      def hConvList=(v); end
      def ConvCtxt; end
      def ConvCtxt=(v); end
      def hwnd; end
      def hwnd=(v); end
      def hwndPartner; end
      def hwndPartner=(v); end

      layout cb:            :dword,             # sizeof(CONVINFO)
             hUser:         :dword,             # user specified field
             hConvPartner:  :hconv,             # hConv on other end or 0 if non-ddemgr partner
             hszSvcPartner: :hsz,               # app name of partner if obtainable
             hszServiceReq: :hsz,               # AppName requested for connection
             hszTopic:      :hsz,               # Topic name for conversation
             hszItem:       :hsz,               # transaction item name or NULL if quiescent
             wFmt:          :uint,              # transaction format or NULL if quiescent
             wType:         TransactionType,    # XTYP_ for current transaction
             wStatus:       ConversationStatus, # ST_ constant for current conversation
             wConvst:       DdeStatus,          # XST_ constant for current transaction
             wLastError:    :uint,              # last transaction error.
             hConvList:     :pointer,           # parent hConvList if this conversation is in a list
             ConvCtxt:      CONVCONTEXT,        # conversation context
             hwnd:          :hwnd,              # window handle for this conversation
             hwndPartner:   :hwnd               # partner window handle for this conversation

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end