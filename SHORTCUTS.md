# Vim Configuration Shortcuts

> **Leader** = `\` (default)
> **LocalLeader** = `\` (default, check your config if remapped)

---

## General

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<F1>` | Escape (disable help) |
| Insert | `<F1>` | Escape (disable help) |
| Visual | `<F1>` | Escape (disable help) |
| Insert | `jj` | Escape |
| Insert | `<C-L>` | Insert ` => ` (hash rocket) |
| Insert | `<ESC>f` | Move forward one word (`<C-o>e`) — iTerm2 Alt+Right workaround |
| Command | `<Tab>` | Autocomplete (`<C-L><C-D>`) |

---

## File & Buffer Navigation

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>ff` | Open CtrlP fuzzy file finder |
| Normal | `<LocalLeader>pp` | Open CtrlP fuzzy file finder (alias) |
| Normal | `<LocalLeader>ft` | CtrlP tag search |
| Normal | `<LocalLeader>fb` | CtrlP buffer search |
| Normal | `<LocalLeader>fr` | Clear all CtrlP cache |
| Normal | `<LocalLeader>bd` | Close all buffers (`:bufdo :bd`) |

---

### Inside CtrlP window

| Key | Action |
|-----|--------|
| `<CR>` | Open in current window |
| `<C-X>` / `<C-S>` | Open in horizontal split |
| `<C-V>` | Open in vertical split |
| `<C-T>` | Open in new tab |
| `<C-J>` / `<Down>` | Move selection down |
| `<C-K>` / `<Up>` | Move selection up |
| `<Home>` / `<End>` | Jump to top / bottom |
| `<PageUp>` / `<PageDown>` | Scroll up / down |
| `<C-N>` | Next search history |
| `<C-P>` | Previous search history |
| `<C-F>` / `<C-B>` | Cycle forward / backward through modes |
| `<C-D>` | Toggle filename-only search |
| `<C-R>` | Toggle regex mode |
| `<C-Z>` | Mark file to open |
| `<C-O>` | Open all marked files |
| `<C-Y>` | Create new file |
| `<Tab>` | Expand directory |
| `<C-A>` / `<C-E>` | Move cursor to start / end of prompt |
| `<C-H>` / `<C-L>` | Move cursor left / right in prompt |
| `<C-W>` | Delete word in prompt |
| `<C-U>` | Clear prompt |
| `<F5>` | Clear cache |
| `<F7>` | Delete entry from MRU |
| `<S-Tab>` | Toggle focus between prompt and results |
| `<Esc>` / `<C-C>` | Exit CtrlP |

---

## Tabs

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader><CR>` | Open new tab |
| Normal | `<LocalLeader>[` | Previous tab |
| Normal | `<LocalLeader>]` | Next tab |

---

## Search

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>nh` | Clear search highlight (`:nohls`) |
| Normal | `<LocalLeader><Space>` | Clear search highlight (`:noh`) |
| Normal | `<LocalLeader>aw` | Search word under cursor with Ag |

---

## File Editing

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>ee` | Edit `vimrc` in a new tab |
| Normal | `<LocalLeader>ss` | Reload/source `vimrc` |
| Normal | `<LocalLeader>ww` | Remove all trailing whitespace |
| Normal | `<LocalLeader>ws` | Clear trailing whitespace highlight |
| Normal | `<LocalLeader>rr` | Toggle relative line numbers |

---

