import re
from collections import defaultdict

def firstRepeatedWord(sentence: str):
    words_dict = defaultdict(int)

    words = re.split('\s+|\t+|\.+|,+|:+|;+|-+', sentence)

    for word in words:
        words_dict[word] += 1
        if words_dict[word] >= 2:
            return word
