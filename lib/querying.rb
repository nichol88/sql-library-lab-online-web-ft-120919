def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id = 1
  ORDER BY books.year
  ;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY length(characters.motto) DESC LIMIT 1
  ;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1
  ;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  LEFT JOIN series ON series.author_id = authors.id
  LEFT JOIN subgenres ON series.subgenre_id = subgenres.id
  ;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  LEFT JOIN books ON books.id = series.book_id
  LEFT JOIN character_books ON series.book_id = books.id
  LEFT JOIN characters ON characters.id = character_books.character_id
  WHERE characters.species = 'human'
  GROUP BY characters.species
  LIMIT 1
  ;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
