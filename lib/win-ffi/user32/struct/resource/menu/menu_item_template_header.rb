module WinFFI
  module User32
    # Menu item resource format
    class MENUITEMTEMPLATEHEADER < FFIAdditions::Struct
      layout versionNumber: :word,
             offset:        :word
    end
  end
end