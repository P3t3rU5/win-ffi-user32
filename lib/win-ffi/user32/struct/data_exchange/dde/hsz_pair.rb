require 'win-ffi/user32/typedef/hsz'

module WinFFI
  module User32
    # the following structure is for use with XTYP_WILDCONNECT processing.
    class HSZPAIR < FFIAdditions::Struct
      layout hszSvc:   :hsz,
             hszTopic: :hsz
    end
  end
end