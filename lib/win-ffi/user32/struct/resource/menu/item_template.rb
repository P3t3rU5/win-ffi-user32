module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menuitemtemplate
    class MENUITEMTEMPLATE < FFIAdditions::Struct
      attr_accessor :mtOption, :mtID, :mtString

      layout mtOption: :word,
             mtID:     :word,
             mtString: [:char, 1]
    end
  end
end