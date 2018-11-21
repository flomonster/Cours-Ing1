while read -r file; do
    pandoc --template eisvogel --listing "${file}" -o "${file}.pdf"
done <<< "$(find . -name '*.md')"