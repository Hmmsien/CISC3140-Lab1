BEGIN {
    FS = ","
    printf "Rank \tCar_id \t Year \t Make \t Model \n" > "rank.out"
}
{
    if(NR>1){
        total =0;
        for(x = 8; x <= NF; x++){
            total += $x
        }
        printf total "\t\t" $7 "\t\t" $4 "\t\t" $5 "\t\t" $6 "\n" > "rank.out"
        }
}
END{
}
