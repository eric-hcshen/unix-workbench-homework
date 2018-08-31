all: clean write_title write_sub_title write_date_time

write_title:
	echo "# Homework of Unix Workbench" >> README.md
write_sub_title:
	echo "## Number Line fo Code "   >> README.md
	echo "\`\`\`" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "\`\`\`" >> README.md
write_date_time:
	echo "## Make Date and Time" >> README.md
	echo "\`\`\`" >> README.md
	date +%D >> README.md
	date +%T >> README.md
	echo "\`\`\`" >> README.md
clean:
	rm -f README.md 
