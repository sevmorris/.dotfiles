
EDITOR=nano
VISUAL=nano
LANG='en_US.UTF-8'; # Prefer US English
LC_ALL='en_US.UTF-8'; # Use UTF-8

export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# Check architecture and add correct Homebrew to PATH
case `arch` in
    arm64) # M1
        export BREW_PREFIX=/opt/homebrew
    ;;
    i386) # Intel
        export BREW_PREFIX=/usr/local
    ;;
esac
export PATH="$BREW_PREFIX/bin:$PATH"

neofetch
