BEGIN { FS = "," }

{
    key = sprintf("%s,%s,%s,%s", $2, $3, $4, $5)
    value = $4

    for (i = 1; i <= NF; ++i)
	for (j = 2; j <= NF; ++j) {
        if (values[i] == value[j]) {
            values[i] = value
        } else break
	}
}

END {
    for (i = 1; i <= 3; ++i)
        printf(keys[i]+"\n") > "topThree.out"
}
