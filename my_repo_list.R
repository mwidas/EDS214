library(httr)
library(purrr)

r <- GET("https://api.github.com/users/mwidas/repos")

#Extract the content rom the response
my_repos_list <- content(r) 

# Extract what we want from the list
my_repos <- map_chr(my_repos_list, "full_name")

my_repos[1:2]
