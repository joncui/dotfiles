function kill-ssh {
    ps aux | grep "ssh " | grep -v "grep" | awk '{print $2}' | xargs kill -9
}
