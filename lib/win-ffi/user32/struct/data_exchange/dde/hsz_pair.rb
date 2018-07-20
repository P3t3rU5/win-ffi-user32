require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-taghszpair
    # the following structure is for use with XTYP_WILDCONNECT processing.
    class HSZPAIR < FFIAdditions::Struct
      def hszSvc; end
      def hszSvc=(v); end
      def hszTopic; end
      def hszTopic=(v); end

      layout hszSvc:   :hsz,
             hszTopic: :hsz
    end
  end
end