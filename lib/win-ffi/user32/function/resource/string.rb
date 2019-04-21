module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerw
    # @param [String] lpsz
    # @return [String]
    def self.CharLower(lpsz) end
    encoded_function 'CharLower', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerbuffw
    # @param [String] lpsz
    # @param [Integer] cchLength
    # @return [Integer]
    def self.CharLowerBuff(lpsz, cchLength) end
    encoded_function 'CharLowerBuff', [:string, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnextw
    # @param [String] lpsz
    # @return [String]
    def self.CharNext(lpsz) end
    encoded_function 'CharNext', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charpreva
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charprevw
    # @param [String] lpszStart
    # @param [String] lpszCurrent
    # @return [String]
    def self.CharPrev(lpszStart, lpszCurrent) end
    encoded_function 'CharPrev', [:string, :string], :string

    if WinFFI.ascii?
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnextexa
      # @param [Integer] codePage
      # @param [String] lpCurrentChar
      # @param [Integer] dwFlags
      # @return [String]
      def self.CharNextExA(codePage, lpCurrentChar, dwFlags) end
      attach_function 'CharNextExA', [:ushort, :string, :dword], :string

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charprevexa
      # @param [Integer] codePage
      # @param [String] lpStart
      # @param [String] lpCurrentChar
      # @param [Integer] dwFlags
      # @return [String]
      def self.CharPrevExA(codePage, lpStart, lpCurrentChar, dwFlags); end
      attach_function 'CharPrevExA', [:word, :string, :string, :dword], :string
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooema
    # @param [String] lpszSrc
    # @param [String] lpszDst
    # @return [true, false]
    def self.CharToOem(lpszSrc, lpszDst); end
    encoded_function 'CharToOem', [:string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooema
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooemw
    # @param [String] lpszSrc
    # @param [String] lpszDst
    # @param [Integer] cchDstLength
    # @return [true, false]
    def self.CharToOemBuff(lpszSrc, lpszDst, cchDstLength); end
    encoded_function 'CharToOemBuff', [:string, :string, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charuppera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperw
    # @param [String] lpsz
    # @return [String]
    def self.CharUpper(lpsz); end
    encoded_function 'CharUpper', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperbuffw
    # @param [String] lpsz
    # @param [Integer] cchLength
    # @return [Integer]
    def self.CharUpperBuff(lpsz, cchLength); end
    encoded_function 'CharUpperBuff', [:string, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphaa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphaw
    # @param [char] ch
    # @return [true, façse]
    def self.IsCharAlpha(ch); end
    encoded_function 'IsCharAlpha', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphanumerica
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphanumericw
    # @param [char] ch
    # @return [true, false]
    def self.IsCharAlphaNumeric(ch); end
    encoded_function 'IsCharAlphaNumeric', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischarlowera
    # @param [char] ch
    # @return [true, false]
    def self.IsCharLower(ch); end
    encoded_function 'IsCharLower', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaruppera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischarupperw
    # @param [char] ch
    # @return [true, false]
    def self.IsCharUpper(ch); end
    encoded_function 'IsCharUpper', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadstringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadstringw
    # @param [FFI::Pointer] hInstance
    # @param [Integer] uID
    # @param [String] lpBuffer
    # @param [Integer] nBufferMax
    # @return [Integer]
    def self.LoadString(hInstance, uID, lpBuffer, nBufferMax); end
    encoded_function 'LoadString', [:hinstance, :uint, :string, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtochara
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharw
    # Do not use. Using this function incorrectly can compromise the security of your application.
    # @param [String] lpszSrc
    # @param [String] lpszDst
    # @return [true, false]
    def self.OemToChar(lpszSrc, lpszDst); end
    encoded_function 'OemToChar', [:string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharbuffw
    # @param [String] lpszSrc
    # @param [String] lpszDst
    # @param [Integer] cchDstLength
    # @return [true, false]
    def self.OemToCharBuff(lpszSrc, lpszDst, cchDstLength); end
    encoded_function 'OemToCharBuff', [:string, :string, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-wsprintfa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-wsprintfw
    # @param [String] lpOut
    # @param [String] lpFmt
    # @param [Array<String>] args
    # @return [Integer]
    def self.wsprintf(lpOut, lpFmt, *args); end
    encoded_function 'wsprintf', [:string, :string, :varargs], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-wvsprintfa
    # int wvsprintf(
    #   _Out_ LPTSTR  lpOutput,
    #   _In_  LPCTSTR lpFmt,
    #   _In_  va_list arglist)
    # attach_function 'wvsprintf', [:string, :string, :va_list], :int

    class << self
      # TODO StrSafe.h

      alias_method :AnsiToOem,     :CharToOem
      alias_method :AnsiToOemBuff, :CharToOemBuff
      alias_method :OemToAnsi,     :OemToChar
      alias_method :OemToAnsiBuff, :OemToCharBuff
      alias_method :AnsiLower,     :CharLower
      alias_method :AnsiLowerBuff, :CharLowerBuff
      alias_method :AnsiUpper,     :CharUpper
      alias_method :AnsiUpperBuff, :CharUpperBuff
      alias_method :AnsiNext,      :CharNext
      alias_method :AnsiPrev,      :CharPrev
    end
  end
end
