# $1 should contain the python exporter
# $2 should contain the directory which contains the example files
if [ $# -eq 0 ]
    then 
        directory="../examples";
        program="lottie-exporter.py"
    else
        directory=$2
        program=$1
fi
full_path="$directory/*.sif"
for filename in $full_path; do echo $filename; python3 $program $filename; done
