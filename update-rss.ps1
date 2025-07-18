$ua = "Mozilla/5.0"
$url = "https://feeds.tbs.co.jp/rss/tbsradio/TS954.xml?limit=100"
$output = "rss/chiki.xml"

Invoke-WebRequest -Uri $url -UserAgent $ua -OutFile $output

git add rss/chiki.xml
git commit -m "Update Chiki RSS" -ErrorAction SilentlyContinue
git push
