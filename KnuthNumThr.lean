-- import Mathlib.Algebra.Algebra.Basic
import Mathlib.Data.Nat.Notation
import Mathlib.Data.Set.Defs
import Mathlib.Tactic

#eval max 3 7

-- (4.1) m divides n iff mk = n for some k
def divides (m n : ℕ) : Prop := ∃ k : ℕ, m*k = n

theorem divides_imp_leq (m n : ℕ) (h1: n > 0) (h2: divides m n) : m <= n := by
  dsimp [divides] at h2
  obtain ⟨ k, h3 ⟩ := h2
  rw [← h3]
  have h4 : m * k > 0 := by rw [← h3] at h1 ; assumption
  have h5 : k > 0 := by
    by_contra h6
    push_neg at h6




def divisors (n : ℕ) : Set ℕ := { k : ℕ | divides k n }



-- (4.2) the gcd of two integers m and n is the largest
--       integer that divides both of them.
-- def gcd (m n : ℕ) := max
