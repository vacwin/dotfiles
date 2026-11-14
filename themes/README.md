# themes

Единственное место, где живут цвета — `<name>.conf`. Всё остальное
(`waybar/colors-*.css`, `swaync/colors-*.css`, `tofi/colors-*`,
`hyprlock/colors-*.conf`, `cava/config-*`, `ghostty/themes/<name>-*`,
`tmux/themes/<name>-*.conf`, `zsh/themes/<name>-*.zsh`, `ly/config.ini`,
`nvim/colors/<name>.vim`, `hypr/lua/cfg/palette.lua`) генерируется из него скриптом
`scripts/theme` — руками эти файлы не правят.

## Поменять цвет

1. Открой `themes/mono.conf`, поправь hex-значения (dark и light).
2. Примени:

```sh
theme sync      # перегенерировать и применить текущий light/dark
theme toggle    # или переключить режим (SUPER+SHIFT+.)
```

`theme render` только перегенерирует файлы, ничего не применяя.

## Токены

| токен | назначение |
|---|---|
| `bg` | фон терминала, бара, панелей |
| `bg_raised` | пилюли, поповеры, выделенные строки |
| `bg_hover` | hover, selection, cursorline |
| `border` | рамки, разделители |
| `ash` | самый приглушённый текст, неактивное |
| `slate` | комментарии, вторичное служебное |
| `steel` | подписи |
| `dim` | третичный текст |
| `silver` | почти основной текст |
| `fg` | основной текст |
| `teal` | вторичный акцент |
| `frost` | главный акцент (активный бордер, фокус) |
| `urgent` | критическое состояние |
| `root` | единственный цветной акцент: промпт root (чтобы не путать с юзером) |

`<mode>_ansi[0..15]` — палитра терминала для `ls`/`git`/fzf; в монохроме
это градации серого.

## Прозрачность waybar

`window#waybar` красится в `@bar-bg` (rgba: `bg` + `alpha_bar`), пилюли — в
`@pill-bg`, тултипы — в `@tooltip-bg`. Прозрачность задаётся в палитре:

```bash
dark_alpha_bar=0.65      light_alpha_bar=0.72
dark_alpha_pill=0.5      light_alpha_pill=0.5
dark_alpha_tooltip=0.92  light_alpha_tooltip=0.94
```

После правки — `theme sync`: waybar перечитает CSS. Blur за баром включается
через `hl.layer_rule` в `hypr/lua/cfg/visuals.lua` (namespace `waybar`,
`ignore_alpha = 0.1`).

## Обои по теме

Пути живут в `hypr/conf.d/local.conf` (untracked, machine-specific) в том же
формате `$var`, что и у Hyprland:

```bash
$wallpaper       = $HOME/Pictures/wallpaper.png        # fallback
$wallpaper_dark  = $HOME/Pictures/wallpaper-dark.png
$wallpaper_light = $HOME/Pictures/wallpaper-light.png
```

При `theme toggle` вызывается `theme wallpaper`: скрипт берёт
`wallpaper_<mode>`, ставит его через `awww img` и пишет
`hyprlock/wallpaper.conf`, чтобы локскрин использовал ту же картинку. Если
файла для режима ещё нет — предупреждение и откат на `$wallpaper`.
Отдельно: `theme wallpaper light|dark` — применить без смены темы (этим
пользуется autostart при логине).

## Новая тема

```sh
cp themes/mono.conf themes/paper.conf
# поправить name и цвета
THEME=paper theme sync
```

Затем в `zsh/.zshrc` поменяй `theme=mono` в `zsh_theme_prompt` и
`ghostty/config.d/colors.conf` (`light:paper-light,dark:paper-dark`),
`tmux/tmux.conf` — на новые имена файлов. Проще: оставить одну тему.