## NERDTree

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>nt` | Toggle NERDTree |
| Normal | `<LocalLeader>nr` | Open NERDTree |
| Normal | `<LocalLeader>nf` | Find current file in NERDTree |

### Inside NERDTree window

**Opening files**

| Key | Action |
|-----|--------|
| `o` / `<CR>` | Open file / toggle directory |
| `O` | Open directory recursively |
| `i` | Open in horizontal split |
| `s` | Open in vertical split |
| `t` | Open in new tab |
| `T` | Open in new tab (stay in NERDTree) |
| `e` | Open directory in file explorer |
| `go` | Preview file (stay in NERDTree) |
| `gi` | Preview in split (stay in NERDTree) |
| `gs` | Preview in vsplit (stay in NERDTree) |

**Navigation**

| Key | Action |
|-----|--------|
| `p` | Jump to parent node |
| `P` | Jump to root node |
| `K` | Jump to first child |
| `J` | Jump to last child |
| `<C-j>` | Jump to next sibling |
| `<C-k>` | Jump to previous sibling |

**Tree manipulation**

| Key | Action |
|-----|--------|
| `x` | Close current directory |
| `X` | Close all child directories |
| `u` | Move tree root up one directory |
| `U` | Move root up (keep tree open) |
| `C` | Set selected directory as root |
| `cd` | Change CWD to selected directory |
| `r` | Refresh current directory |
| `R` | Refresh root |
| `m` | Open NERDTree menu (create/delete/rename…) |
| `D` | Delete bookmark |

**Display toggles**

| Key | Action |
|-----|--------|
| `I` | Toggle hidden files |
| `f` | Toggle file filters |
| `F` | Toggle file display |
| `B` | Toggle bookmarks |
| `A` | Zoom NERDTree window |
| `?` | Toggle help |
| `q` | Close NERDTree |

---

## Vimux

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<Leader>vq` | Close Vimux runner pane |
| Normal | `<Leader>rl` | Save all and re-run last Vimux command |
| Normal | `<LocalLeader>qw` | Display a random quote in a Vimux pane (vimux-quotewall) |

---

## YankRing

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>yr` | Show YankRing history |

### Inside YankRing window

| Key | Action |
|-----|--------|
| `<CR>` / `p` | Paste selected entry |
| `P` | Paste before cursor |
| `[p` / `]p` | Paste with indent adjust |
| `gp` / `gP` | Paste leaving cursor after text |
| `d` | Delete entry from ring |
| `r` | Replace current paste with entry (visual) |
| `s` | Sort ring |
| `a` | Append entries |
| `c` | Clear ring |
| `u` | Undo last paste |
| `R` | Refresh ring display |
| `q` | Close window |
| `?` | Show help |
| `1`–`9` | Paste nth entry and close window |
| `<Space>` | Resize window |

---

## Comments (tComment)

### Custom mappings (from vimrc)

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>cc` | Toggle comment |
| Normal | `<LocalLeader>uc` | Toggle comment (alias) |

### tComment built-in defaults

`<C-_>` = Ctrl+/ — `<Leader>_` = `\` + `_`

| Mode | Key | Action |
|------|-----|--------|
| Normal/Visual/Insert | `<C-_><C-_>` | Toggle comment |
| Visual | `<C-_>i` | Inline comment |
| Normal/Insert | `<C-_>r` | Comment to the right (inline) |
| Normal/Insert | `<C-_>p` | Comment paragraph |
| Normal/Insert | `<C-_>b` | Block comment |
| Normal/Insert | `<C-_>a` | Comment as filetype… |
| Normal/Insert | `<C-_>n` | Comment as current filetype with count |
| Normal/Insert | `<C-_>s` | Comment as sub-filetype |
| Normal | `<Leader>__` | Toggle comment |
| Visual | `<Leader>_i` | Inline comment |
| Normal | `<Leader>_r` | Comment to the right |
| Normal | `<Leader>_p` | Comment paragraph |
| Normal | `<Leader>_b` | Block comment |
| Normal | `<Leader>_a` | Comment as filetype… |
| Normal | `gc<motion>` | Toggle comment (operator) |
| Normal | `gcc` | Toggle comment on current line |
| Normal | `gC<motion>` | Force comment (operator) |
| Normal | `gCc` | Force comment on current line |

---

## Tags & Diffs

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>rt` | Regenerate ctags recursively |
| Normal | `<LocalLeader>gd` | Open `git diff` in a buffer |
| Normal | `<LocalLeader>pd` | Open `svn diff` in a buffer |

