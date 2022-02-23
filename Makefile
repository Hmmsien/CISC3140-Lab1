lab1:
	awk -f rank.awk data_lab1/data.csv
	sort -k1 -nr print.out>>rank.out
