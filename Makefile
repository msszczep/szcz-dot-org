clean:
	lein clean; rm -rf public

serve:
	lein serve

rsync:
	time ./rsync.sh

tail:
	ls -alF content/md/posts/*md | tail -110 | head	