---

## Clojure

### General (vimrc)

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>cj` | Run current file with `clj` |

### vimclojure (Clojure files, requires Nailgun server)

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>lw` | Look up docs for word under cursor |
| Normal | `<LocalLeader>li` | Look up docs interactively |
| Normal | `<LocalLeader>jw` | Javadoc for word under cursor |
| Normal | `<LocalLeader>ji` | Javadoc interactively |
| Normal | `<LocalLeader>fd` | Find docs (search) |
| Normal | `<LocalLeader>mw` | Meta lookup for word under cursor |
| Normal | `<LocalLeader>mi` | Meta lookup interactively |
| Normal | `<LocalLeader>sw` | Source lookup for word under cursor |
| Normal | `<LocalLeader>si` | Source lookup interactively |
| Normal | `<LocalLeader>gw` | Go to source for word under cursor |
| Normal | `<LocalLeader>gi` | Go to source interactively |
| Normal | `<LocalLeader>rf` | Require/reload file |
| Normal | `<LocalLeader>rF` | Require/reload file (all) |
| Normal | `<LocalLeader>rt` | Run tests |
| Normal | `<LocalLeader>me` | Macro expand |
| Normal | `<LocalLeader>m1` | Macro expand once |
| Normal | `<LocalLeader>ef` | Evaluate file |
| Normal | `<LocalLeader>el` | Evaluate line |
| Visual | `<LocalLeader>eb` | Evaluate block |
| Normal | `<LocalLeader>et` | Evaluate top-level form |
| Normal | `<LocalLeader>ep` | Evaluate paragraph |
| Normal | `<LocalLeader>sr` | Start REPL |
| Normal | `<LocalLeader>sR` | Start local namespace REPL |
| Normal | `<LocalLeader>p` | Close result buffer |

### vimclojure REPL (insert mode)

| Key | Action |
|-----|--------|
| `<CR>` | Submit REPL input |
| `<C-Up>` | Previous REPL history |
| `<C-Down>` | Next REPL history |

---

## vim-fugitive (v3.4)

Available in all Git-managed buffers. Open the status buffer with `:Git` (or `:G`).

### Navigation (diff / object buffers)

| Key | Action |
|-----|--------|
| `<CR>` | Open file/object under cursor |
| `o` | Open in split |
| `O` | Open in new tab |
| `gO` | Open in vertical split |
| `p` | Open in preview window |
| `-` | Navigate up to parent tree |
| `P` | Open `HEAD^N` (Nth parent) |
| `~` | Open `HEAD~N` (Nth ancestor) |
| `C` | Open containing commit |
| `gc` / `gC` | Preview containing commit |
| `gi` | Open `.gitignore` (or `.git/info/exclude` with count) |
| `.` | Populate command line with file path |
| `(` / `)` | Previous / next item |
| `[c` / `]c` | Previous / next hunk |
| `[/` / `]/` | Previous / next file in diff |
| `[[` / `]]` | Previous / next section |
| `K` | Previous hunk |
| `J` | Next hunk |
| `*` / `#` | Search for this patch text (normal/visual/operator) |
| `g?` / `<F1>` | Open fugitive help |
| `gq` | Close fugitive buffer |

### Stage / diff (`:Git` status buffer)

| Key | Action |
|-----|--------|
| `-` / `a` | Toggle stage/unstage file |
| `s` | Stage file |
| `u` | Unstage file |
| `U` | Unstage all (`git reset -q`) |
| `P` | Stage patch (interactive, visual: range) |
| `I` | Stage patch for current line |
| `=` | Toggle inline diff for file |
| `<` | Hide inline diff |
| `>` | Show inline diff |
| `i` | Expand next hunk inline |
| `X` | Discard change |
| `gI` | Add file to `.gitignore` |
| `dd` | Diff file (split) |
| `dh` / `ds` | Diff against HEAD (horizontal split) |
| `dv` | Diff against index (vertical split) |
| `dp` | Diff edit (patch mode) |
| `dq` | Close all diff windows |
| `d?` | Diff help |
| `gq` | Close status buffer |
| `.` | Populate command line with file path |

