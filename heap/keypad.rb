# Write a function that returns how long it takes to enter a password into a
# 4 x 4 keypad, with a single finger.

# - The keypad layout is a square that has 4 rows and 4 columns of keys.
#   Each key is an alphanumeric character (letter or number).

# - Your finger starts at the first key of the password, so no time is spent
#   before pressing the first key

# - You can press a key instantly

# - It takes 1 second to move your finger from one key to an adjacent key,
#   including diagonally adjacent keys

# Here is a diagram that clarifies this visually:
# https://drive.google.com/file/d/1r8sEo3owGTbKnwa2GqnoCG_b8TeY9XtD/view

# Your function takes two inputs:
# - password: String to type into the keypad. Arbitrary length, at least one character.
# - keypad: String of 16 characters where each group of 4 characters represents
#   a row on the keypad, in order. For example, 0123456789abcdef
#   represents the keypad:

# 0 1 2 3
# 4 5 6 7
# 8 9 a b
# c d e f

# Example:
# - entryTime("15ebb", "0123456789abcdef")
# - password: "15ebb"
# - keypad: "0123456789abcdef"

# 0 1 2 3
# 4 5 6 7
# 8 9 a b
# c d e f

# We calculate the time it takes to type password = 15ebb as follows:
# 1: We start at this key so it takes 0 seconds.
# 5: It takes 1 second to move from 1 -> 5
# e: It takes 2 seconds to move from 5 -> e
# b: It takes 1 second to move from e -> b
# b: It takes 0 seconds to move from b -> b
# The total time is 4.

# Example with different keypad:
# - entryTime("15ebb", "9ab567cd480e123f") == 7

# 9 a b 5
# 6 7 c d
# 4 8 0 e
# 1 2 3 f

# We calculate the time it takes to type password = 15ebb as follows:
# 1: We start at this key so it takes 0 seconds.
# 5: It takes 3 seconds to move from 1 -> 5
# e: It takes 2 seconds to move from 5 -> e
# b: It takes 2 seconds to move from e -> b
# b: It takes 0 seconds to move from b -> b
# The total time is 7.

class Grid
  attr_accessor :grid

  def initialize(grid_string)
    @grid = [[],[],[],[]]

    string_index = 0

    (0..3).each do |row_index|
      (0..3).each do |column_index|
        @grid[row_index][column_index] = grid_string[string_index]

        string_index += 1
      end
    end
  end

  def print
    puts @grid.inspect
  end

  def distance(a, b)

  end

  def row_inxex(key)

  end

  def column_index(key)

  end
end

def entryTime(password, keypad)
  former_button_press_index = 0
  latter_button_press_index = 1
  sum = 0

  grid = Grid.new("0123456789abcdef")

  while b < password.length
    sum += grid.distance(password[a], password[b])

    a += 1
    b += 1
  end
end

def distance(index_a, index_b)

end

# entryTime("15ebb", "0123456789abcdef")


