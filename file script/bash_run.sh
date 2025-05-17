#!/bin/bash
PORT=8188
PID=$(lsof -t -i:$PORT)

if [ -n "$PID" ]; then
    echo "⚠️ Port $PORT already in use by PID $PID. Killing it..."
    kill -9 $PID
else
    echo "✅ Port $PORT is free."
fi

echo "🚀 Starting ComfyUI..."
python main.py --listen