**Section jumps**

| Key | Action |
|-----|--------|
| `gu` | Jump to Untracked / Unstaged section |
| `gU` | Jump to Unstaged / Untracked section |
| `gs` | Jump to Staged section |
| `gp` | Jump to Unpushed section |
| `gP` | Jump to Unpulled section |
| `gr` | Jump to Rebasing section |

### Commit (`c` prefix)

| Key | Action |
|-----|--------|
| `cc` | Commit |
| `ca` | Amend last commit |
| `ce` | Amend without editing message |
| `cw` | Amend message only |
| `cv<CR>` | Commit with verbose diff in tab |
| `cva` | Amend with verbose diff in tab |
| `cvc` | Commit with verbose diff in tab |
| `cf` | Fixup commit (commit --fixup) |
| `cF` | Fixup and autosquash rebase |
| `cs` | Squash commit |
| `cS` | Squash and autosquash rebase |
| `cA` | Squash with edit |
| `cRa` / `cRe` / `cRw` | Reset-author variants of amend |
| `c?` | Commit help |

### Revert (`cr` prefix)

| Key | Action |
|-----|--------|
| `crc` | Revert commit under cursor |
| `crn` | Revert without committing |
| `cr?` | Revert help |

### Checkout (`co` prefix)

| Key | Action |
|-----|--------|
| `coo` | Checkout file at commit under cursor |
| `co?` | Checkout help |

### Branch (`cb` prefix)

| Key | Action |
|-----|--------|
| `cb<Space>` | `:Git branch ` (fill in name) |
| `cb?` | Branch help |

### Stash (`cz` prefix)

| Key | Action |
|-----|--------|
| `czz` | Stash |
| `czw` | Stash keeping index |
| `cza` | Apply stash (with index) |
| `czA` | Apply stash (no index) |
| `czp` | Pop stash (with index) |
| `czP` | Pop stash (no index) |
| `czv` | View stash as object |
| `cz?` | Stash help |

### Rebase (`r` prefix)

| Key | Action |
|-----|--------|
| `ri` | Interactive rebase |
| `rf` | Interactive rebase with autosquash |
| `ru` | Interactive rebase onto `@{upstream}` |
| `rp` | Interactive rebase onto `@{push}` |
| `rw` | Rebase and mark commit as `reword` |
| `rm` | Rebase and mark commit as `edit` |
| `rd` / `rk` / `rx` | Rebase and mark commit as `drop` |
| `rr` | Continue rebase |
| `rs` | Skip current commit |
| `re` | Edit rebase todo |
| `ra` | Abort rebase |
| `r?` | Rebase help |

### Merge (`cm` prefix)

| Key | Action |
|-----|--------|
| `cmt` | `:Git mergetool` |
| `cm?` | Merge help |

### Blame buffer

| Key | Action |
|-----|--------|
| `<CR>` / `o` | Open blame for commit in current window / split |
| `O` | Open blame in new tab |
| `gO` | Open blame in vertical split |
| `p` | Open blame in preview |
| `~` / `P` | Navigate to Nth ancestor / parent |

---

## Ruby (loaded for `.rb` files via `ruby_mappings.vim`)

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<LocalLeader>rb` | Save all and run all Ruby tests |
| Normal | `<LocalLeader>rc` | Save all and run focused test context |
| Normal | `<LocalLeader>rf` | Save all and run focused unit test |
| Normal | `<LocalLeader>rs` | Run Ruby syntax check (`ruby -c`) |
| Normal | `<LocalLeader>rd` | Insert `require 'ruby-debug'; debugger` above cursor |

---

## BufExplorer

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<Leader>be` | Open buffer explorer |
| Normal | `<Leader>bs` | Open buffer explorer (horizontal split) |
| Normal | `<Leader>bv` | Open buffer explorer (vertical split) |

