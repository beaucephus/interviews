# Write a function that:
#
# 1. accepts a single "collection" of strings as its input
# 2. returns a count of the number of strings in the collection whose first three characters match one another.
#
# For example, if someone was given the collection of the strings “hello”, “hell”, “ab”, and “bamboo”, they could use the output returned from the function to determine that there are 2 strings that start with “hel”, one string that starts with “ab”, and one string that starts with “bam”.

# Output
# { "hel": 2,
#   "ab": 1
# }

# For each word,
#   Insert word into hash if no word exists already. Value of word is 1.
#   If word exists, increment value.

def prefixMatchCount(words)
    output = {}

    words.each do |word|

        # Only need the first 3 letters of word if it has 3 letters.
        trimmed_word = word[0..2] # Check output of "ab[0..2]". Returns up to 3 characters, so works for String of length 0, 1, or 2.

        if output.key?(trimmed_word) # Word exists, increment count.
            output[trimmed_word] += 1 # Using trimmed_word for key is okay since the output only needs to pring the prefix that matches, not the entire word.
        else # Word doesn't exist yet. Create key with value 1.
            output[trimmed_word] = 1
        end
    end

    output
end



puts prefixMatchCount(
  [
    "hello",
    "hell",
    "ab",
    "bamboo"
  ]
)

# Verifying function works as expected...

