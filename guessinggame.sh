#function to guess the number of files in cd
function guessingGame {
echo "How many files are in your current directory?"
read guess

actual=`ls|wc -l`

if [[ $actual -eq $guess ]]
then
	echo "Congratulations! you guessed right."
else	
while [[ $guess -ne $actual ]]
do
	if [[ $guess -lt $actual ]]
	then
	echo "Your guess is too low."
else
	echo "Your guess is too high."
	fi
	guessingGame
done
fi
}
#calling the function
guessingGame
