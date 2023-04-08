

main() {
  sudo apt-get update
  sudo snap install nextcloud
  sudo nextcloud.manual-install username password
  sudo snap connections nextcloud
  sudo nextcloud.occ config:system:set trusted_domains 1 --value=example.com
  sudo nextcloud.occ config:system:get trusted_domains
  sudo ufw allow 80,443/tcp
  /var/snap/nextcloud/current/nextcloud/config/config.php
}
