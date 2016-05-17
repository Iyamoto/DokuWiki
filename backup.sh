#Ubuntu DokuWiki backup script

BACKUPPATH="/var/www/html/backups"
WIKIPATH="/var/lib/dokuwiki"

# creates $1, if not exists
checkDir()
{
        if [ ! -d "$1" ]
        then
                mkdir -p "$1"
        fi
}

checkDir "${BACKUPPATH}"

tar -cjf "${BACKUPPATH}/dokuwiki.tar.bz2" -C "${WIKIPATH}" "data"
