all: index.md

index.md:
	rm -f index.md
	git checkout origin/master README.md
	mv README.md index.md
	echo "<p>HTML generated from original markdown file <a link="https://github.com/edwbuck/guessinggame/blob/master/README.md">README.md</a> which was generated from <a link="https://github.com/edwbuck/guessinggame/blob/master/makefile">this</a> makefile.</p>" >> index.md

