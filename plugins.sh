#/bin/bash

# cloudflare 503
# "https://www.spigotmc.org/resources/lwc-extended.69551/download?version=295811"

plugins=(
  "https://media.forgecdn.net/files/2746/49/Dynmap-3.0-beta-5-spigot.jar"
  "https://github.com/DiscordSRV/DiscordSRV/releases/download/v1.18.2/DiscordSRV-Build-1.18.2.jar"
  "https://media.forgecdn.net/files/2780/487/BackupOnEvent.jar"
  "https://media.forgecdn.net/files/2755/708/worldguard-bukkit-7.0.1-rc2-dist.jar"
  "https://media.forgecdn.net/files/2760/373/worldedit-bukkit-7.0.1.jar"
)

for plugin in "${plugins[@]}"
do
  wget -nc -P plugins $plugin
done

echo "done"


