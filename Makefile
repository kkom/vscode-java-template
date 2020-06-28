.PHONY: compile
compile:
	javac -d target src/$(class).java

.PHONY: run
run: compile
	java -cp target src.$(class)
