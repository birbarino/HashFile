# HashFile
Compute the SHA256 sum of a file inside of the right-click context menu on Windows!

Import the .reg file and store the .ps1 file in "C:\Users\Public\Public Documents\"
In order to run the script, you may need to modify execution policies (Set-ExecutionPolicy)

To execute after importing the registry keys: 
* Right-click a file
* Select "Hash this file (SHA256)"
* A .txt file will be dropped in the same location called "hash_FILENAME.txt", which has the SHA256 sum saved in it.
