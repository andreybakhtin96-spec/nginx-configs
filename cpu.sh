#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<!DOCTYPE html><html><head><meta charset='UTF-8'><title>CPU Load</title></head><body>"
echo "<h1>Загрузка CPU</h1><pre>"
top -bn1 | grep "Cpu(s)"
echo "</pre><p>Обновлено: $(date)</p></body></html>"
