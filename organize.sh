#!/bin/bash

target="${1:-.}"

for file in "$target"/*;do
	[ -f "$file" ] || continue

	name=$(basename "$file")
	[ "$name" = "organize.sh" ] && continue

	if [[ "$name" == *.* ]]; then
		ext="${name##*.}"
		ext="${ext,,}"
	else
		ext="other"
	fi

	mkdir -p "$target/$ext"
	mv "$file" "$target/$ext/"
	echo "Moved $name -> $ext/"
done

echo "Done!"