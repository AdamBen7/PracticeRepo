function rtrn = integerize(A)

if A == uint8(A)
    rtrn = 'uint8';
    return
end
if A == uint16(A)
    rtrn = 'uint16';
    return
end
if A == uint32(A)
    rtrn = 'uint32';
    return
end
if A == uint64(A)
    rtrn = 'uint64';
    return
else
    rtrn = 'NONE';
end

    