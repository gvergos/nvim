return {
    cmd = {
        "clangd",
        "--fallback-style={IndentWidth: 4, TabWidth: 4, UseTab: ForIndentation, IndentBraces: true}"
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = { "package.json" }
}
