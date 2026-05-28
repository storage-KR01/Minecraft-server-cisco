```bash
#!/bin/bash

# =========================================================
# Cisco Server Startup Script
# =========================================================

# Java 17
export JAVA_HOME="/usr/lib/jvm/temurin-17-jdk-amd64"
export PATH="$JAVA_HOME/bin:$PATH"

# RAM config
MIN_RAM="8G"
MAX_RAM="12G"

# JVM args
export JAVA_ARGS="-Xms${MIN_RAM} -Xmx${MAX_RAM}"

echo "========================================="
echo "Khoi dong Cisco Server voi Java 17"
echo "JAVA_HOME: $JAVA_HOME"
echo "RAM: ${MIN_RAM} -> ${MAX_RAM}"
echo "========================================="

# Start server
exec ./start.sh
```
