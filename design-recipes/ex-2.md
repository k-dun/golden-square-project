1. 
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. 
# 'check_grammar' checks whether the conditions are met
result = check_grammar(text)

text: string to be checked
result: boolean value of either true or false

# method doesn't print anything, just returns a boolean value

3. 
check_grammar("Konrad rules.") => true
check_grammar("Konrad doesn't rule") => false
check_grammar("konrad doesn't rule.") => false
check_grammar("konrad doesn't rule") => false

4. 