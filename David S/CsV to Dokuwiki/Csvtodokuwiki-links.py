import csv
j = 0
links = []
with open('/Users/davidserero/Downloads/RA-work-descriptions-Grid view.csv', 'r') as f:
	reader = csv.reader(f)
	row1 = next(reader)
	print(row1)
	newrow1 = ["^ "]
	for i in row1:
		j = j + 1
		newrow1.append(i)
		newrow1.append(" ^ ") 
		if i == "links":
			k = j
	print ("".join(newrow1))
	print (k)
	for row in reader:
		#print (row)
		newrow = ["|"]
		p = 0
		for i in row:
			p = p+1 
			if p == k:
				links.append(i)
			newrow.append(i.strip('\n'))
			newrow.append(" | ") 
		#print("".join(newrow))
	print(links)
