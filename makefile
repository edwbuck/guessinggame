all: README.md

README.md: guessinggame.sh
	rm -f README.md
	touch README.md
	echo "# A Guessing Game Project" >> README.md
	echo "" >> README.md
	echo "This project is a simple guessing game that promts you for the number" >> README.md
	echo "of files in the current working directory (including directory files," >> README.md
	echo "but not including '.' or '..'" >> README.md
	echo "" >> README.md
	echo "Built: $(shell date)" >> README.md
	echo "" >> README.md
	echo "Guessinggame.sh lines: $(shell cat guessinggame.sh | wc -l)" >> README.md


clean:
	rm -f README.md
