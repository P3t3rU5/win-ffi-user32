module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerw
    # LPTSTR CharLower(  _Inout_  LPTSTR lpsz )
    def self.CharLower(lpsz); end
    encoded_function 'CharLower', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charlowerbuffw
    # DWORD CharLowerBuff( _Inout_  LPTSTR lpsz, _In_     DWORD cchLength )
    def self.CharLowerBuff(lpsz, cchLength); end
    encoded_function 'CharLowerBuff', [:string, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnextw
    # LPTSTR CharNext( _In_  LPCTSTR lpsz )
    def self.CharNext(lpsz); end
    encoded_function 'CharNext', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charpreva
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charprevw
    # LPTSTR CharPrev( _In_  LPCTSTR lpszStart, _In_  LPCTSTR lpszCurrent )
    def self.CharPrev(lpszStart, lpszCurrent); end
    encoded_function 'CharPrev', [:string, :string], :string

    if WinFFI.ascii?
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charnextexa
      # LPSTR CharNextExA( _In_  WORD CodePage, _In_  LPCSTR lpCurrentChar, _In_  DWORD dwFlags )
      def self.CharNextExA(codePage, lpCurrentChar, dwFlags); end
      attach_function 'CharNextExA', [:ushort, :string, :dword], :string

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charprevexa
      # LPSTR CharPrevExA(_In_ WORD CodePage, _In_ LPCSTR lpStart, _In_ LPCSTR lpCurrentChar, _In_ DWORD dwFlags)
      def self.CharPrevExA(codePage, lpStart, lpCurrentChar, dwFlags); end
      attach_function 'CharPrevExA', [:word, :string, :string, :dword], :string
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooema
    # BOOL CharToOem( _In_   LPCTSTR lpszSrc, _Out_  LPSTR lpszDst )
    def self.CharToOem(lpszSrc, lpszDst); end
    encoded_function 'CharToOem', [:string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooema
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-chartooemw
    # BOOL CharToOemBuff( _In_ LPCTSTR lpszSrc, _Out_ LPSTR lpszDst, _In_ DWORD cchDstLength )
    def self.CharToOemBuff(lpszSrc, lpszDst, cchDstLength); end
    encoded_function 'CharToOemBuff', [:string, :string, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charuppera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperw
    # LPTSTR CharUpper( _Inout_  LPTSTR lpsz )
    def self.CharUpper(lpsz); end
    encoded_function 'CharUpper', [:string], :string

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-charupperbuffw
    # DWORD CharUpperBuff( _Inout_ LPTSTR lpsz, _In_ DWORD cchLength )
    def self.CharUpperBuff(lpsz, cchLength); end
    encoded_function 'CharUpperBuff', [:string, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphaa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphaw
    # BOOL IsCharAlpha( _In_  TCHAR ch )
    def self.IsCharAlpha(ch); end
    encoded_function 'IsCharAlpha', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphanumerica
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaralphanumericw
    # BOOL IsCharAlphaNumeric( _In_  TCHAR ch )
    def self.IsCharAlphaNumeric(ch); end
    encoded_function 'IsCharAlphaNumeric', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischarlowera
    # BOOL IsCharLower( _In_  TCHAR ch )
    def self.IsCharLower(ch); end
    encoded_function 'IsCharLower', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischaruppera
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-ischarupperw
    # BOOL IsCharUpper( _In_  TCHAR ch )
    def self.IsCharUpper(ch); end
    encoded_function 'IsCharUpper', [:char], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadstringa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadstringw
    # int LoadString( _In_opt_  HINSTANCE hInstance, _In_ UINT uID, _Out_ LPTSTR lpBuffer, _In_ int nBufferMax )
    def self.LoadString(hInstance, uID, lpBuffer, nBufferMax); end
    encoded_function 'LoadString', [:hinstance, :uint, :string, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtochara
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharw
    # Do not use. Using this function incorrectly can compromise the security of your application.
    # BOOL OemToChar( _In_   LPCSTR lpszSrc, _Out_  LPTSTR lpszDst )
    def self.OemToChar(lpszSrc, lpszDst); end
    encoded_function 'OemToChar', [:string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharbuffa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-oemtocharbuffw
    # BOOL OemToCharBuff( _In_   LPCSTR lpszSrc, _Out_  LPTSTR lpszDst, _In_   DWORD cchDstLength )
    def self.OemToCharBuff(lpszSrc, lpszDst, cchDstLength); end
    encoded_function 'OemToCharBuff', [:string, :string, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-wsprintfa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-wsprintfw
    # int __cdecl wsprintf(
    #   _Out_ LPTSTR  lpOut,
    #   _In_  LPCTSTR lpFmt,
    #   _In_          ...)
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
