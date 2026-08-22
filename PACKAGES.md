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
| zsh-autosuggestions | `zsh-autosuggestions` | источается напрямую из `.zshrc` |
| zsh-syntax-highlighting | `zsh-syntax-highlighting` | источается напрямую из `.zshrc`, обязательно последним |
| fzf | `fzf` | fuzzy-поиск, биндинги в zsh |
| tmux | `tmux` | мультиплексор (`tmux/`). TPM клонируется `install.sh` |

## Редактор

| Инструмент | Пакет | Зачем |
|---|---|---|
| Neovim | `neovim` (на маке `brew install neovim`) | конфиг `nvim/`, без плагин-менеджеров — только нативный `vim.lsp` + regex-подсветка. `vim/` в репе оставлен для истории/отката, но `install.sh` его больше не линкует |
| bash-language-server | `bash-language-server` (на маке `npm i -g bash-language-server`) | LSP для `.sh` |
| yaml-language-server | `yaml-language-server` (на маке `npm i -g yaml-language-server`) | LSP для YAML |
| ansible-language-server | AUR `ansible-language-server` (на маке `npm i -g @ansible/ansible-language-server`) | LSP для ansible-плейбуков/ролей (работает поверх YAML) |
| dockerfile-language-server | `dockerfile-language-server` (на маке `npm i -g dockerfile-language-server-nodejs`) | LSP для `Dockerfile` |
| terraform-ls | AUR `terraform-ls-bin` (на маке `brew install hashicorp/tap/terraform-ls`) | LSP для `.tf` |
| pyright | `pyright` (на маке `brew install pyright` или `npm i -g pyright`) | LSP для Python |
| lua-language-server | `lua-language-server` (на маке `brew install lua-language-server`) | LSP для правки самого nvim-конфига |

Все LSP включаются в `nvim/lua/config/lsp.lua` только если бинарь найден в `$PATH`
(`vim.fn.executable`) — отсутствие любого из них не ломает остальной конфиг.

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
| ComixCursors-Orange | `xcursor-comix` (AUR) | тема курсора (`hyprctl setcursor ComixCursors-Orange`) |

---

### Заметки

- `scripts/monitor-ctl`, `switch-layout`, `resume` используют только `hyprctl`
  (идёт с Hyprland) — доп. пакетов не требуют.
- `walker.go` в корне — самописный Go-хелпер, для сборки нужен `go`
  (в биндах не задействован, лаунчер сейчас — tofi).
- После `install.sh` симлинки расставляются автоматически; этот файл — только
  про то, что должно быть установлено в системе.
- **root**: `install.sh` под root не гонять (`sudo -H`) — симлинки на `dotfiles/`
  внутри `/home/vacwin` означают, что root исполняет файлы, которые может
  редактировать обычный юзер (privilege escalation при компрометации аккаунта).
  Вместо этого — вручную копировать (не симлинтить) нужные конфиги разовым
  `cp`, отдельно на каждой машине:
  - zsh (своя тема `root.zsh`, чтобы отличать промпт от обычного юзера):
    ```
    sudo mkdir -p /root/.config/zsh/themes /root/.config/zsh/cache
    sudo cp /home/vacwin/dotfiles/zsh/.zshrc    /root/.config/zsh/.zshrc
    sudo cp /home/vacwin/dotfiles/zsh/.zprofile /root/.config/zsh/.zprofile
    sudo cp /home/vacwin/dotfiles/zsh/.zshenv   /root/.config/zsh/.zshenv
    sudo cp /home/vacwin/dotfiles/zsh/themes/*.zsh /root/.config/zsh/themes/
    sudo sed -i "s/^ZSH_THEME='guts'/ZSH_THEME='root'/" /root/.config/zsh/.zshrc
    echo 'export ZDOTDIR="$HOME/.config/zsh"' | sudo tee /root/.zshenv
    sudo chsh -s /usr/bin/zsh root
    sudo chown -R root:root /root/.config/zsh
    ```
  - nvim:
    ```
    sudo mkdir -p /root/.config/nvim
    sudo cp -r /home/vacwin/dotfiles/nvim/. /root/.config/nvim/
    sudo chown -R root:root /root/.config/nvim
    ```
  После копирования правки в `dotfiles/` под vacwin **не долетают** до root —
  это осознанный трейд-офф ради безопасности, обновлять руками по мере надобности.
