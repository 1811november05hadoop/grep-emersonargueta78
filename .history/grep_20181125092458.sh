#!/bin/bash

# 1. List the cities that start with the letter “Z”
# Output: Zaoshi, Zhukeng, Zhongxi, Zwettl, Zaragoza, Zheshart, Zhuji, Zadvorsko, Zhoujia.
# Note: Use regex with begining of line anchor. 
grep -G '^Z' cities.txt

# 2. List the cities that end with the word “gan”
# Output: Tougan, Pedaringan, Banjar Sambangan, Salingogan
# Note: Use regex with begining of line anchor. 
grep -G 'gan$' cities.tx

# 3. List the cities that start with “A”, “D”, or “E”
# Output: there is 53.


# 4. List the cities that have “a” as their second letter, and “r” as their third letter (consider cities with
# more than one word)
# Output: there is 22.


# 5. List the cities that don’t start with the letter “C”
# Output: there is 477.


# 6. List the cities that have at least 14 characters (hint: use egrep)
# Output: Saint-Laurent-du-Var, Charlottenberg, Atarodangwautu, Salon-de-Provence, Sendangkemulian,
# Nishi-Tokyo-shi, Karolino-Buhaz, Saint-Quentin-en-Yvelines, Challhuahuacho, Chervonopartyzans’k,
# Ambohitrolomahitsy.


# 7. Count how many cities start with the letter “B”
# Output: there is 39.


# 8. Count how many times the letter “d” repeats
# Output: there is 88.


# 9. List the cities that end with the same letter, twice (hint: use egrep)
# Output: Izobil’nyy, Invercargill, Ingersoll, Villa Gesell, Ishii, Ingersoll


# 10. List the palindrome cities with five characters
# Output: Anina, Navan, Noxon.
# Extra (though): do it for any amount of characters.

