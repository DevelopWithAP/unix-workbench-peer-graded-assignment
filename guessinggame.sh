num_files=$(ls . | wc -l)
function guess {
	while true
	do
		read guess
		if [[ $guess -gt $num_files ]]
		then
            sleep 1
			echo "You guessed too high. Try again"
		elif [[ $guess -lt $num_files ]]
		then
            sleep 1
			echo "You guessed too low. Try again"
		else
            sleep 1
			echo "Congratulations! There are indeed $guess files in this directory"
		break
		fi
	done 
}
echo "How many files in this directory?"
guess
