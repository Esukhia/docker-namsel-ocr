FROM thubtenrigzin/namsel-ocr:trained-01
WORKDIR /home/namsel-ocr
COPY preprocess .
COPY pecha .
COPY book .
COPY namsel-ocr .
RUN chmod a+x ./preprocess
RUN chmod a+x ./pecha
RUN chmod a+x ./book
RUN chmod a+x ./namsel-ocr