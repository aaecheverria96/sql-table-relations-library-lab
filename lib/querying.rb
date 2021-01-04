def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books JOIN series ON books.series_id = series.id ORDER BY books.year ASC LIMIT 3;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY characters.motto ASC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species ,COUNT(characters.species) FROM characters WHERE characters.species = 'human';"
end

def select_name_and_series_subgenres_of_authors
 
end

def select_series_title_with_most_human_characters
  "SELECT series.title, characters.species,  FROM series JOIN characters on characters.id = characters.serie_id WHERE characters.species = 'human' "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) FROM character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY COUNT(*) DESC, characters.name;"
end
