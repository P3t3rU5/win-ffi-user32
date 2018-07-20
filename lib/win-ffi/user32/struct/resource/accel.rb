require_relative '../../enum/resource/accelerator_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagaccel
    class ACCEL < FFIAdditions::Struct
      def fvirt; end
      def fvirt=(v); end
      def key; end
      def key=(v); end
      def cmd; end
      def cmd=(v); end

      layout fvirt: AcceleratorFlag,
             key:   :word,
             cmd:   :word
    end
  end
end