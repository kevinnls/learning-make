greet:
	@echo hello, "${USER}"
test/file0.txt:
	mkdir -p test
	touch test/file0.txt
test/file1.txt: test/file0.txt
	-@# runs only if file0.txt is newer
	# make file1.txt the newest
	touch test/file1.txt
error:
	# this returns non-zero exit code; but is ignored
	-false
	@echo 'uh-oh an error occurred'

.PHONY: greet error
