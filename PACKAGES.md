# Пакеты для переезда

Список приложений, от которых зависят эти дотфайлы. Без них соответствующий
функционал отвалится. Имена пакетов даны для Arch (repo/AUR помечен), но главное
— имя бинарника: под другой дистрибутив ищи по нему.

> Только список. Автоустановки тут намеренно нет.

## Сессия / WM

| Инструмент | Пакет (Arch) | Зачем |
|---|---|---|
| Hyprland | `hyprland` | основной композитор (`hypr/`) |
| ly | `ly` | display manager / greeter (`ly/config.ini`) |
| hyprlock | `hyprlock` | блокировка экрана (`$mod CTRL+q`, hyprlock.conf) |
| hypridle | `hypridle` | idle-демон (autostart, hypridle.conf) |
| xdg-desktop-portal-hyprland | `xdg-desktop-portal-hyprland` | скриншеринг/порталы (рекомендуется) |

## Панель / уведомления / лаунчер

| Инструмент | Пакет | Зачем |
|---|---|---|
| Waybar | `waybar` | панель (`waybar/`) |
| SwayNC | `swaync` | центр уведомлений (`swaync/`, `$mod+n`) |
| eww | `eww` (AUR) | OSD громкости/яркости (`eww/osd.sh`) |
| tofi | `tofi` (AUR) | лаунчер приложений (`tofi-drun`, `$mod+space`) |

## Обои

| Инструмент | Пакет | Зачем |
|---|---|---|
| awww | `awww` (AUR, форк swww) | демон обоев (`awww-daemon`, autostart). Альтернатива — `swww`, тогда поправь autostart.conf |

## Скриншоты / буфер

| Инструмент | Пакет | Зачем |
|---|---|---|
| grim | `grim` | снимок экрана (`Print`-биндов) |
| slurp | `slurp` | выбор региона (`$mod+Print`, `$mod SHIFT+Print`) |
| wl-clipboard | `wl-clipboard` | `wl-copy`/`wl-paste`, используется скриптом `copy` |

## Звук / медиа

| Инструмент | Пакет | Зачем |
|---|---|---|
| PipeWire + WirePlumber | `pipewire` `wireplumber` | `wpctl` — громкость (volume-бинды, OSD) |
| playerctl | `playerctl` | медиа-клавиши, waybar-модуль |
| mpris-proxy | `bluez-utils` | проброс медиа с bluetooth (autostart) |
| cava | `cava` | визуализатор для waybar (`cava-waybar`) |

## Железо

| Инструмент | Пакет | Зачем |
|---|---|---|
| brightnessctl | `brightnessctl` | яркость (`XF86MonBrightness*`, OSD) |
| Solaar | `solaar` | Logitech MX Master (`solaar -w hide`, autostart) |

## Терминал / шелл

| Инструмент | Пакет | Зачем |
|---|---|---|
| Ghostty | `ghostty` | терминал (`$mod+Return`, `ghostty/`) |
| zsh | `zsh` | шелл (`zsh/`) |
| oh-my-zsh | AUR / скрипт установки | фреймворк для zsh |
| zsh-autosuggestions | `zsh-autosuggestions` | плагин omz |
| zsh-syntax-highlighting | `zsh-syntax-highlighting` | плагин omz |
| fzf | `fzf` | fuzzy-поиск, биндинги в zsh |
| tmux | `tmux` | мультиплексор (`tmux/`). TPM клонируется `install.sh` |
| nvm | AUR / скрипт установки | Node-версии (`~/.nvm`) |

## Редактор

| Инструмент | Пакет | Зачем |
|---|---|---|
| Neovim | `neovim` | конфиг `nvim/` |

## Утилиты (нужны скриптам/модулям)

| Инструмент | Пакет | Зачем |
|---|---|---|
| jq | `jq` | парсинг в waybar-модуле раскладки |
| ansible | `ansible` | `scripts/ansible_decrypt` (ansible-vault) |
| git | `git` | клонирование shaders/tpm в `install.sh` |

## Шрифты / курсор

| Ресурс | Пакет | Зачем |
|---|---|---|
| Iosevka Nerd Font | `ttf-iosevka-nerd` | шрифт терминала + иконки waybar |
| ComixCursors-Blue | `xcursor-comix` (AUR) | тема курсора (`hyprctl setcursor ComixCursors-Blue`) |

---

### Заметки

- `scripts/monitor-ctl`, `switch-layout`, `resume` используют только `hyprctl`
  (идёт с Hyprland) — доп. пакетов не требуют.
- `walker.go` в корне — самописный Go-хелпер, для сборки нужен `go`
  (в биндах не задействован, лаунчер сейчас — tofi).
- После `install.sh` симлинки расставляются автоматически; этот файл — только
  про то, что должно быть установлено в системе.
