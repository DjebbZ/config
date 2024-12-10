if status is-interactive
    # Commands to run in interactive sessions can go here
end

### Homebrew
eval (/opt/homebrew/bin/brew shellenv)

### Intellij in PATH for `idea`
set PATH /Applications/IntelliJ\ IDEA.app/Contents/MacOS $PATH

### Rust
set -x PATH $HOME/.cargo/bin $PATH

### Scaleway CLI autocomplete initialization.
eval (scw autocomplete script shell=fish)

### Electre

# Add gcloud components to PATH
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

# GCP credentials
set -x GOOGLE_APPLICATION_CREDENTIALS "/Users/khalidjebbari/.config/gcloud/legacy_credentials/khalid.jebbari@tcmlabs.fr/adc.json"

# Mise
/opt/homebrew/bin/mise activate fish | source