### Inside BufExplorer window

| Key | Action |
|-----|--------|
| `<CR>` / `o` | Open buffer |
| `t` | Open buffer in new tab |
| `d` | Delete buffer |
| `D` | Wipe buffer |
| `s` | Cycle sort order |
| `r` | Reverse sort |
| `q` | Close explorer |
| `p` | Toggle path display |
| `R` | Toggle relative paths |
| `u` | Toggle unlisted buffers |
| `f` | Toggle find active buffer |
| `<F1>` | Toggle help |

---

## vim-surround

| Mode | Key | Action |
|------|-----|--------|
| Normal | `ds<char>` | Delete surrounding characters |
| Normal | `cs<old><new>` | Change surrounding characters |
| Normal | `ys<motion><char>` | Add surrounding characters |
| Normal | `yS<motion><char>` | Add surrounding with indent/newlines |
| Normal | `yss<char>` | Surround entire line |
| Normal | `ySs<char>` / `ySS<char>` | Surround entire line with indent/newlines |
| Visual | `S<char>` | Surround selection |
| Visual | `gS<char>` | Surround selection with newlines |
| Insert | `<C-S><char>` | Insert surrounding |
| Insert | `<C-G>s<char>` | Insert surrounding (alternate) |
| Insert | `<C-G>S<char>` | Insert surrounding with newlines |

---

## vim-ruby (normal mode, Ruby files)

| Key | Action |
|-----|--------|
| `[m` | Jump to start of previous method |
| `]m` | Jump to start of next method |
| `[M` | Jump to end of previous method |
| `]M` | Jump to end of next method |
| `[[` | Jump to start of previous class/module |
| `]]` | Jump to start of next class/module |
| `[]` | Jump to end of previous class/module |
| `][` | Jump to end of next class/module |

### Text objects (Ruby)

| Key | Action |
|-----|--------|
| `im` | Inside method |
| `am` | Around method |
| `iM` | Inside class/module |
| `aM` | Around class/module |

### Text objects — vim-textobj-rubyblock (Ruby files)

| Key | Action |
|-----|--------|
| `ir` | Inside Ruby block (`def`/`if`/`do`/`module`/`class`…`end`) |
| `ar` | Around Ruby block (includes the `end` line) |

---

## vim-fireplace (Clojure REPL)

| Key | Action |
|-----|--------|
| `cp<motion>` | Evaluate and print result |
| `cpp` | Evaluate paragraph and print |
| `c!<motion>` | Evaluate and replace with result |
| `c!!` | Evaluate paragraph and replace |
| `cm<motion>` | Macro expand |
| `cmm` | Macro expand paragraph |
| `c1m<motion>` | Macro expand once |
| `c1mm` | Macro expand once (paragraph) |
| `cq` | Edit expression at point in command window |
| `cqq` | Edit paragraph in command window |
| `cqp` | Open REPL prompt |
| `cpr` | Require/reload namespace |
| `K` | Look up documentation |
| `[d` / `]d` | Show source of symbol under cursor |
| `[<C-D>` / `]<C-D>` | Jump to definition |
| `<C-W><C-D>` / `<C-W>d` | Jump to definition in split |
| `<C-W>gd` | Jump to definition in new tab |
| `gf` | Go to file for namespace under cursor |
| `<C-W>f` / `<C-W><C-F>` | Go to file in split |
| `<C-W>gf` | Go to file in new tab |
| `q` | Close result buffer |

---

## vim-endwise (Ruby/shell files, insert mode)

| Key | Action |
|-----|--------|
| `<CR>` | Insert newline, auto-add `end` where appropriate |
| `<C-X><CR>` | Insert newline and always add `end` |
| `<M-o>` | Open new line below without triggering endwise |

