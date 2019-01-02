text = "X-DSPAM-Confidence:    0.8475";
numstart = text.find(":")
#print numstart
numend = text.find (";")
#print numend
value = text[numstart+1:numend]
print float(value)


x = "X-DSPAM-Confidence:    0.8475";
print x
pos = x.find(':')
print pos
print x[pos+1:]
num = float(x[pos+1:])
print num