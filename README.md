# ⚡ Neovim Setup — Dependencies & Configuration

> A quick-reference guide for getting all plugins and tools working correctly.

---

## 📋 Table of Contents

- [Greek Spellfile](#-greek-spellfile)
- [Treesitter Parser](#-treesitter-parser)
- [Telescope live\_grep](#-telescope-live_grep)
- [DBee](#-dbee)
- [CDS LSP](#-cds-lsp)

---

## 🔤 Greek Spellfile

Copy the Greek spell file into Neovim's spell directory:

```bash
cp spellfiles/el2.utf-8.spl ~/.local/share/nvim/site/spell
```

---

## 🌳 Treesitter Parser

Install the Tree-sitter CLI globally via npm:

```bash
npm install -g tree-sitter
```

---

## 🔭 Telescope `live_grep`

Telescope's `live_grep` requires **ripgrep** to be installed on your system.

#### Arch Linux

```bash
sudo pacman -S ripgrep
```

#### Ubuntu / Debian

```bash
sudo apt-get install ripgrep
```

---

## 📦 CDS LSP

Install the SAP CDS language server globally via npm:

```bash
npm i -g @sap/cds-lsp
```

---

## 🗂 Summary Table

| Plugin / Feature     | Dependency          | Install Method         |
|----------------------|---------------------|------------------------|
| Greek Spellcheck     | `el2.utf-8.spl`     | `cp` to spell dir      |
| Treesitter           | `tree-sitter` CLI   | `npm install -g`       |
| Telescope `live_grep`| `ripgrep`           | `pacman` / `apt-get`   |
| DBee                 | `go`                | `pacman` / [go.dev](https://go.dev/dl/) |
| CDS LSP              | `@sap/cds-lsp`      | `npm install -g`       |
