# gongfpp Homebrew Tap

自建 macOS 应用的 Homebrew 分发仓库。

## 安装

```bash
brew install --cask gongfpp/tap/onemutemic
```

OneMuteMic 尚未做公证（notarize），首次启动可能被 Gatekeeper 拦下。装的时候直接去掉隔离属性更省事：

```bash
brew install --cask --no-quarantine gongfpp/tap/onemutemic
```

## 收录

| Cask | 版本 | 说明 |
| --- | --- | --- |
| [`onemutemic`](Casks/onemutemic.rb) | 1.0.0 | 菜单栏应用，一个快捷键把系统麦克风全局静音；要求 macOS Ventura 及以上 |

## 维护

新增应用 = 在 `Casks/` 放一个 `.rb` 定义 + 更新本文件表格；升级版本时同步 `version` 与 `sha256`。
