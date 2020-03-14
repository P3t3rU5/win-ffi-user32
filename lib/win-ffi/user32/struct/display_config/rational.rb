module WinFFI
  if WINDOWS_VERSION >= 7

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-displayconfig_rational
      class DISPLAYCONFIG_RATIONAL < FFIAdditions::Struct
        attr_accessor :Numerator, :Denominator

        layout Numerator:   :uint32,
               Denominator: :uint32
      end
    end
  end
end
