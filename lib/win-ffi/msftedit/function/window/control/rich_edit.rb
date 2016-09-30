require 'win-ffi/msftedit'

module WinFFI
  module Msftedit

    # GetMathAlphanumeric(
    #   _In_ LONG  ch,
    #   _In_ DWORD MathStyle)
    attach_function 'GetMathAlphanumeric', [:long, :dword], :char

    # GetMathAlphanumericCode(
    #   _In_  DWORD chTrail,
    #   _Out_ WCHAR *pch)
    attach_function 'GetMathAlphanumeric', [:dword, :string], :char

    if WindowsVersion >= :vista

      # DWORD CALLBACK EditStreamCallback(
      #   _In_ DWORD_PTR dwCookie,
      #   _In_ LPBYTE    pbBuff,
      #   _In_ LONG      cb,
      #   _In_ LONG      *pcb)
      EditStreamCallback = callback 'EditStreamCallback', [:dword, :byte, :long, :long], :dword

      # LONG CALLBACK EditWordBreakProcEx(
      #   _In_ char *pchText,
      #   _In_ LONG cchText,
      #   _In_ BYTE bCharSet,
      #   _In_ INT  code)
      EditWordBreakProcEx = callback 'EditWordBreakProcEx', [:string, :long, :byte, :int], :long

      if WindowsVersion >= 8
        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768289(v=vs.85).aspx
        # int WINAPI AutoCorrectProc(
        #   LANGID langid,
        #   const WCHAR  *pszBefore,
        #   WCHAR  *pszAfter,
        #   LONG   cchAfter,
        #   LONG   *pcchReplaced)
        AutoCorrectProc = callback 'AutoCorrectProc', [:langid, :pointer, :pointer, :long, :long], :int
      end
    end


    # https://msdn.microsoft.com/en-us/library/windows/desktop/hh780443(v=vs.85).aspx
    # HRESULT MathBuildDown(
    #   _Inout_ ITextRange2  *prg,
    #   _In_    ITextStrings *pstrs,
    #   _In_    long         Flags)
    attach_function 'MathBuildDown', [:string, :string, :long], :hresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/hh780445(v=vs.85).aspx
    # HRESULT MathBuildUp(
    #   _Inout_ ITextRange2  *prg,
    #   _In_    ITextStrings *pstrs,
    #   _In_    long         Flags)
    attach_function 'MathBuildUp', [:string, :string, :long], :hresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/hh780446(v=vs.85).aspx
    # HRESULT MathTranslate(
    #   _Inout_ ITextRange2 *prg,
    #   _In_    long        Flags)
    attach_function 'MathTranslate', [:string, :long], :hresult
  end
end