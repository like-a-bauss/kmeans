cp input/first.csv input/first_$1_$2.csv && sbatch -p test -n $1 -o ./time/$1_$2.txt --time=0-00:15:00 ompi kmeans/mpi_main -i input/first_$1_$2.csv -n $2 -o