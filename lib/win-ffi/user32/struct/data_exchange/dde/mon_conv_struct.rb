require 'win-ffi/user32/typedef/hsz'
require 'win-ffi/user32/typedef/hconv'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-monconvstruct
    class MONCONVSTRUCT < FFIAdditions::Struct
      attr_accessor :cb,
                    :fConnect,
                    :dwTime,
                    :hTask,
                    :hszSvc,
                    :hszTopic,
                    :hConvClient,
                    :hConvServer

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