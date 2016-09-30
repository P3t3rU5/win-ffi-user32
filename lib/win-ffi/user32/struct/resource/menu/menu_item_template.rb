module WinFFI
  module User32
    class MENUITEMTEMPLATE < FFIAdditions::Struct
      layout mtOption:     :word,
             mtID:         :word,
             mtString: [:char, 1]
    end
  end
end