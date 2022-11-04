# nextcloud-sync

This is my personal way of backing up nextcloud instance through rsync into a Samba share (CIFS). It backups through cron every 12 hours. It can be manually initialized.

# Environment variables

`SOURCE_FOLDER` = Source of the folder you want to backup. Usually for nextcloud this is `/var/www/html`
`DESTINATION_FOLDER` = Destination folder you want to target. Default is `/backup` inside the **container**.

Do note that you have to bind to the correct mount and correct destination folder.

# Mount-bind with docker compose

Somewhere in your docker-compose.yml

```
  sync:
        image: [YOUR DOCKERHUB USER]/nextcloud-sync:latest
        restart: always
        volumes:
          - nextcloud:/var/www/html
          - type: bind
            source: /mnt/backup
            target: /backup
```

# License

MIT
