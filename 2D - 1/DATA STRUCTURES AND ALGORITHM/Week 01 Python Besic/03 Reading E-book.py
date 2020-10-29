print("*** Reading E-Book ***")
text, highlight = input("Text , Highlight : ").split(",")

text = text.replace(highlight, '[' + highlight + ']')

print(text)