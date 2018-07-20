require_relative '../../../enum/window/message_box_flag'
require_relative '../../shell/help_info'

module WinFFI
  module User32

    # VOID CALLBACK MsgBoxCallback(LPHELPINFO lpHelpInfo);
    MsgBoxCallback = callback 'MsgBoxCallback', [HELPINFO.ptr], :void

    class MSGBOXPARAMS < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def hwndOwner; end
      def hwndOwner=(v); end
      def hInstance; end
      def hInstance=(v); end
      def lpszText; end
      def lpszText=(v); end
      def lpszCaption; end
      def lpszCaption=(v); end
      def dwStyle; end
      def dwStyle=(v); end
      def lpszIcon; end
      def lpszIcon=(v); end
      def dwContextHelpId; end
      def dwContextHelpId=(v); end
      def lpfnMsgBoxCallback; end
      def lpfnMsgBoxCallback=(v); end
      def dwLanguageId; end
      def dwLanguageId=(v); end

      layout cbSize:             :uint,
             hwndOwner:          :hwnd,
             hInstance:          :hinstance,
             lpszText:           :string,
             lpszCaption:        :string,
             dwStyle:            MessageBoxFlag,
             lpszIcon:           :string,
             dwContextHelpId:    :ulong,
             lpfnMsgBoxCallback: MsgBoxCallback,
             dwLanguageId:       :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end