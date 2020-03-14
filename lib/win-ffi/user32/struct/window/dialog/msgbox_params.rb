require_relative '../../../enum/window/control/messagebox/flag'
require_relative '../../shell/help_info'

module WinFFI
  module User32

    # VOID CALLBACK MsgBoxCallback(LPHELPINFO lpHelpInfo);
    MsgBoxCallback = callback 'MsgBoxCallback', [HELPINFO.ptr], :void

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-msgboxparamsa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-msgboxparamsw
    class MSGBOXPARAMS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :hwndOwner,
                    :hInstance,
                    :lpszText,
                    :lpszCaption,
                    :dwStyle,
                    :lpszIcon,
                    :dwContextHelpId,
                    :lpfnMsgBoxCallback,
                    :dwLanguageId

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