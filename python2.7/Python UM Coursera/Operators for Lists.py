#Operators for Lists
"""
listname.sort() #sort in alphabetical order. Number wise, then Upper Case Alpha. Lower case alpha.
listname.append("Word-you'd-like-to-add") #adds word into a list
listname = list() #makes the variable list into a list type.
list = float() #makes variable(which is a list in this case, into a float
print type(list) #prints what type the variable is.
print listname.count(an element) #prints number of the specified elements in the list
listname.extend("a sentence or word") #places each letter (including space)of the 
									  #sentence or word into the list. 
listname.insert(position, element) # inserts a word in a specific place. list.insert(0, "word") or 
									list.insert(len(list),"word")= list.append("word")
listname.remove("word")	#removes the first element which has "word" part of it.
listname.reverse() #reverses the order of the elements in a list
del list #removes the whole list/variable
del list["element's position"] #removes an element from the list del list[5]
listname.find("element") #gives position of element in the list.....might only work for strings!


"""
