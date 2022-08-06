greet:
	@echo hello, "${USER}"
test/file0.txt:
	mkdir -p test
	touch test/file0.txt
test/file1.txt: test/file0.txt
	-@# runs only if file0.txt is newer
	# make file1.txt the newest
	touch test/file1.txt

