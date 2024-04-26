# FreeDuckDuckGo

### Docker Compose

#### FreeDuckDuckGo Service

```bash
mkdir FreeDuckDuckGo && cd FreeDuckDuckGo
wget -O compose.yaml https://raw.githubusercontent.com/missuo/FreeDuckDuckGo/main/compose/compose.yaml
docker compose up -d
```

### Test FreeDuckDuckGo

```bash
curl http://127.0.0.1:3456/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "user",
        "content": "Hello!"
      }
    ],
    "stream": true
    }'
```