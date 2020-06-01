function xx = setkey2note(note)
load value.mat record
record.add(note);
save value.mat record -nocompression
xx = key2note(10*exp(j*pi),note,0.25);
end