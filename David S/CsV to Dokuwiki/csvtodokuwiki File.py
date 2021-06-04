# -*- coding: utf-8 -*-
import csv
j = 0
file1 = []
file = open('dokufile.txt','w') 
with open('/Users/davidserero/Downloads/+M- tools (mirrored)-Grid view.csv', 'r') as f:
	reader = csv.reader(f)
	row1 = next(reader)
	newrow1 = ["^ "]
	for i in row1:
		j = j + 1
		newrow1.append(i)
		newrow1.append(" ^ ") 
	file.write("".join(newrow1))
	file.write('\n')
	for row in reader:
		newrow = ["|"]
		p = 0
		#print (row)
		for i in row:
			newrow.append(i.strip("\n"))
			newrow.append(" | ") 
		#file1.append("".join(newrow))
		file.write('\n')
		file.write("".join(newrow))

file.close()
