
#!/usr/bin/env bash
set -e

if [ $# -lt 3 ]; then
    echo "Usage: $0 <Project> <Username> \"<commit message>\" [path]"
    exit 1
fi

PROJECT="$1"
USERNAME="$2"
COMMIT="$3"
DIR="${4:-.}"

read -rp "Enter branch name (default: main): " BRANCH
BRANCH="${BRANCH:-main}"

GH_TOKEN="ghp_***token***"

LOGFILE="/tmp/${PROJECT}_gitpush.log"

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

log()  { echo -e "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOGFILE"; }
ok()   { log "${GREEN}$1${NC}"; }
warn() { log "${YELLOW}$1${NC}"; }
err()  { log "${RED}$1${NC}"; }

log "==== Starting GitHub Push for '${PROJECT}' ===="

if ! command -v gh >/dev/null 2>&1; then
    warn "[*] GitHub CLI not found. Installing..."
    sudo apt update -y && sudo apt install -y gh || sudo snap install gh
fi

if ! gh auth status >/dev/null 2>&1; then
    log "[*] GitHub login required..."
    echo "$GH_TOKEN" | gh auth login --with-token
fi

ok "[*] GitHub authenticated"


# ============================
# SSH KEY + CONFIG
# ============================
mkdir -p ~/.ssh
chmod 700 ~/.ssh

GITHUB_KEY="$HOME/.ssh/id_github"
GITHUB_PUB="$HOME/.ssh/id_github.pub"

if [[ ! -f "$GITHUB_KEY" ]]; then
    log "[*] Generating SSH key..."
    ssh-keygen -t ed25519 -C "$USERNAME@github" -N "" -f "$GITHUB_KEY"
fi

if ! pgrep -x ssh-agent >/dev/null; then
    eval "$(ssh-agent -s)" >/dev/null
fi

ssh-add "$GITHUB_KEY" >/dev/null 2>&1 || true

if ! grep -q "Host github.com" ~/.ssh/config 2>/dev/null; then
cat >> ~/.ssh/config <<EOF
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_github
    IdentitiesOnly yes
EOF
    ok "[*] SSH config updated"
fi


# ============================
# UPLOAD SSH KEY
# ============================
PUB_FINGERPRINT=$(ssh-keygen -lf "$GITHUB_PUB" | awk '{print $2}')

if gh ssh-key list | grep -q "$PUB_FINGERPRINT"; then
    ok "[*] SSH key already registered."
else
    log "[*] Uploading SSH key..."
    if gh ssh-key add "$GITHUB_PUB" -t "$(hostname)-auto-key" 2>/tmp/gh_key_err.log; then
        ok "[*] SSH key added."
    else
        if grep -q "key is already in use" /tmp/gh_key_err.log; then
            warn "[*] Key already exists — continuing."
        else
            err "[!] SSH upload failed:"
            cat /tmp/gh_key_err.log
            exit 1
        fi
    fi
fi


# ============================
# GIT SETUP
# ============================
cd "$PROJECT" || { err "[!] Project not found"; exit 1; }

GIT_NAME=$(git config --global user.name || true)
GIT_EMAIL=$(git config --global user.email || true)

if [[ -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
    echo "🔧 Git identity missing — configuring..."
    read -rp "Your Git Name: " GIT_NAME
    GIT_EMAIL="$USERNAME@users.noreply.github.com"

    git config --global user.name "$GIT_NAME"
    git config --global user.email "$GIT_EMAIL"

    ok "[*] Git identity set."
else
    ok "[*] Using Git identity: $GIT_NAME <$GIT_EMAIL>"
fi

if [[ ! -d .git ]]; then
    git init
fi

git checkout -B "$BRANCH"

git add "$DIR"
if git diff --cached --quiet; then
    warn "[!] Nothing to commit."
else
    git commit -m "$COMMIT"
fi


# ============================
# REMOTE + CREATE REPO
# ============================
REMOTE_URL="git@github.com:$USERNAME/$PROJECT.git"

if git remote get-url origin >/dev/null 2>&1; then
    git remote set-url origin "$REMOTE_URL"
else
    git remote add origin "$REMOTE_URL"
fi

if ! gh repo view "$USERNAME/$PROJECT" >/dev/null 2>&1; then
    log "[*] Creating GitHub repo..."
    gh repo create "$USERNAME/$PROJECT" --public --source=. --remote=origin
fi


# ============================
# PUSH
# ============================
log "[*] Pushing to GitHub..."
git push -u origin "$BRANCH"

ok "[*] Push completed successfully!"
log "Logs saved at: $LOGFILE"

exit 0
