require 'win-ffi/user32/enum/window/function/set_window_pos_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-windowpos
    # WM_WINDOWPOSCHANGING/CHANGED struct pointed to by lParam
    class WINDOWPOS < FFIAdditions::Struct
      FLAGS_INV = SetWindowPosFlag.to_hash.reduce(Hash.new {|h,k| h[k] = [] } ){ |h,(k,v)| h[v] << k; h }.freeze

      attr_accessor :hwnd, :hwndInsertAfter, :x, :y, :cx, :cy

      layout hwnd:            :hwnd, #HWND
             hwndInsertAfter: :hwnd, #HWND
             x:               :int,
             y:               :int,
             cx:              :int,
             cy:              :int,
             flags:           :uint

      def flags
        val = self[:flags]
        Set.new(FLAGS_INV.select { |k,_| val & k != 0 }.reduce([]) { |a,(_,v)| a << v }.flatten)
      end

      def flags=(flags)
        self[:flags] = [*flags].reduce(0) { |a,f| a | SetWindowPosFlag[f].to_i }
      end

      def right
        width + left
      end

      def right=(v)
        self.width = v - left
      end

      def bottom
        height + top
      end

      def bottom=(v)
        self.height = v - top
      end

      def to_s
        "<WINDOWPOS left: #{left}, top: #{top}, width: #{width}, height: #{height}, flags: #{flags.to_a.inspect}>"
      end

      alias_method :left,    :x
      alias_method :left=,   :x=
      alias_method :top,     :y
      alias_method :top=,    :y=
      alias_method :width,   :cx
      alias_method :width=,  :cx=
      alias_method :height,  :cy
      alias_method :height=, :cy=
    end
  end
end
