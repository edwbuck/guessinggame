all: index.md

index.md:
	rm -f index.md
	git checkout origin/master README.md
	mv README.md index.md
	echo "HTML generated from original markdown file [README.md](https://github.com/edwbuck/guessinggame/blob/master/README.md) which was generated from a [makefile](https://github.com/edwbuck/guessinggame/blob/master/makefile)" >> index.md

clean:
	rm -f index.md
