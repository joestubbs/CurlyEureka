-- Exercises from the textbook https://hrmacbeth.github.io/math2001/index.html
import Mathlib
import Mathlib.Tactic
-- import Library.Basic

-- Section 2
example {a b : ℝ} (h1 : a - 5 * b = 4) (h2 : b + 2 = 3) : a = 9 := by
  have hb : b = 1 := by linarith
  calc
    a = a - 5 * b + 5 * b := by ring
    _ = 4 + 5 * 1 := by rw [h1, hb]
    _ = 9 := by ring

-- example 2.1
-- Let m,n and be integers, and suppose that and m + 3 <= 2n + 1.
-- Show that m <= 6.
example {m n : ℕ} {h1 : m + 3 ≤ 2*n + 1} {h2 : n ≤ 5}: m ≤ 6 := by
  have h3 :=
    calc
       m + 3 ≤ 2 * n + 1 := by rel [h1]
       _ ≤ 2 * 5 + 1 := by rel [h2]
       _ ≤ 9 := by numbers
