#!/bin/bash

# 1. Ep buoc dung Java 17
export JAVA_HOME="/usr/lib/jvm/java-17-amazon-corretto.x86_64"
export PATH="$JAVA_HOME/bin:$PATH"

# 2. Cau hinh RAM
MIN_RAM="8G"
MAX_RAM="12G"

# 3. Ep JVM args cho start.sh
export JAVA_ARGS="-Xms${MIN_RAM} -Xmx${MAX_RAM}"

echo "Dang khoi dong server Cisco voi Java 17..."
echo "RAM: ${MIN_RAM} -> ${MAX_RAM}"

# 4. Chay server
./start.sh