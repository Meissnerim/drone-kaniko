#!/busybox/sh
echo "Args: $@"
env | grep -i "^PLUGIN_"
echo "---"
env | grep -i "^DRONE_"
env | grep -i "^CI_"
echo "---"
env | grep -iv "^PLUGIN_" | grep -iv "^DRONE_" | grep -iv "^CI_"


exec /kaniko/kaniko-docker "$@"