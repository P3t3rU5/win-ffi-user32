module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/ddeml/ns-ddeml-tagddeml_msg_hook_data
    class DDEML_MSG_HOOK_DATA < FFIAdditions::Struct
      def uiLo; end
      def uiLo=(v) end
      def uiHi; end
      def uiHi=(v) end
      def cbData; end
      def cbData=(v) end
      def Data; end
      def Data=(v) end

      layout uiLo:   :uint,      # unpacked lo and hi parts of lParam,
             uiHi:   :uint,
             cbData: :dword,     # amount of data in message, if any. May be > than 32 bytes.
             Data:   [:dword, 8] # data peeking by DDESPY is limited to 32 bytes.
    end
  end
end