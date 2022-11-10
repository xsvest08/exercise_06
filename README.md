# Breakpoint method


### Task: `FindSorted()` function
Find an index, at which unsorted part starts.

Input: `0 1 2 3 6 7 4 5 8`

Output: `5` (the unsorted part starts at position 5)

**Help**: 
Compare successively values of permutation with a vector of increasing numbers starting at zero (`0 1 2 ...`). 
The vector to be compared starts with one value (`0`) and is extended by one value in each step (`0 1`, `0 1 2`, etc.), 
until it is identical to the corresponding part of the permutation vector. 
Alternatively, the reverse can be done, i.e. starting from the end, 
the comparison vector has the same length as the permutation vector and shortens until
 it is identical to the corresponding part of the permutation vector.

Functions that can be helpful: `identical()`, `as.integer()`


### Task: `IndicateAscending()` function
Indicate ascending and descending parts of the permutation.

Input: `0 4 5 3 2 1 6 7 8`

Output: `1 1 1 0 0 0 1 1 1`

**Help:**
Create an indication vector of the same length as the permutation vector containing only `0`values, 
and then set the first and last values to `1`. 
The ascending parts of the permutation vector will be marked with `1`values in the indication vector.
The loop iterates through the permutation vector, and if two values next to each other are ascending, 
i.e. the second is first + 1, then the indication vector is set to `1` at the given indices.


### Task: `BreakPointSort()` function
Sort a permutation using breakpoint method.

Input: `5 1 4 3 7 8 9 2 6`

Output: `1 2 3 4 5 6 7 8 9`

**Help:**
Add marginal values to the permutation vector. The following steps are repeated in the loop: 
* mark ascending/descending parts,
* find the smallest value of the descending ones,
* find the start of the unsorted region, 
* reversal between the start of the unsorted region and the smallest value of the descending ones. 

The cycle ends when the permutation vector is sorted. Watch out for collision situations.

Functions that can be helpful: `match()`, `which()`, `print()`, `identical()`, `as.integer()`

### Bonus task – Count chromosomal mutations
We have a vector of numbers that represents the order of the synteny blocks (e.g. `5 1 1 4 3 7 8 15 9 6`).
Find duplications (e.g. `1 1`), insertions (e.g. `15`) and deletions (e.g. missing `2`). 
Remove/insert these changes, each of these actions adds `+1` to the total number of chromosome mutations. 
What remains is a permutation vector, which will be sorted. 
Each reversal during sorting adds `+1` to the total number of chromosomal mutations.


<details>
<summary>Download files from GitHub</summary>
<details>
<summary>Git settings</summary>

> * Configure the Git editor
> ```bash
> git config --global core.editor notepad
> ```
> * Configure your name and email address
> ```bash
> git config --global user.name "Zuzana Nova"
> git config --global user.email z.nova@vut.cz
> ```
> * Check current settings
> ```bash
> git config --global --list
> ```
>
</details>

* Create a fork on your GitHub account. 
  On the GitHub page of this repository find a <kbd>Fork</kbd> button in the upper right corner.
  
* Cloned forked repository from your GitHub page to a folder in your computer:
```bash
git clone <fork repository address>
```
* In a local repository, set new remote for project repository:
```bash
git remote add upstream https://github.com/mpa-prg/exercise_06.git
```

### Send files to GitHub
Create a new commit and send new changes to your remote repository.
* Add file to a new commit.
```bash
git add <file_name>
```
* Create commit, enter commit message, save the file and close it.
```bash
git commit
```
* Send new commit to your GitHub repository.
```bash
git push origin master
```
</details>