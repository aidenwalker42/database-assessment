log_file = open("um-server-01.txt") #opens the file and assigns it to log_file


def sales_reports(log_file): #creates a function that takes in param "log_file"
    for line in log_file: #iterate through all rows, line is equal to a row
        line = line.rstrip()#formatting
        day = line[0:3] #set day equal to the first three letters of every row
        if day == "Mon":#only if day is equal to tuesday
            print(line)#will the row print


sales_reports(log_file)#call the function
