function file_count
	set target $argv[1]
ls -l $target | wc -l
end
