import Mathlib.Topology.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

open Nat
#eval gcd 6 4

#check dvd_gcd_iff
#check TopologicalSpace

example : ∀ m n : Nat, Even n → Even (m * n) := by sorry

example (m n : ℕ) : Even n → Even (m*n) := by sorry

example (m n : ℕ) (h: Even n) : Even (m*n) := by sorry

example (m n : ℕ) (h: Even n) : Even (m*n) := by sorry

example : (m n : ℕ) →  Even n → Even (m * n) := by sorry

theorem gcd1 (m n : ℕ) : gcd m n ∣ m := by sorry
theorem gcd2 (m n : ℕ) : gcd m n ∣ n := by sorry

theorem x (k m n : ℕ) (h: k ∣ gcd m n) : ∃ d : ℕ, k ∣ d ∧ d ∣ m := by
  use gcd m n
  apply And.intro
  assumption
  apply gcd1



theorem dtran (k m n : ℕ) (h1: k ∣ m) (h2: m ∣ n) : k ∣ n := by sorry


example : (n: ℕ) → n > 0 := by sorry


example : (k m n : ℕ) → k ∣ (gcd m n) ↔ k ∣ m ∧ k ∣ n := by
    intros k m n
    apply Iff.intro
    intro h
    have h2 : ∃ d : ℕ, k ∣ d ∧ d ∣ m := x k m n h
    apply And.intro
    have h3 : ∃ d, k ∣ d ∧ d ∣ m := h2
    cases h2


example: ∀ k m n : ℕ, k ∣  gcd m n ↔ k ∣  m ∧ k ∣  n := by sorry

#eval 6∣ 2

-- example : (m n k : ℕ) : k | m ∧ k | n ↔ k | gcd m n := by sorry



-- Examples from The Mechanics of Proof
-- https://hrmacbeth.github.io/math2001


-- Section 1.2
example {a b : ℚ} (h1 : a - b = 4) (h2 : a * b = 1) : (a + b) ^ 2 = 20 :=
  calc
    (a + b) ^ 2 = (a - b) ^ 2 + 4 * (a * b) := by ring
    _ = 4 ^ 2 + 4 * 1 := by rw [h1, h2]
    _ = 20 := by ring

-- Secion 2.1
example (a b : ℝ) (h1 : a - 5 * b = 4) (h2 : b + 2 = 3) : a = 9 :=
  calc
    a = a - 5 * b + 5 * b := by ring
