GITCHANGES=$(git status --porcelain | grep "^ M" | cut -c 4-)
I=0;
for f in $GITCHANGES;
do
  echo "$f kopiert..."
  verz=$(dirname $f)
  mkdir -p /var/www/html/update/joorgportal3.501/$verz
  cp $f /var/www/html/update/joorgportal3.501/$f
done
GITCHANGES=$(git status --porcelain | grep "^?" | cut -c 4-)
I=0;
for f in $GITCHANGES;
do
  echo "$f kopiert..."
  verz=$(dirname $f)
  mkdir -p /var/www/html/update/joorgportal3.501/$verz
  cp $f /var/www/html/update/joorgportal3.501/$f
done
