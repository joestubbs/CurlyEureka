-- From the book, https://www.ma.imperial.ac.uk/~buzzard/xena/formalising-mathematics-2024/index.html

import Mathlib.Tactic


-- Declare P, Q, and R to be Propositions
variable (P Q R : Prop)


example (hP : P) (hQ : Q) (hR : R) : P := by exact hP


example (hQ : Q) : P → Q := by
  intro h -- intro tranforms a P => Q goal into a Q goal
  exact hQ


example (h : P → Q) (hP : P) : Q := by
  apply h hP


example (h : P → Q) (hP : P) : Q := by
  apply h hP


-- Assume `P → Q` and `P` is true. Deduce `Q`.
example (h: P → Q) (h2: P) : Q := by
  apply h h2


example : P → P := by
  exact


example : P → Q → P := by
