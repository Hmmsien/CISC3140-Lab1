BEGIN { FS = "," }

{
    key = sprintf("%s,%s,%s", $1, $2, $3)
    value = $4

    for (i = 1; i <= 3; ++i)
        if (values[i] == "" || values[i] < value) {
            tmp = values[i]
            values[i] = value
            value = tmp

            tmp = keys[i]
            keys[i] = key
            key = tmp
        } else break
}

END {
    for (i = 1; i <= 3; ++i)
        printf("%s,%d\n", keys[i], values[i])
}