---

## vim-vroom (test runner)

| Mode | Key | Action |
|------|-----|--------|
| Normal | `<Leader>r` | Run current test file |
| Normal | `<Leader>R` | Run nearest test to cursor |

---

## vim-markdown (Markdown files)

| Mode | Key | Action |
|------|-----|--------|
| Normal/Visual | `]]` | Next header |
| Normal/Visual | `[[` | Previous header |
| Normal/Visual | `][` | Next sibling header |
| Normal/Visual | `[]` | Previous sibling header |
| Normal/Visual | `]u` | Go to parent header |
| Normal/Visual | `]c` | Go to current header |
| Normal | `gx` | Open URL under cursor |
| Normal | `ge` | Open URL under cursor for editing |

---

## vim-rails

### File navigation (Rails files)

| Key | Action |
|-----|--------|
| `gf` | Go to file under cursor (Rails-aware) |
| `<C-W>f` / `<C-W><C-F>` | Go to file in split |
| `<C-W>gf` | Go to file in new tab |
| `<C-R><C-F>` | (Command mode) Insert Rails-aware filename at cursor |

### Log buffer

| Key | Action |
|-----|--------|
| `R` | Reload log |
| `q` | Close log buffer |

---

## vim-cucumber

| Key | Action |
|-----|--------|
| `<C-]>` | Jump to step definition |
| `<C-W>]` | Jump to step definition in split |
| `<C-W>}` | Preview step definition |

---

## ragtag (HTML/template files, insert mode)

| Key | Action |
|-----|--------|
| `<C-X>!` | Insert DOCTYPE |
| `<C-X>#` | Insert meta content-type tag |
| `<C-X>H` | HTML omni-complete |
| `<C-X>$` | Insert JavaScript `<script>` include tag |
| `<C-X>@` | Insert CSS `<link>` stylesheet tag |
| `<C-X><Space>` | Wrap word under cursor in a tag |
| `<C-X><CR>` | Wrap word under cursor in a block tag (with newline) |
| `<C-X>/` | Close open tag |
| `<C-X><C-_>` | Close open tag (alias) |
| `<C-X>=` | Insert expression tag (ERB `<%= %>`) |
| `<C-X>+` | Insert multi-line expression tag |
| `<C-X>-` | Insert statement tag (ERB `<% %>`) |
| `<C-X>_` | Insert multi-line statement tag |
| `<C-X>'` | Insert inline comment tag |
| `<C-X>"` | Insert block comment tag |
| `<C-X>%` | Toggle URL encoding of next character |
| `<C-X>&` | Toggle XML encoding of next character |
| `<C-V>%` | Insert URL-encoded character by code |
| `<C-V>&` | Insert XML character entity by code |
| `<C-X><` | Insert template open bracket (e.g. `<%`, `{%`, `<?php`) |
| `<C-X>>` | Insert template close bracket |
| `<C-X>]` | Insert script block tag |

---

## Gundo (undo tree)

Open with `:GundoToggle`. Inside the Gundo window:

| Key | Action |
|-----|--------|
| `<CR>` / `o` | Revert to selected undo state |
| `<Up>` / `<Down>` | Move through undo history |
| `gg` | Go to top and move |
| `p` | Preview diff of selected change |
| `P` | Play back changes to selected state |
| `r` | Re-render preview |
| `q` | Close Gundo |

---

## camelcasemotion

Default keys use `,` as the prefix:

| Mode | Key | Action |
|------|-----|--------|
| Normal/Visual | `,w` | Move forward to next CamelCase/snake_case word |
| Normal/Visual | `,b` | Move backward to previous CamelCase/snake_case word |
| Normal/Visual | `,e` | Move to end of CamelCase/snake_case word |
| Operator/Visual | `i,w` | Inner CamelCase word text object |
| Operator/Visual | `i,b` | Inner CamelCase word (backward) text object |
| Operator/Visual | `i,e` | Inner CamelCase word (end) text object |

