require_relative '../../enum/resource/load_resource_flag'
require_relative '../../enum/resource/icon/draw_icon_ex_flag'

require_relative '../../struct/resource/icon/info'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyicon
    # @param [FFI::Pointer] hIcon
    # @return [FFI::Pointer]
    def self.CopyIcon(hIcon); end
    attach_function 'CopyIcon', [:hicon], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createicon
    # @param [FFI::Pointer] hInstance
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [byte] cPlanes
    # @param [byte] cBitsPixel
    # @param [FFI::Pointer] lpbANDbits
    # @param [FFI::Pointer] lpbXORbits
    # @return [FFI::Pointer]
    def self.CreateIcon(hInstance, nWidth, nHeight, cPlanes, cBitsPixel, lpbANDbits, lpbXORbits); end
    attach_function 'CreateIcon' , [:hinstance, :int, :int, :byte, :byte, :pointer, :pointer], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconfromresource
    # @param [FFI::Pointer] presbits
    # @param [Integer] dwResSize
    # @param [true, false] fIcon
    # @param [Integer] dwVer
    # @return [FFI::Pointer]
    def self.CreateIconFromResource(presbits, dwResSize, fIcon, dwVer); end
    attach_function 'CreateIconFromResource', [:pointer, :dword, :bool, :dword], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconfromresourceex
    # @param [FFI::Pointer] pbIconBits
    # @param [Integer] cbIconBits
    # @param [true, false] fIcon
    # @param [Integer] dwVersion
    # @param [Integer] cxDesired
    # @param [Integer] cyDesired
    # @param [Integer] uFlags
    # @return [FFI::Pointer]
    def self.CreateIconFromResourceEx(pbIconBits, cbIconBits, fIcon, dwVersion, cxDesired, cyDesired, uFlags); end
    attach_function 'CreateIconFromResourceEx', [:pointer, :dword, :bool, :dword, :int, :int, LoadResourceFlag], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createiconindirect
    # @param [FFI::Pointer] piconinfo
    # @return [FFI::Pointer]
    def self.CreateIconIndirect(piconinfo); end
    attach_function 'CreateIconIndirect',  [ICONINFO.ptr(:in)], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroyicon
    # @param [FFI::Pointer] hIcon
    # @return [true, false]
    def self.DestroyIcon(hIcon); end
    attach_function 'DestroyIcon', [:hicon], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawicon
    # @param [FFI::Pointer] hDC
    # @param [Integer] x
    # @param [Integer] y
    # @param [FFI::Pointer] hIcon
    # @return [true, false]
    def self.DrawIcon(hDC, x, y, hIcon); end
    attach_function 'DrawIcon', [:hdc, :int, :int, :hicon], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-drawiconex
    # @param [FFI::Pointer] hdc
    # @param [Integer] xLeft
    # @param [Integer] yTop
    # @param [FFI::Pointer] hIcon
    # @param [Integer] cxWidth
    # @param [Integer] cyWidth
    # @param [Integer] istepIfAniCur
    # @param [FFI::Pointer] hbrFlickerFreeDraw
    # @param [Integer] diFlags
    def self.DrawIconEx(hdc, xLeft, yTop, hIcon, cxWidth, cyWidth, istepIfAniCur, hbrFlickerFreeDraw, diFlags); end
    attach_function 'DrawIconEx', [:hdc, :int, :int, :hicon, :int, :int, :uint, :hbrush, DrawIconExFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfo
    # @param [FFI::Pointer] hIcon
    # @param [FFI::Pointer] piconinfo
    def self.GetIconInfo(hIcon, piconinfo); end
    attach_function 'GetIconInfo', [:hicon, ICONINFO.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadicona
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadiconw
    # @param [FFI::Pointer] hInstance
    # @param [FFI::Pointer] lpIconName
    # @return [FFI::Pointer]
    def self.LoadIcon(hInstance, lpIconName); end
    encoded_function 'LoadIcon', [:hinstance, :pointer], :hicon

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lookupiconidfromdirectory
    # @param [FFI::Pointer] presbits
    # @param [true, false] fIcon
    # @return [Integer]
    def self.LookupIconIdFromDirectory(presbits, fIcon); end
    attach_function 'LookupIconIdFromDirectory', [:pointer, :bool], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-lookupiconidfromdirectoryex
    # @param [FFI::Pointer] presbits
    # @param [true, false] fIcon
    # @param [Integer] cxDesired
    # @param [Integer] cyDesired
    # @param [Integer] flags
    # @return [Integer]
    def self.LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, flags); end
    attach_function 'LookupIconIdFromDirectoryEx', [:pointer, :bool, :int, :int, LoadResourceFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-privateextracticonsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-privateextracticonsw
    # This function is not intended for general use. It may be altered or unavailable in subsequent versions of Windows.
    # @param [String] lpszFile
    # @param [Integer] nIconIndex
    # @param [Integer] cxIcon
    # @param [Integer] cyIcon
    # @param [FFI::Pointer] phicon
    # @param [FFI::Pointer] piconid
    # @param [Integer] nIcons
    # @param [Integer] flags
    # @return [Integer]
    def self.PrivateExtractIcons(lpszFile, nIconIndex, cxIcon, cyIcon, phicon, piconid, nIcons, flags); end
    encoded_function 'PrivateExtractIcons', [:string, :int, :int, :int, :hicon, :pointer, :uint, LoadResourceFlag], :uint

    if WINDOWS_VERSION >= :vista
      require_relative '../../struct/resource/icon/info_ex'

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfoexa
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-geticoninfoexw
      # @param [FFI::Pointer] hIcon
      # @param [FFI::Pointer] piconinfoex
      # @return [true, false]
      def self.GetIconInfoEx(hIcon, piconinfoex); end
      encoded_function 'GetIconInfoEx', [:hicon, ICONINFOEX.ptr], :bool
    end
  end
end
