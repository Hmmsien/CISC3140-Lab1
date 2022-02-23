BEGIN { FS = "," }

{
    key = sprintf("%s,%s,%s,%s", $2, $3, $4, $5)
    value = $4
    count = 1;

    for (i = 1; i <= NF; ++i)
	for (j = 2; j <= NF; ++j) {
	printf key
        while (values[i] == value[j]&&count<=3 ){
            printf key
	    count++;
        }
    }
}
END {
}
