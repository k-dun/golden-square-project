1. 
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. 
# 'calculate time' calculates the time it'll take to read text provided
estimate_time = calculate_time(text)

text: string (e.g. "Lorem Ipsum")
estimate_time: time it'll take to read the text

# The method doesn't print anything, only returns the time it'll take.

3. 

calculate_time(string containing 200 words) = "1 min"
calculate_time(string containing 400 words) = "2 min"
calculate_time(string containing 100 words) = "1 min"
calculate_time(string containing 150 words) = "1 min"
calculate_time("") throws an error
calculate_time(nil) throws an error