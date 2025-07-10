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

### pnpm global store (v10+)

set -x PNPM_HOME "/Users/khalidjebbari/Library/pnpm"
if not contains -- "$PNPM_HOME" $PATH
  set -x PATH "$PNPM_HOME" $PATH
end

### Mise

/opt/homebrew/bin/mise activate fish | source

### evryg

set -x EVRYG ~/projects/evryg

### Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/khalidjebbari/.lmstudio/bin

### uv
set -x PATH /Users/khalidjebbari/.local/bin $PATH

### Aider (dummy-api-key for LM Studio)
set -x LM_STUDIO_API_KEY dummy-api-key
set -x LM_STUDIO_API_BASE http://localhost:1234/v1