---

## align_maps

> Mark start of region with `'a`, then move to end and press the map. Or use linewise visual (`V`) to select, then press the map.
> **`T`** = right-justify to character, **`t`** = left-justify to character, **`ts`** = left-justify with separator swap.

### C / general alignment

| Key | Action |
|-----|--------|
| `<Leader>a=` | Align assignments (`=`, `:=`, etc.) |
| `<Leader>a,` | Align comma-separated declarations |
| `<Leader>a<` | Align `<<`/`>>` (C++ streams) |
| `<Leader>a?` | Align `?`/`:` ternary operators |
| `<Leader>a(` | Align on `[`/`(` open brackets |
| `<Leader>adec` | Align C declarations |
| `<Leader>adef` | Align `#define` statements |
| `<Leader>afnc` | Align function arguments |
| `<Leader>abox` | Wrap selection in a `/* ... */` box |
| `<Leader>acom` | Align C comments (`/* */`) |
| `<Leader>adcom` | Align non-comment code + inline comments |
| `<Leader>aocom` | Align only comments |
| `<Leader>ascom` | Align single-line comments |
| `<Leader>anum` | Align numbers (USA decimal style) |
| `<Leader>aunum` | Align numbers (USA style, explicit) |
| `<Leader>aenum` | Align numbers (Euro/comma decimal style) |
| `<Leader>m=` | Align `=` in mixed statements |
| `<Leader>w=` | Align `=` (with surrounding comment alignment) |
| `<Leader>Htd` | Align HTML `<tr><td>` table cells |

### Right-justify to character (`T`)

| Key | Character |
|-----|-----------|
| `<Leader>T\|` | `\|` (pipe) |
| `<Leader>T#` | `#` |
| `<Leader>T,` | `,` |
| `<Leader>Ts,` | `,` (swap trailing spaces) |
| `<Leader>T:` | `:` |
| `<Leader>T;` | `;` |
| `<Leader>T<` | `<` |
| `<Leader>T=` | `=` |
| `<Leader>T?` | `?` |
| `<Leader>T@` | `@` |
| `<Leader>T~` | `~` |
| `<Leader>Tab` | tab character |
| `<Leader>Tsp` | whitespace |

### Left-justify to character (`t`)

| Key | Character |
|-----|-----------|
| `<Leader>t\|` | `\|` (pipe) |
| `<Leader>t#` | `#` |
| `<Leader>t,` | `,` |
| `<Leader>ts,` | `,` (swap) |
| `<Leader>t:` | `:` |
| `<Leader>ts:` | `:` (swap) |
| `<Leader>t;` | `;` |
| `<Leader>ts;` | `;` (swap) |
| `<Leader>t<` | `<` |
| `<Leader>ts<` | `<` (swap) |
| `<Leader>t=` | `=` |
| `<Leader>ts=` | `=` (swap) |
| `<Leader>t?` | `?` |
| `<Leader>t@` | `@` |
| `<Leader>t~` | `~` |
| `<Leader>tab` | tab character |
| `<Leader>tml` | trailing `\` (multiline macros) |
| `<Leader>tsp` | whitespace |
| `<Leader>tsq` | whitespace (respecting quoted strings) |
| `<Leader>tt` | `&` (LaTeX tables) |

---

## SQLUtilities

| Mode | Key | Action |
|------|-----|--------|
| Normal/Visual | `<Leader>sfr` | Format SQL |
| Normal/Visual | `<Leader>sf` | Format SQL (shorthand) |
| Normal/Visual | `<Leader>scl` | Create column list |
| Normal/Visual | `<Leader>scd` | Get column definition |
| Normal/Visual | `<Leader>scdt` | Get column data type |
| Normal/Visual | `<Leader>scp` | Create stored procedure |
