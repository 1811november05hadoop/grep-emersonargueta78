#!/bin/bash

# 1. List the cities that start with the letter “Z”
# Output: Zaoshi, Zhukeng, Zhongxi, Zwettl, Zaragoza, Zheshart, Zhuji, Zadvorsko, Zhoujia.
# Note: Use regex with begining of line anchor. 
grep -G '^Z' cities.txt

# 2. List the cities that end with the word “gan”
# Output: Tougan, Pedaringan, Banjar Sambangan, Salingogan
# Note: Use regex with end of line anchor. 
grep -G 'gan$' cities.tx

# 3. List the cities that start with “A”, “D”, or “E”
# Output: there is 53.
#Note: Pipe grep to word count with counting line option
grep -G '^[ADE]' cities.txt | wc -l

# 4. List the cities that have “a” as their second letter, and “r” as their third letter (consider cities with
# more than one word)
# Output: there is 22.
#Note: search for every capital letter followed by 'ar' pattern
grep -G '[A-Z]ar' cities.txt | wc -l

# 5. List the cities that don’t start with the letter “C”
# Output: there is 477.
#Note: User begining of line anchor and negation character
grep -G '^[^C]' cities.txt | wc -l

# 6. List the cities that have at least 14 characters (hint: use egrep)
# Output: Saint-Laurent-du-Var, Charlottenberg, Atarodangwautu, Salon-de-Provence, Sendangkemulian,
# Nishi-Tokyo-shi, Karolino-Buhaz, Saint-Quentin-en-Yvelines, Challhuahuacho, Chervonopartyzans’k,
# Ambohitrolomahitsy.
#Note: First grep spaces from beggining to end of line 0 to n times then pipe to egrep matching any character
#at least 14 times
grep '^[^ ]*$' cities.txt | egrep '.{14,}'

# 7. Count how many cities start with the letter “B”
# Output: there is 39.
grep '^B' cities.txt | wc -l

# 8. Count how many times the letter “d” repeats
# Output: there is 88.
#Note: Print only matched then count lines
grep -o 'd' cities.txt | wc -l

# 9. List the cities that end with the same letter, twice (hint: use egrep)
# Output: Izobil’nyy, Invercargill, Ingersoll, Villa Gesell, Ishii, Ingersoll
#Note: Use any character and \n for matching with end of line anchor
egrep '([a-z])\1$' cities.txt

# 10. List the palindrome cities with five characters
# Output: Anina, Navan, Noxon.
# Extra (though): do it for any amount of characters.
