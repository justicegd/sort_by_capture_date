# 📂 ExifTool + BAT 自動分類說明文件 (Windows 專用)

本工具可協助使用者將圖片與影片，根據其 **拍照時間** (圖片) 或 **建立時間** (影片)，分類搬移到同一資料夾下的 `YYYY-MM` 子資料夾中。

---

## 📦 使用要求

* ☑️ 作業系統：**Windows**
* ☑️ 需要安裝 [ExifTool](https://exiftool.org/)
* ☑️ 適用副檔名：`.jpg`, `.heic`, `.mp4`
* ☑️ 批次檔名建議：`sort_by_capture_date.bat`

---

## 🔧 安裝步驟（一次性設定）

1. 前往官方網站下載 `exiftool` (限 Windows 版 ZIP)：
   🔗 [https://exiftool.org/](https://exiftool.org/)

2. 解壓給得 `exiftool(-k).exe`

3. 將此執行檔 **重新命名為：**

   ```
   exiftool.exe
   ```

4. 將 `exiftool.exe` 以及整個資料夾（如 `exiftool_files`）複製至：

   ```
   C:\Windows\
   ```

   ☑️ 以便在任何 cmd 視窗中直接使用 `exiftool`

---

## 🚀 使用方式

1. 將經配置好的 `.bat` 檔放到要分類的圖片/影片資料夾中
2. 隨手 **電腦雙擊執行**
3. 系統會自動：

   * 分析圖片/影片的日期
   * 搬移至 `YYYY-MM` 資料夾 (自動建立)
   * 處理含空白的檔名
   * 錯誤信息會記錄於 `error_log.txt`

---

# 📂 ExifTool + BAT Auto-Sorting Guide (Windows Only)

This tool helps users automatically organize photos and videos into `YYYY-MM` subfolders based on their **capture date** (for images) or **creation date** (for videos).

---

## 📦 Requirements

* ☑️ Operating System: **Windows**
* ☑️ Requires installation of [ExifTool](https://exiftool.org/)
* ☑️ Supported extensions: `.jpg`, `.heic`, `.mp4`
* ☑️ Recommended batch filename: `sort_by_capture_date.bat`

---

## 🔧 Installation Steps (One-Time Setup)

1. Download `exiftool` from the official site (ZIP for Windows):
   🔗 [https://exiftool.org/](https://exiftool.org/)

2. Extract the file `exiftool(-k).exe`

3. Rename the executable to:

   ```
   exiftool.exe
   ```

4. Copy `exiftool.exe` **and** its related folder (e.g., `exiftool_files`) to:

   ```
   C:\Windows\
   ```

   ☑️ This makes `exiftool` accessible from any command prompt window.

---

## 🚀 How to Use

1. Place the configured `.bat` file into the folder containing the photos/videos.
2. **Double-click** the batch file to execute.
3. The system will:

   * Analyze the capture or creation date of each file
   * Move the file into a corresponding `YYYY-MM` folder (auto-created if missing)
   * Handle filenames that include spaces
   * Record any errors in `error_log.txt`

---
