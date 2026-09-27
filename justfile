default:
    @just --list

# ==============================================================================
# Universal Commands
# ==============================================================================

# Sync packages and dotfiles for the current OS
sync:
    @just _sync-{{ os() }}
    chezmoi apply

# Dump installed packages to dotfiles manifests
dump:
    @just _dump-{{ os() }}

# ==============================================================================
# Linux (Arch)
# ==============================================================================

[linux]
_sync-linux:
    @if ! command -v yay >/dev/null 2>&1; then \
        echo "==> Bootstrapping yay..."; \
        sudo pacman -S --needed --noconfirm base-devel git; \
        git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin; \
        (cd /tmp/yay-bin && makepkg -si --noconfirm); \
        rm -rf /tmp/yay-bin; \
    fi
    @echo "==> Synchronizing Arch packages..."
    yay -S --needed --noconfirm - < packages/arch-packages.txt

[linux]
_dump-linux:
    @echo "==> Dumping Arch packages..."
    yay -Qqe > packages/arch-packages.txt

# ==============================================================================
# Windows
# ==============================================================================

[windows]
_sync-windows:
    powershell -Command "Write-Host '==> Synchronizing Scoop packages...'; scoop import packages/scoopfile.json; Write-Host '==> Synchronizing Winget packages...'; winget import --import-file packages/winget.json --accept-package-agreements --accept-source-agreements"

[windows]
_dump-windows:
    powershell -Command "scoop export > packages/scoopfile.json; winget export -o packages/winget.json --include-versions"
