# hwh-core

A minimal height–width model with formal constraints (Lean 4).

## A First Experiment (Any Computer)

This repository pins its Lean version in `lean-toolchain`, so your first run will fetch exactly the toolchain it expects.

### Prerequisites

- Git
- A working shell (macOS Terminal, Linux shell, or Windows PowerShell/WSL)

### Install Lean (via `elan`)

macOS / Linux / WSL:

```bash
curl -sSfL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y
```

Windows (PowerShell):

```powershell
iwr -useb https://raw.githubusercontent.com/leanprover/elan/master/elan-init.ps1 | iex
```

Then ensure `elan` is on your `PATH` (a new shell session is often enough). If you can run `lean --version`, you’re ready.

### Build and Run

Clone the repo, build it, and run the tiny executable:

```bash
git clone https://github.com/harpertoken/hwh-core.git
cd hwh-core
lake build
lake exe hwh_core
```

You should see:

```text
area = 200
```

## What “HWH” means (here)

`HWH` is treated as a small core for reasoning about **H**eight/**W**idth and simple rectangle/layout invariants in Lean.

## Notes

- CI runs `lake build` + `lake exe hwh_core` on every push and pull request.
- If a build fails on first run, it’s usually a missing `elan`/`lake` on `PATH` or a proxy blocking downloads; fix the environment and re-run.
