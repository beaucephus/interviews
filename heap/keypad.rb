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

class Keypad
  attr_accessor :keypad

  def initialize(keypad)
    @keypad = keypad
  end

  def print
    puts @keypad.inspect
  end

  def distance(a, b)
    distanceByIndex(index(a), index(b))
  end

  private

  def distanceByIndex(index_a, index_b)
    row_a = index_a % 4
    row_b = index_b % 4

    row_distance = (row_a - row_b).abs

    column_a = index_a / 4
    column_b = index_b / 4

    column_distance = (column_a - column_b).abs

    row_distance > column_distance ? row_distance : column_distance
  end

  def index(key)
    @keypad.index(key)
  end
end

def entryTime(password, keypad)
  sum = 0
  keypad = Keypad.new(keypad)

  password.split("").each_with_index do |key_press, index|
    next_key_press = password[index + 1]
    break if next_key_press.nil?

    sum += keypad.distance(key_press, next_key_press)
  end

  sum
end

puts entryTime("15ebb", "0123456789abcdef")

puts entryTime("15ebb", "9ab567cd480e123f")


