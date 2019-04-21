module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-edit-control-reference-messages
    buffer = [
        :GETSEL,               0x00B0,
        :SETSEL,               0x00B1,
        :GETRECT,              0x00B2,
        :SETRECT,              0x00B3,
        :SETRECTNP,            0x00B4,
        :SCROLL,               0x00B5,
        :LINESCROLL,           0x00B6,
        :SCROLLCARET,          0x00B7,
        :GETMODIFY,            0x00B8,
        :SETMODIFY,            0x00B9,
        :GETLINECOUNT,         0x00BA,
        :LINEINDEX,            0x00BB,
        :SETHANDLE,            0x00BC,
        :GETHANDLE,            0x00BD,
        :GETTHUMB,             0x00BE,
        :LINELENGTH,           0x00C1,
        :REPLACESEL,           0x00C2,
        :GETLINE,              0x00C4,
        :LIMITTEXT,            0x00C5,  # win40 Name change        :LIMITTEXT,            0x00C5,
        :CANUNDO,              0x00C6,
        :UNDO,                 0x00C7,
        :FMTLINES,             0x00C8,
        :LINEFROMCHAR,         0x00C9,
        :SETTABSTOPS,          0x00CB,
        :SETPASSWORDCHAR,      0x00CC,
        :EMPTYUNDOBUFFER,      0x00CD,
        :GETFIRSTVISIBLELINE,  0x00CE,
        :SETREADONLY,          0x00CF,
        :SETWORDBREAKPROC,     0x00D0,
        :GETWORDBREAKPROC,     0x00D1,
        :GETPASSWORDCHAR,      0x00D2,
        :SETMARGINS,           0x00D3,
        :GETMARGINS,           0x00D4,
        :SETLIMITTEXT,         0x00C5,  # win40 Name change        :LIMITTEXT,            0x00C5,
        :GETLIMITTEXT,         0x00D5,
        :POSFROMCHAR,          0x00D6,
        :CHARFROMPOS,          0x00D7,
        :SETIMESTATUS,         0x00D8,
        :GETIMESTATUS,         0x00D9,

        # WM_USER + 50
        :CANPASTE,           0x0432,
        :DISPLAYBAND,        0x0433,
        :EXGETSEL,           0x0434,
        :EXLIMITTEXT,        0x0435,
        :EXLINEFROMCHAR,     0x0436,
        :EXSETSEL,           0x0437,
        :FINDTEXT,           0x0438,
        :FORMATRANGE,        0x0439,
        :GETCHARFORMAT,      0x043A,
        :GETEVENTMASK,       0x043B,
        :GETOLEINTERFACE,    0x043C,
        :GETPARAFORMAT,      0x043D,
        :GETSELTEXT,         0x043E,
        :HIDESELECTION,      0x043F,
        :PASTESPECIAL,       0x0440,
        :REQUESTRESIZE,      0x0441,
        :SELECTIONTYPE,      0x0442,
        :SETBKGNDCOLOR,      0x0443,
        :SETCHARFORMAT,      0x0444,
        :SETEVENTMASK,       0x0445,
        :SETOLECALLBACK,     0x0446,
        :SETPARAFORMAT,      0x0447,
        :SETTARGETDEVICE,    0x0448,
        :STREAMIN,           0x0449,
        :STREAMOUT,          0x044A,
        :GETTEXTRANGE,       0x044B,
        :FINDWORDBREAK,      0x044C,
        :SETOPTIONS,         0x044D,
        :GETOPTIONS,         0x044E,
        :FINDTEXTEX,         0x044F,

        :GETWORDBREAKPROCEX, 0x0450,
        :SETWORDBREAKPROCEX, 0x0451,

        # RichEdit 2.0 messages
        :SETUNDOLIMIT,     0x0452,
        :REDO,             0x0454,
        :CANREDO,          0x0455,
        :GETUNDONAME,      0x0456,
        :GETREDONAME,      0x0457,
        :STOPGROUPTYPING,  0x0458,
        :SETTEXTMODE,      0x0459,
        :GETTEXTMODE,      0x045A,

        :AUTOURLDETECT,    0x045B,

        :GETAUTOURLDETECT, 0x045C,
        :SETPALETTE,       0x045D,
        :GETTEXTEX,        0x045E,
        :GETTEXTLENGTHEX,  0x045F,
        :SHOWSCROLLBAR,    0x0460,
        :SETTEXTEX,        0x0461,

        # East Asia specific messages
        :SETPUNCTUATION,  0x0464,
        :GETPUNCTUATION,  0x0465,
        :SETWORDWRAPMODE, 0x0466,
        :GETWORDWRAPMODE, 0x0467,
        :SETIMECOLOR,     0x0468,
        :GETIMECOLOR,     0x0469,
        :SETIMEOPTIONS,   0x046A,
        :GETIMEOPTIONS,   0x046B,
        :CONVPOSITION,    0x046C,

        :SETLANGOPTIONS,  0x0478,
        :GETLANGOPTIONS,  0x0479,
        :GETIMECOMPMODE,  0x047A,
        :FINDTEXTW,       0x047B,
        :FINDTEXTEXW,     0x047C,

        # RE3.0 FE messages
        :RECONVERSION,    0x047D,
        :SETIMEMODEBIAS,  0x047E,
        :GETIMEMODEBIAS,  0x047F,

        # BiDi specific messages
        :SETBIDIOPTIONS,       0x04C8,
        :GETBIDIOPTIONS,       0x04C9,

        :SETTYPOGRAPHYOPTIONS, 0x04CA,
        :GETTYPOGRAPHYOPTIONS, 0x04CB,

        # Extended edit style specific messages
        :SETEDITSTYLE, 0x04CC,
        :GETEDITSTYLE, 0x04CD,

        # Pegasus outline mode messages (RE 3.0)
        # Outline mode message
        :OUTLINE,      0x04DC,
        # Message for getting and restoring scroll pos
        :GETSCROLLPOS, 0x04DE,
        :SETSCROLLPOS, 0x04DF,
        # Change fontsize in current selection by wParam
        :SETFONTSIZE,  0x04E0,
        :GETZOOM,      0x04E1,
        :SETZOOM,      0x04E2,
        :GETVIEWKIND,  0x04E3,
        :SETVIEWKIND,  0x04E4,

        # RichEdit 4.0 messages
        :GETPAGE,          0x04E5,
        :SETPAGE,          0x04E6,
        :GETHYPHENATEINFO, 0x04E7,
        :SETHYPHENATEINFO, 0x04E8,

        :GETPAGEROTATE,    0x04EB,
        :SETPAGEROTATE,    0x04EC,
        :GETCTFMODEBIAS,   0x04ED,
        :SETCTFMODEBIAS,   0x04EE,
        :GETCTFOPENSTATUS, 0x04F0,
        :SETCTFOPENSTATUS, 0x04F1,
        :GETIMECOMPTEXT,   0x04F2,
        :ISIME,            0x04F3,
        :GETIMEPROPERTY,   0x04F4,

        :GETQUERYRTFOBJ,   0x050D,
        :SETQUERYRTFOBJ,   0x050E,

        :NOSETFOCUS,       0x1507,
        :TAKEFOCUS,        0x1508
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [
        :FIRST,          0x1500,
        :SETCUEBANNER,   0x1501,
        :GETCUEBANNER,   0x1502,
        :SHOWBALLOONTIP, 0x1503,
        :HIDEBALLOONTIP, 0x1504
      ]

      if WINDOWS_VERSION >= :vista
        buffer += [:SETHILITE, 0x1505, :GETHILITE, 0x1506]

        if WINDOWS_VERSION >= 8 # New messages as of Win8
          buffer += [
              :INSERTTABLE,         0x04E8,

              :GETAUTOCORRECTPROC,  0x04E9,
              :SETAUTOCORRECTPROC,  0x04EA,
              :CALLAUTOCORRECTPROC, 0x04EB,

              :GETTABLEPARMS,       0x0509,

              :SETEDITSTYLEEX,      0x0513,
              :GETEDITSTYLEEX,      0x0514,

              :GETSTORYTYPE,        0x0522,
              :SETSTORYTYPE,        0x0523,

              :GETELLIPSISMODE,     0x0531,
              :SETELLIPSISMODE,     0x0532,

              :SETTABLEPARMS,       0x0533,

              :GETTOUCHOPTIONS,     0x0536,
              :SETTOUCHOPTIONS,     0x0537,
              :INSERTIMAGE,         0x053A,
              :SETUIANAME,          0x0540,
              :GETELLIPSISSTATE,    0x0542
          ]
          buffer += [:ENABLEFEATURE, 0x00DA] if WINDOWS_VERSION >= 8.1
        end
      end
    end

    # Edit Control Messages
    EditMessage = enum :edit_message, buffer

    define_prefix(:EM, EditMessage)
  end
end
