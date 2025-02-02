# Append to PATH
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

append_path "$HOME/bin"
append_path "$HOME/node_modules/.bin"
append_path "$HOME/.cargo/bin"
append_path "$HOME/.local/bin"
append_path "$HOME/.elan/bin"
append_path "$HOME/.local/share/pnpm:$PATH"

