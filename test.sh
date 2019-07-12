# $1 should contain the python exporter
# $2 should contain the directory which contains the example files
if [ $# -eq 0 ]
    then 
        directory="../examples";
        program="lottie-exporter.py"
    else
        DIRECTORY=`pwd`
        directory=$2
        directory="$DIRECTORY/$directory"
        program=$1
fi
full_path="$directory/*.sif"
for filename in $full_path; do echo $filename; python3 $program $filename; done
