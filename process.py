log_file = open("um-server-01.txt") #connecting to the server


def sales_reports(log_file): #creating function that makes a request to the server
    for line in log_file: #looping through the data in the server
        line = line.rstrip() #Taking a specific part off of a line of data
        day = line[0:3] #defining day should be the first index (day of week) and show the descriuption of what happened
        if day == "Mon": #if statement defineing what need to happen in order for the next line to take place (so if it isn't tuesday/monday it wont print)
            print(line) #displaying the variable line on the command line


sales_reports(log_file) #closing connection to server
