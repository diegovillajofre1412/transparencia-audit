# Building Transparencia Audit Executable

This guide explains how to create a standalone executable from the Python script.

## Prerequisites

- **Python 3.9+** installed and in PATH
- **pip** (Python package manager)
- All dependencies from `requirements.txt`

## Quick Start

### On Linux/macOS:

```bash
chmod +x build_executable.sh
./build_executable.sh
```

### On Windows:

```cmd
build_executable.bat
```

## Manual Build (Step-by-step)

### 1. Install Dependencies

```bash
pip install -r requirements.txt
```

### 2. Build the Executable

```bash
pyinstaller --onefile \
    --name "transparencia-audit" \
    --add-data "agents:agents" \
    --collect-all openpyxl \
    --collect-all pandas \
    --console \
    main.py
```

On Windows, use semicolons instead of colons:
```cmd
pyinstaller --onefile --name "transparencia-audit" --add-data "agents;agents" --collect-all openpyxl --collect-all pandas --console main.py
```

### 3. Find Your Executable

The executable will be in: `./dist/transparencia-audit` (Linux/macOS) or `./dist/transparencia-audit.exe` (Windows)

## Usage

### Linux/macOS:
```bash
./dist/transparencia-audit --seeds urls.txt --out ./output
```

### Windows:
```cmd
.\dist\transparencia-audit.exe --seeds urls.txt --out .\output
```

## What Gets Packaged

- ✓ Main script (`main.py`)
- ✓ Agent modules (from `agents/` directory)
- ✓ All dependencies (openpyxl, pandas, etc.)
- ✓ Python runtime
- ✓ Logging configuration

## Output

The build creates:
- `dist/` - Folder containing the executable
- `build/` - Temporary build files
- `main.spec` - PyInstaller specification file (can be deleted)

## Troubleshooting

### "Python not found"
- Ensure Python 3.9+ is installed
- Add Python to PATH: https://docs.python.org/3/using/windows.html

### "Module not found" errors
- Run: `pip install -r requirements.txt`
- Ensure all agent modules exist in `agents/` directory

### File size too large
- The executable includes the entire Python runtime (~50-100MB)
- This is normal and expected

### Antivirus warning
- Some antivirus software flags PyInstaller executables
- This is a false positive (add to whitelist if needed)

## Size Optimization

If the executable is too large, you can use UPX compression:

```bash
pip install upx
pyinstaller --onefile --upx-dir=/path/to/upx main.py
```

## Distribution

To distribute the executable:
1. Copy `dist/transparencia-audit` (or `.exe`)
2. Users can run it without Python installed
3. Optionally, include a `urls.txt` template and usage instructions
