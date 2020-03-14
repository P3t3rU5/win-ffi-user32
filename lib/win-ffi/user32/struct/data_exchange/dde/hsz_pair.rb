require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-hszpair
    # the following structure is for use with XTYP_WILDCONNECT processing.
    class HSZPAIR < FFIAdditions::Struct
      attr_accessor :hszSvc, :hszTopic

      layout hszSvc:   :hsz,
             hszTopic: :hsz
    end
  end
end