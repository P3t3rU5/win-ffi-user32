require_relative '../../../typedef/hmenu'
require_relative '../../../enum/window/style'
require_relative '../../../enum/window/style/ex'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-createstructa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-createstructw
    class CREATESTRUCT < FFIAdditions::Struct
      attr_accessor :lpCreateParams,
                    :hInstance,
                    :hMenu,
                    :hwndParent,
                    :cy,
                    :cx,
                    :y,
                    :x,
                    :style,
                    :lpszName,
                    :lpszClass,
                    :dwExStyle

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
