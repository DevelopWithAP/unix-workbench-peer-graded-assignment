README.md:guessinggame.sh
	title="Guessing Game"; echo "Title: $$title" > README.md
	echo "\n"
	now=$$(date); echo "Generated on: $$now" >> README.md
	echo "\n"
	lines=$$(wc -l < guessinggame.sh | xargs); echo "The script contains $$lines lines" >> README.md
clean:
	rm *.md 
