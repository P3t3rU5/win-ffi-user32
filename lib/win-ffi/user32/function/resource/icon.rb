require_relative '../../enum/resource/load_resource_flag'
require_relative '../../enum/resource/icon/draw_icon_ex_flag'

require_relative '../../struct/resource/icon/info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyicon
    # HICON CopyIcon( _In_  HICON hIcon )
    def self.CopyIcon(hIcon); end
    attach_function 'CopyIcon', [:hicon], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createicon
    # HICON CreateIcon(
    #   _In_opt_  HINSTANCE hInstance,
    #   _In_      int nWidth,
    #   _In_      int nHeight,
    #   _In_      BYTE cPlanes,
    #   _In_      BYTE cBitsPixel,
    #   _In_      const BYTE *lpbANDbits,
    #   _In_      const BYTE *lpbXORbits )
    def self.CreateIcon(hInstance, nWidth, nHeight, cPlanes, cBitsPixel, lpbANDbits, lpbXORbits); end
    attach_function 'CreateIcon' , [:hinstance, :int, :int, :byte, :byte, :pointer, :pointer], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconfromresource
    # HICON CreateIconFromResource(
    #   _In_  PBYTE presbits,
    #   _In_  DWORD dwResSize,
    #   _In_  BOOL fIcon,
    #   _In_  DWORD dwVer )
    def self.CreateIconFromResource(presbits, dwResSize, fIcon, dwVer); end
    attach_function 'CreateIconFromResource', [:pointer, :dword, :bool, :dword], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconfromresourceex
    # HICON CreateIconFromResourceEx(
    #   _In_  PBYTE pbIconBits,
    #   _In_  DWORD cbIconBits,
    #   _In_  BOOL fIcon,
    #   _In_  DWORD dwVersion,
    #   _In_  int cxDesired,
    #   _In_  int cyDesired,
    #   _In_  UINT uFlags )
    def self.CreateIconFromResourceEx(pbIconBits, cbIconBits, fIcon, dwVersion, cxDesired, cyDesired, uFlags); end
    attach_function 'CreateIconFromResourceEx', [:pointer, :dword, :bool, :dword, :int, :int, LoadResourceFlag], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconindirect
    # HICON CreateIconIndirect( _In_  PICONINFO piconinfo )
    def self.CreateIconIndirect(piconinfo); end
    attach_function 'CreateIconIndirect',  [ICONINFO.ptr], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroyicon
    # BOOL DestroyIcon( _In_  HICON hIcon )
    def self.DestroyIcon(hIcon); end
    attach_function 'DestroyIcon', [:hicon], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawicon
    # BOOL DrawIcon( _In_  HDC hDC, _In_  int X, _In_  int Y, _In_  HICON hIcon )
    def self.DrawIcon(hDC, x, y, hIcon); end
    attach_function 'DrawIcon', [:hdc, :int, :int, :hicon], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawiconex
    # BOOL DrawIconEx(
    #   _In_      HDC hdc,
    #   _In_      int xLeft,
    #   _In_      int yTop,
    #   _In_      HICON hIcon,
    #   _In_      int cxWidth,
    #   _In_      int cyWidth,
    #   _In_      UINT istepIfAniCur,
    #   _In_opt_  HBRUSH hbrFlickerFreeDraw,
    #   _In_      UINT diFlags )
    def self.DrawIconEx(hdc, xLeft, yTop, hIcon, cxWidth, cyWidth, istepIfAniCur, hbrFlickerFreeDraw, diFlags); end
    attach_function 'DrawIconEx', [:hdc, :int, :int, :hicon, :int, :int, :uint, :hbrush, DrawIconExFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfo
    # BOOL GetIconInfo( _In_   HICON hIcon, _Out_  PICONINFO piconinfo )
    def self.GetIconInfo(hIcon, piconinfo); end
    attach_function 'GetIconInfo', [:hicon, ICONINFO.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadicona
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadiconw
    # HICON LoadIcon( __in_opt  HINSTANCE hInstance, __in LPCTSTR lpIconName)
    def self.LoadIcon(hInstance, lpIconName); end
    encoded_function 'LoadIcon', [:hinstance, :pointer], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lookupiconidfromdirectory
    # int LookupIconIdFromDirectory( _In_  PBYTE presbits, _In_  BOOL fIcon )
    def self.LookupIconIdFromDirectory(presbits, fIcon); end
    attach_function 'LookupIconIdFromDirectory', [:pointer, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lookupiconidfromdirectoryex
    # int LookupIconIdFromDirectoryEx(
    #   _In_  PBYTE presbits,
    #   _In_  BOOL fIcon,
    #   _In_  int cxDesired,
    #   _In_  int cyDesired,
    #   _In_  UINT Flags )
    def self.LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, flags); end
    attach_function 'LookupIconIdFromDirectoryEx', [:pointer, :bool, :int, :int, LoadResourceFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-privateextracticonsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-privateextracticonsw
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # UINT PrivateExtractIcons(
    #   _In_       LPCTSTR lpszFile,
    #   _In_       int nIconIndex,
    #   _In_       int cxIcon,
    #   _In_       int cyIcon,
    #   _Out_opt_  HICON *phicon,
    #   _Out_opt_  UINT *piconid,
    #   _In_       UINT nIcons,
    #   _In_       UINT flags )
    def self.PrivateExtractIcons(lpszFile, nIconIndex, cxIcon, cyIcon, phicon, piconid, nIcons, flags); end
    encoded_function 'PrivateExtractIcons', [:string, :int, :int, :int, :hicon, :pointer, :uint, LoadResourceFlag], :uint

    if WINDOWS_VERSION >= :vista
      require_relative '../../struct/resource/icon/info_ex'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfoexa
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfoexw
      # BOOL GetIconInfoEx( _In_     HICON hIcon, _Inout_  PICONINFOEX piconinfoex )
      def self.GetIconInfoEx(hIcon, piconinfoex); end
      encoded_function 'GetIconInfoEx', [:hicon, ICONINFOEX.ptr], :bool
    end
  end
end
