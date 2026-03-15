# test03

一個使用 SwiftUI 建立的最小範例專案，畫面顯示一個地球圖示與「Hello, world!」文字。

## 環境需求
- Xcode 26.3（或更新版本）
- iOS 18（或專案設定的最低部署版本）
- Swift 6
## 如何執行
1. 以 Xcode 開啟 `test03.xcodeproj`（或 `test03.xcworkspace`）。
2. 在工具列選擇模擬器或已連接的實體裝置。
3. 按下 Cmd + R 建置並執行。

## 專案結構
- `ContentView.swift`：主要的 SwiftUI 介面，顯示圖示與文字。
- `test03App.swift`（或類似檔名）：應用程式進入點。

## 自訂方式
- 修改 `ContentView` 中的 `Text("Hello, world!")` 以更換顯示文字。
- 將 `Image(systemName: "globe")` 改為其他 SF Symbols 以更換圖示。

## 授權
此專案僅作為示範用途，無附帶任何保證。

