FROM rollmakron/gcc-base:ci

COPY main.c .

RUN ls -lha
RUN date
RUN lds lint
RUN gcc main.c -o main
RUN ./main
