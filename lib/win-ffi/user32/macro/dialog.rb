module WinFFI
  module User32
    class << self
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645434(v=vs.85).aspx
      # HWND WINAPI CreateDialog(
      #   _In_opt_ HINSTANCE hInstance,
      #   _In_     LPCTSTR   lpTemplate,
      #   _In_opt_ HWND      hWndParent,
      #   _In_opt_ DLGPROC   lpDialogFunc)
      def self.CreateDialog(hInstance, lpName, hParent, lpDialogFunc)
        CreateDialogParam(hInstance, lpName, hParent, lpDialogFunc, 0)
      end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645436(v=vs.85).aspx
      # HWND WINAPI CreateDialogIndirect(
      #   _In_opt_ HINSTANCE      hInstance,
      #   _In_     LPCDLGTEMPLATE lpTemplate,
      #   _In_opt_ HWND           hWndParent,
      #   _In_opt_ DLGPROC        lpDialogFunc)
      def self.CreateDialogIndirect(hInst, lpTemp, hPar, lpDialFunc)
        CreateDialogIndirectParam(hInst, lpTemp, hPar, lpDialFunc, 0)
      end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645452(v=vs.85).aspx
      # INT_PTR WINAPI DialogBox(
      #   _In_opt_ HINSTANCE hInstance,
      #   _In_     LPCTSTR   lpTemplate,
      #   _In_opt_ HWND      hWndParent,
      #   _In_opt_ DLGPROC   lpDialogFunc)
      def self.DialogBox(hInstance, lpTemp, hParent, lpDialogFunc)
        DialogBoxParam(hInstance, lpTemp, hParent, lpDialogFunc, 0)
      end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645457(v=vs.85).aspx
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
end