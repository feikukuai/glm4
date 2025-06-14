# Run gemma on Ollama via CNB，分支添加了gml4 32b模型，其他和main一致。
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
- 'JollyLlama/GLM-4-32B-0414-Q4_K_M:latest'
- `gemma3:4b`
- `gemma3:12b`
- `gemma3:27b`
- `gemma2:2b`

## 进阶

### 公网访问

方法一，在 `PORTS` 中将 Ollama 暴露到外网，添加 11434 端口即可。
方法二，可以通过自动存储于tempurl.txt的pinggy临时公网链接，临时访问。