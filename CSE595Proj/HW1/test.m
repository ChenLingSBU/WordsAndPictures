
load lexicon_dog.mat
load lexicon.full.mat
tem_size = length(lexicon);
lenOfDog = length(lexicon_dog);

lexicon((tem_size+1):(tem_size+lenOfDog) )= lexicon_dog(:);