# Run gemma on Ollama via CNB

![badge](https://cnb.cool/Anyexyz/Ollama/gemma/-/badge/git/latest/code/vscode-started)

在 CNB 中直接 使用 Ollama 运行 gemma，预置模型，无需等待，零帧起步。

## 快速体验

### 通过云原生开发体验

1. `Fork` 本仓库到自己的组织下
2. 选择喜欢的分支，点击 `云原生开发` 启动远程开发环境
3. 约 `5～9` 秒后，进入远程开发命令行，输入以下命令即可体验

> ${image} 为模型名称，如 `gemma2:9b`

```shell
ollama run ${image}
```

### 本仓库已内置模型列表

- `gemma3:1b`
- `gemma3:4b`
- `gemma2:2b`

## 进阶

### 公网访问

在 `PORTS` 中将 Ollama 暴露到外网，添加 11434 端口即可。