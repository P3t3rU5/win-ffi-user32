require_relative '../../../typedef/hmenu'
require_relative '../../../enum/window/style'
require_relative '../../../enum/window/style/ex'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632603(v=vs.85).aspx
    class CREATESTRUCT < FFIAdditions::Struct
      def lpCreateParams; end
      def lpCreateParams=(v) end
      def hInstance; end
      def hInstance=(v) end
      def hMenu; end
      def hMenu=(v) end
      def hwndParent; end
      def hwndParent=(v) end
      def cy; end
      def cy=(v) end
      def cx; end
      def cx=(v) end
      def y; end
      def y=(v) end
      def x; end
      def x=(v) end
      def style; end
      def style=(v) end
      def lpszName; end
      def lpszName=(v) end
      def lpszClass; end
      def lpszClass=(v) end
      def dwExStyle; end
      def dwExStyle=(v) end

      layout lpCreateParams: :pointer,
             hInstance:      :hinstance,
             hMenu:          :hmenu,
             hwndParent:     :pointer,
             cy:             :int,
             cx:             :int,
             y:              :int,
             x:              :int,
             style:          WindowStyle,
             lpszName:       :string,
             lpszClass:      :string,
             dwExStyle:      WindowStyleExtended

      def to_s
        [:lpCreateParams, :x, :y, :width, :height, :style, :dwExStyle].map{|n| "#{n} = #{send(n)}"}.join(', ')
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
