module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-ddeml_msg_hook_data
    class DDEML_MSG_HOOK_DATA < FFIAdditions::Struct
      attr_accessor :uiLo, :uiHi, :cbData, :Data

      layout uiLo:   :uint,      # unpacked lo and hi parts of lParam,
             uiHi:   :uint,
             cbData: :dword,     # amount of data in message, if any. May be > than 32 bytes.
             Data:   [:dword, 8] # data peeking by DDESPY is limited to 32 bytes.
    end
  end
end