module WinFFI
  if WINDOWS_VERSION >= 7

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_rational
      class DISPLAYCONFIG_RATIONAL < FFIAdditions::Struct
        def Numerator; end
        def Numerator=(v) end
        def Denominator; end
        def Denominator=(v) end

        layout Numerator:   :uint32,
               Denominator: :uint32
      end
    end
  end
end
