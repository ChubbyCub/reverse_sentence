# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  end
  # reverse the whole sentence
  reverse(my_sentence, 0, my_sentence.length - 1)

  # reverse each individual word
  low = 0
  high = 0
  while high < my_sentence.length
    if my_sentence[low] == ' '
      low += 1
      high = low
    end

    while high < my_sentence.length && my_sentence[high] != ' '
      high += 1
    end

    reverse(my_sentence, low, high - 1)
    low = high
  end
end

def reverse(input, low, high)
  while low < high
    temp = input[low]
    input[low] = input[high]
    input[high] = temp
    low += 1
    high -= 1
  end
end
