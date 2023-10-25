find . -type f -iname "*.png" -not -iname "*_resized.png" -print0 |

while IFS= read -r -d $'\0' file; do
    echo
    echo "Processing ${file}"
    
    # Resize the image if its width is bigger than 1000 pixels
    after_name="${file%.png}_resized.png"

    # if [ -e "$after_name" ]; then
    #     echo "${file} is already proccessed."
    #     continue
    # fi

    convert "$file" -resize '1920x>' "${after_name}"

    before_size_in_bytes=$(stat -c %s "${file}")
    before_size_human=$(ls -lh "${file}" | awk '{print $5}')
    # echo "  Before: ${before_size_human}"

    after_size_in_bytes=$(stat -c %s "${after_name}")
    after_size_human=$(ls -lh "${after_name}" | awk '{print $5}')
    # echo "   After: ${after_size_human}"

    ratio=$((after_size_in_bytes * 100 / before_size_in_bytes))
    echo " Before: ${before_size_human}. After ${after_size_human}. Ratio: ${ratio}%"

    rm "${file}"
    mv "${after_name}" "${file}"
done