
function input {
	echo "Guess the amont of file in current folder and then press Enter"
	read guess
	while [[ ! $guess =~ ^[0-9]*$ ]]
	do
		echo "You've entered invalid input. You should enter numeric value."
		echo "Try again:"
		read guess
	done
}
count=$(ls -l | grep -v ^total | wc -l)
input
while [[ $guess -ne $count ]]
do
        if  [[ $guess -gt $count ]]
        then
                echo "Your guess is much bigger"
        else
                echo "Your guess is much smaller"
        fi
	input
done
echo "Your guess is right"
