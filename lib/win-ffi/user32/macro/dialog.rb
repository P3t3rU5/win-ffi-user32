require_relative '../function/window/dialog'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialoga
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogw
    # HWND WINAPI CreateDialog(
    #   _In_opt_ HINSTANCE hInstance,
    #   _In_     LPCTSTR   lpTemplate,
    #   _In_opt_ HWND      hWndParent,
    #   _In_opt_ DLGPROC   lpDialogFunc)
    def self.CreateDialog(hInstance, lpName, hParent, lpDialogFunc)
      CreateDialogParam(hInstance, lpName, hParent, lpDialogFunc, 0)
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createdialogindirectw
    # HWND WINAPI CreateDialogIndirect(
    #   _In_opt_ HINSTANCE      hInstance,
    #   _In_     LPCDLGTEMPLATE lpTemplate,
    #   _In_opt_ HWND           hWndParent,
    #   _In_opt_ DLGPROC        lpDialogFunc)
    def self.CreateDialogIndirect(hInst, lpTemp, hPar, lpDialFunc)
      CreateDialogIndirectParam(hInst, lpTemp, hPar, lpDialFunc, 0)
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxw
    # INT_PTR WINAPI DialogBox(
    #   _In_opt_ HINSTANCE hInstance,
    #   _In_     LPCTSTR   lpTemplate,
    #   _In_opt_ HWND      hWndParent,
    #   _In_opt_ DLGPROC   lpDialogFunc)
    def self.DialogBox(hInstance, lpTemp, hParent, lpDialogFunc)
      DialogBoxParam(hInstance, lpTemp, hParent, lpDialogFunc, 0)
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirecta
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-dialogboxindirectw
    # INT_PTR WINAPI DialogBoxIndirect(
    #   _In_opt_ HINSTANCE      hInstance,
    #   _In_     LPCDLGTEMPLATE lpTemplate,
    #   _In_opt_ HWND           hWndParent,
    #   _In_opt_ DLGPROC        lpDialogFunc)
    def self.DialogBoxIndirect(hInst, lpTemp, hParent, lpDialogFunc)
      DialogBoxIndirectParam(hInst, lpTemp, hParent, lpDialogFunc, 0)
    end
  end
end