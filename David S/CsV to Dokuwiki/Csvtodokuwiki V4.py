import csv
j = 0
links = []
with open('/Users/yosemite/Downloads/tools-Grid view.csv', 'r') as f:
	reader = csv.reader(f)
	row1 = next(reader)
	print(row1)
	newrow1 = ["^ "]
	for i in row1:
		j = j + 1
		newrow1.append(i)
		newrow1.append(" ^ ")
	print ("".join(newrow1))
	for row in reader:
		#print (row)
		newrow = ["|"]
		p = 0
		for i in row:
			newrow.append(i.strip('\n'))
			newrow.append(" | ")
		print("".join(newrow))


