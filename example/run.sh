# compiler
# cd ..
# ./configure --with-openfst-includes=/Users/sooda/speech/kaldi/tools/openfst-1.6.5/include --with-openfst-libs=/Users/sooda/speech/kaldi/tools/openfst-1.6.5/lib --prefix=`pwd` --enable-python

phonetisaurus-align --input=cmudict.formatted.dict --ofile=train/model.corpus --seq2_del
estimate-ngram -o 8 -t train/model.corpus   -wl train/model.o8.arpa
phonetisaurus-arpa2wfst --lm=train/model.o8.arpa --ofile=train/model.fst


#test
phonetisaurus-apply --model train/model.fst --word_list test.wlist -n 2 -g -v -l cmudict.formatted.dict
phonetisaurus-apply --model train/model.fst --word_list test.wlist -v -a -p 0.85 -pr
