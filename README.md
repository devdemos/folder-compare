# Folder-Compare
This script is used to compare two folders and identify the differences between the files and folders present in them. It contains two parts:

## Part 1
The first part of the script checks for differences in files/folders that don't exist in either folder. It excludes the .git directory while performing the comparison. The output is displayed in a colored format.

## Part 2
The second part of the script compares files present in both folders and outputs the differences between them. It also excludes the `.git` directory while comparing the files. 

The output is displayed with the file names and the differences between them.

## Usage 
To use this script, run it in the terminal with the two folders that need to be compared as the arguments.

Example:

```
$ ./compare_folders.sh /path/to/folder1 /path/to/folder2
```

> Note: Make sure that the script has executable permissions. You can set the executable permission using the command chmod +x compare_folders.sh.