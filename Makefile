clean:
	lein clean; rm -rf public

serve:
	lein serve

rsync:
	time ./rsync.sh
