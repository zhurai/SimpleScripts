import os
import os.path as path
import time

directory=r"C:\Users\Public\Downloads\EWT"
files=os.listdir(directory)
currtime=time.time()
days=3

for file in files:
	the_file=directory+"\\\\"+file
	file_time=path.getmtime(the_file)
	thetime=(time.time() - file_time) / 3600
	if thetime > 24*days:
		print(the_file + " should be deleted")
		os.remove()
	else:
		print(the_file + " is okay")
