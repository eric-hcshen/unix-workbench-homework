all: clean write_tile write_sub_title write_date_time

write_title:
	echo "# Homework of Unix Workbench" >> README.md
write_sub_title:
	echo "## Number Line of Code" >> README.md
write_date_time
	echo "- Date:"$(date +%D) >> README.md
	echo "- Time:"$(date +%T) >> README.md
clean
	rm README.md
