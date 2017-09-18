(A)  
Input: git branch test1 
git branch test2  
Output: none  
(B)  
Input: git checkout test 1  
Output: switched to branch 'test1'  
(C)  
Input:edited file   
Output:none  
(D)  
Input: git stage test.txt  
git commit test.txt
Output: 1 file changed, 1 insertion(+)
 create mode 100644 homework/test.txt  
(E)  
Input: git checkout test 2  
ls  
Output:
readme.md  
Explanation: I did not see the file 'test.txt' because it was committed to the branch test1, and I was on the branch test2.  
(F)  
Input:edited file    
Output:none  
(G)  
Input: git checkout test1  
Output: error: The following untracked working tree files would be overwritten by checkout:  
        homework/test.txt  
Please move or remove them before you switch branches.  
Aborting  
FIX - Input: git stage test.txt  
git commit test.txt  

(H)  
Input:git merge test1 master  
Output:Removing .README.swp  
Merge made by the 'recursive' strategy.  
 .README.swp      | Bin 12288 -> 0 bytes  
 Portrait (2).jpg | Bin 0 -> 66657 bytes  
 README.md        |   5 +++--  
 3 files changed, 3 insertions(+), 2 deletions(-)  
 delete mode 100644 .README.swp  
 create mode 100644 Portrait (2).jpg  

(I)  
The content of master branch holds the readme.md file  

(J)  
Input: git merge test2 master  
Output: Auto-merging homework/test.txt  
CONFLICT (add/add): Merge conflict in homework/test.txt  
Automatic merge failed; fix conflicts and then commit the result.  
EX: the content of the two branches differ and therefore conflict with each other.  

(K)  
Input: git checkout test2   
Output:error: you need to resolve your current index first  
homework/test.txt: needs merge  

(L)  
Input: git status  
Output: On branch test2  
You have unmerged paths.  
  (fix conflicts and run "git commit")  
  (use "git merge --abort" to abort the merge)  

Unmerged paths:  
  (use "git add <file>..." to mark resolution)  
  
        both added:      test.txt  
  
Untracked files:  
  (use "git add <file>..." to include in what will be committed)  
  
        readme.md.txt  
  
no changes added to commit (use "git add" and/or "git commit -a")  
  
EX: the paths of the two branches conflict with each other, making merging impossible.  

(M)  
  
(N)  
Input: git status  
Output: On branch master  
Your branch is up-to-date with 'origin/master'.  
  
nothing to commit, working tree clean    
  
(O)  
Input: git branch -d test1  
Output: error: The branch 'test1' is not fully merged.  
If you are sure you want to delete it, run 'git branch -D test1'.   
  
(P)  
Input: git branch -d test1  
Output: Deleted branch test1 (was 53594ec).  
Input: git branch  
Output: * master  
  test2    
  
(Q)  
The master branch is the base, like the trunk of a tree, and test1 was a branch off of that, directly attached to master.  Branch test2 was not able to be deleted from another branch because they are not directly connected.   
	 
(R)  
Input: git branch -d test2  
Output: error: Cannot delete branch 'test2' checked out at 'C:/Users/Robbie/test/ICP2017F'    
  
(S)  
Input: git checkout master  
Output: Switched to branch 'master'  
Your branch is up-to-date with 'origin/master'.  
Input: git branch -d test2  
Output: Deleted branch test2 (was 58582a9).  
Input: ls  
Output: test.txt    
