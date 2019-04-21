module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      class EDITBALLOONTIP < FFIAdditions::Struct
        layout cbStruct: :dword,
               pszTitle: :string,
               pszText: :string,
               ttiIcon: :int
      end
    end
  end
end
