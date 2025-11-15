
# Development Environment

This project uses [uv](https://docs.astral.sh/uv/) for Python dependency management with Python 3.12.

## Setup

1. Install uv if you haven't already:

```bash
# macOS/Linux
curl -LsSf https://astral.sh/uv/install.sh | sh

# Windows
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

2. Install dependencies:

```bash
cd buildtools
uv sync
```

## Activating the Virtual Environment

```bash
# Windows (PowerShell)
.venv\Scripts\Activate.ps1

# Windows (Command Prompt)
.venv\Scripts\activate.bat

# macOS/Linux
source .venv/bin/activate
```

## Deactivating the Virtual Environment

```bash
deactivate
```
