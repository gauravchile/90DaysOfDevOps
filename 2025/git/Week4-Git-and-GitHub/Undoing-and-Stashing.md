# 3. Undoing Changes & Stashing

## What I Learned
- Git provides multiple ways to undo changes safely.
- `reset`, `revert`, and `restore` handle different recovery scenarios.
- `stash` temporarily saves uncommitted work.

---

## Key Commands

| Command | Description |
|----------|-------------|
| `git reset --soft HEAD~1` | Undo last commit (keep changes staged) |
| `git reset --hard HEAD~1` | Remove last commit completely |
| `git revert <commit>` | Create a new commit that undoes previous changes |
| `git stash` | Save current changes temporarily |
| `git stash pop` | Reapply stashed changes and remove from stash |
| `git stash list` | View saved stashes |

---

## Notes
- `reset` rewinds history; `revert` creates a new reversal commit.
- Use `stash` to switch branches without committing incomplete work.

---

## Reflection
Practiced recovering mistakes without losing progress.  
Learned safe rollback strategies essential for production workflows.

