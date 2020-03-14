require 'win-ffi/user32/typedef/hddedata'
require 'win-ffi/user32/typedef/hconv'
require 'win-ffi/user32/typedef/hsz'

require 'win-ffi/user32/struct/data_exchange/dde/conv_context'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/ddeml/ns-ddeml-moncbstruct
    class MONCBSTRUCT < FFIAdditions::Struct
      attr_accessor :cb,
                    :dwTime,
                    :hTask,
                    :dwRet,
                    :wType,
                    :wFmt,
                    :hConv,
                    :hsz1,
                    :hsz2,
                    :hData,
                    :dwData1,
                    :dwData2,
                    :cc,
                    :cbData,
                    :Data

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