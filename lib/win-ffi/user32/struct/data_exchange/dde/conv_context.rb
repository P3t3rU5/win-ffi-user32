module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagconvcontext
    # The following structure is used by DdeConnect() and DdeConnectList() and by XTYP_CONNECT and XTYP_WILDCONNECT
    # callbacks.
    # TODO SECURITY_QUALITY_OF_SERVICE struct
    class CONVCONTEXT < FFIAdditions::Struct
      def cb; end
      def cb=(v); end
      def wFlags; end
      def wFlags=(v); end
      def wCountryID; end
      def wCountryID=(v); end
      def iCodePage; end
      def iCodePage=(v); end
      def dwLangID; end
      def dwLangID=(v); end
      def dwSecurity; end
      def dwSecurity=(v); end
      def qos; end
      def qos=(v); end

      layout cb:         :uint,   # set to sizeof(CONVCONTEXT) */,
             wFlags:     :uint,   # none currently defined. */,
             wCountryID: :uint,   # country/region code for topic/item strings used. */,
             iCodePage:  :int,    # codepage used for topic/item strings. */,
             dwLangID:   :dword,  # language ID for topic/item strings. */,
             dwSecurity: :dword,  # Private security code. */,
             qos:        :pointer # client side's quality of service */

      def initialize
        super
        self.cb = self.size
      end

      private :cb=, :cb
    end
  end
end