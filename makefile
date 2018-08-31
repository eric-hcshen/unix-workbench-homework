all: clean write_title write_sub_title write_date_time

write_title:
	echo "# Homework of Unix Workbench" >> README.md
write_sub_title:
	echo "## Number Line of Code" >> README.md
write_date_time:
	echo "\`\`\`" >> README.md
	date +%D >> README.md
	date +%T >> README.md
	echo "\`\`\`" >> README.md
clean:
	rm -f README.md 
