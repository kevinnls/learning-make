greet:
	@echo hello, "${USER}"
test/file0.txt: test
	# create file0
	touch test/file0.txt
test/file1.txt: test/file0.txt
	-@# runs only if file0.txt is newer
	# create file1
	touch test/file1.txt
test:
	# creating test directory
	mkdir -p test
error:
	# this returns non-zero exit code; but is ignored
	-false
	@echo 'uh-oh an error occurred'

.PHONY: greet error
