all: README.md

README.md: guessinggame.sh
	echo "Title:" > README.md
	echo "Guessing Game" >> README.md
	echo "Created Time:" >> README.md
	date >> README.md
	echo "Number of lines in guessing game file:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm README.md
