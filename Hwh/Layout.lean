import Hwh.Rect

namespace Hwh

/-!
A tiny “layout” model: a layout is just a list of rectangles.

This is intentionally small; you can later evolve this into a richer DSL
(constraints, adjacency, packing, etc.).
-/

abbrev Layout := List Rect

namespace Layout

def totalArea (xs : Layout) : Nat :=
  xs.foldl (fun acc r => acc + r.area) 0

@[simp] theorem totalArea_nil : totalArea ([] : Layout) = 0 := rfl

theorem foldl_totalArea_add (xs : Layout) (acc : Nat) :
    xs.foldl (fun a r => a + r.area) acc =
      acc + xs.foldl (fun a r => a + r.area) 0 := by
  induction xs generalizing acc with
  | nil =>
      simp
  | cons r xs ih =>
      simp [List.foldl]
      rw [ih (acc := acc + r.area)]
      rw [ih (acc := r.area)]
      exact Nat.add_assoc acc r.area (xs.foldl (fun a r => a + r.area) 0)

theorem totalArea_cons (r : Rect) (xs : Layout) :
    totalArea (r :: xs) = r.area + totalArea xs := by
  unfold totalArea
  simp [List.foldl]
  simpa using (foldl_totalArea_add (xs := xs) (acc := r.area))

end Layout

end Hwh
