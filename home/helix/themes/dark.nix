{
  home.file.".config/helix/themes/dark.toml" = {
    text = ''
      "attribute" = { fg = "blue300" }
      "comment" = { fg = "base01" }
      "constant.builtin" = { fg = "red500", modifiers = ["bold"] }
      "constant.character.escape" = { fg = "orange900", modifiers = ["bold"] }
      "constant.character" = { fg = "cyan500" }
      "constant" = { fg = "red500" }
      "constructor" = { fg = "orange500" }
      "diagnostic.error" = { fg = "red500", bg = "red900",underline = { style = "curl", color = "red900" } }
      "diagnostic.hint" = { fg = "cyan500", bg = "cyan900", underline = { style = "curl", color = "cyan900" } }
      "diagnostic.info" = { fg = "blue500", bg = "blue900", underline = { style = "curl", color = "blue900" } }
      "diagnostic.warning" = { fg = "yellow500", bg = "yellow900", underline = { style = "curl", color = "yellow900" } }
      "diff.delta" = { fg = "orange900" }
      "diff.minus" = { fg = "red900" }
      "diff.plus" = { fg = "green900" }
      "error" = { fg = "red500", modifiers= ["bold", "underlined"] }
      "function.builtin" = { fg = "blue900", modifiers = ["bold"] }
      "function" = { fg = "blue500" }
      "function.macro" = { fg = "magenta900" }
      "function.special" = { fg = "magenta900" }
      "hint" = { fg = "cyan500", modifiers= ["bold", "underlined"] }
      "info" = { fg = "blue500", modifiers= ["bold", "underlined"] }
      "keyword.control.import" = { fg = "green500" }
      "keyword.directive" = { fg = "red500" }
      "keyword" = { fg = "green500" }
      "keyword.function" = { fg = "green500" }
      "keyword.storage.modifier" = { fg = "green500" }
      "keyword.storage.type" = { fg = "green500" }
      "label" = { fg = "green500" }
      "markup.bold" = { fg = "yellow500", modifiers = ["bold"] }
      "markup.heading" = "green300"
      "markup.italic" = { fg = "magentac300", modifiers = ["italic"] }
      "markup.link.text" = "blue300"
      "markup.link.url" = { fg = "yellow300", modifiers = ["underlined"] }
      "markup.list" = "red300"
      "markup.quote" = "cyan300"
      "markup.raw" = "green300"
      "markup.strikethrough" = { modifiers = ["crossed_out"] }
      "module" = { fg = "violet900" }
      "namespace" = { fg = "violet300" }
      "operator" = { fg = "green500" }
      "punctuation.bracket" = { fg = "orange500" }
      "punctuation.delimiter" = { fg = "green500" }
      "punctuation" = { fg = "orange500" }
      "punctuation.special" = { fg = "orange500" }
      "special" = { fg = "orange500" }
      "string" = { fg = "cyan500" }
      "tag" = { fg = "green500" }
      "type.builtin" = { fg = "yellow300", modifiers = ["bold"] }
      "type" = { fg = "yellow300" }
      "ui.background" = {}
      "ui.cursor" = {fg = "base02", bg = "cyan900"}
      "ui.cursor.insert" = {fg = "base04", bg = "base3"}
      "ui.cursorline" = { bg = "base04" }
      "ui.cursorline.primary" = { bg = "base02" }
      "ui.cursorline.secondary" = { bg = "base03" }
      "ui.cursor.match" = { fg = "base04", bg = "base00" }
      "ui.cursor.primary" = { fg = "base04", bg = "base1" }
      "ui.cursor.select" = { fg = "base02", bg = "cyan900" }
      "ui.gutter.selected" = { bg = "base02" }
      "ui.help" = { modifiers = ["reversed"] }
      "ui.highlight" = { fg = "yellow100" }
      "ui.linenr" = { fg = "base01" }
      "ui.linenr.selected" = { fg = "yellow500", modifiers = ["bold"] }
      "ui.menu" = { fg = "base0", bg = "base03" }
      "ui.menu.selected" = { fg = "base02", bg = "base2"}
      "ui.popup" = { fg = "base1", bg = "base02" }
      "ui.popup.info" = {fg = "base02", bg = "base04", modifiers = ["bold"]}
      "ui.selection" = { bg = "base02" }
      "ui.selection.primary" = { bg = "base01" }
      "ui.statusline" = { fg = "base1", bg = "base03" }
      "ui.statusline.inactive" = { fg = "base0", bg = "base04" }
      "ui.statusline.insert" = { fg = "base04", bg = "green500", modifiers = ["bold"]}
      "ui.statusline.normal" = { fg = "base03", bg = "blue500", modifiers = ["bold"]}
      "ui.statusline.select" = { fg = "base04", bg = "yellow500", modifiers = ["bold"]}
      "ui.statusline.seperator" = { bg = "yellow500" }
      "ui.text" = { fg = "base1" }
      "ui.text.focus" = { fg = "blue300", modifiers = ["bold"]}
      "ui.text.inactive" = { fg = "base01" }
      "ui.text.info" = { fg = "base2" }
      "ui.virtual.indent-guide" = { fg = "base02" }
      "ui.virtual.inlay-hint" = { fg = "base01", modifiers = ["italic"] }
      "ui.virtual.ruler" = { fg = "red900" }
      "ui.virtual.whitespace" = { fg = "base01" }
      "ui.window" = { fg = "base3" }
      "variable.builtin" = { fg = "orange500" }
      "variable" = { fg = "base0" }
      "variable.other.member" = { fg = "blue500" }
      "variable.parameter" = { fg = "orange500" }
      "warning" =  { fg = "yellow500", modifiers= ["bold", "underlined"] }

      [palette]
      base04 = "#00141A"
      base03 = "#002d38"
      base02 = "#073541"
      base01 = "#586E74"
      base00 = "#647A82"
      base0 = "#9FABAD"
      base1 = "#ADB8B8"
      base2 = "#EDE7D4"
      base3 = "#FDF6E2"
      base4 = "#FFFFFF"

      yellow900 = "#332700"
      yellow700 = "#664D00"
      yellow500 = "#B58900"
      yellow300 = "#FFC100"
      yellow100 = "#FFE999"

      orange900 = "#5C220A"
      orange700 = "#A13C11"
      orange500 = "#CB4B16"
      orange300 = "#F8520E"
      orange100 = "#FF9468"

      red900 = "#57100F"
      red700 = "#B7211F"
      red500 = "#DC322F"
      red300 = "#F6524F"
      red100 = "#FF9D9B"

      magenta900 = "#541232"
      magenta700 = "#B02669"
      magenta500 = "#D33682"
      magenta300 = "#F255A1"
      magenta100 = "#FF77B9"

      violet900 = "#25285B"
      violet700 = "#494FB6"
      violet500 = "#6C71C4"
      violet300 = "#9CA0ED"
      violet100 = "#CCCFFF"

      blue900 = "#103956"
      blue700 = "#1B6497"
      blue500 = "#268BD2"
      blue300 = "#49AEF5"
      blue100 = "#AADCFF"

      cyan900 = "#103B3D"
      cyan700 = "#1A6265"
      cyan500 = "#2AA198"
      cyan300 = "#29EEDF"
      cyan100 = "#B9FFFA"

      green900 = "#2C3300"
      green700 = "#596600"
      green500 = "#859900"
      green300 = "#BAFB00"
      green100 = "#D6FFAC"
    '';
  };
}
