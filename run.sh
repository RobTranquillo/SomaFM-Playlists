#!/bin/sh
set -eu

# Resolve project files relative to this script, regardless of the working directory.
cd -- "$(dirname -- "$0")"

if ! venv/bin/python -c 'import sys; sys.exit(sys.version_info.major != 3)' >/dev/null 2>&1; then
    if ! command -v python3 >/dev/null 2>&1; then
        echo "Python 3 fehlt. Bitte Python 3 installieren und erneut starten." >&2
        exit 1
    fi

    echo "Erstelle virtuelle Python-Umgebung ..."
    if ! python3 -m venv venv; then
        echo "Die Python-Umgebung konnte nicht erstellt werden. Bitte die venv-Unterstützung für Python 3 prüfen (unter Debian/Ubuntu: python3-venv)." >&2
        exit 1
    fi
fi

if ! venv/bin/python -c 'import sys; sys.exit(sys.version_info.major != 3)' >/dev/null 2>&1; then
    echo "Die neue Python-Umgebung enthält keinen funktionierenden Python-3-Interpreter." >&2
    exit 1
fi

pip install --upgrade pip
venv/bin/python -m pip install -r requirements.txt
exec venv/bin/python somafm.py "$@"
