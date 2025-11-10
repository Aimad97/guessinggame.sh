# Makefile to generate README.md

README=README.md
SCRIPT=guessinggame.sh
DATE=$(shell date)
LINES=$(shell wc -l < $(SCRIPT))

all: $(README)

$(README):
	echo "# Guessing Game Project" > $(README)
	echo "" >> $(README)
	echo "This project is a Bash script game where the user guesses the number of files in the current directory." >> $(README)
	echo "" >> $(README)
	echo "## Details" >> $(README)
	echo "- Date and time of make: $(DATE)" >> $(README)
	echo "- Number of lines in $(SCRIPT): $(LINES)" >> $(README)

clean:
	rm -f $(README)
