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

theorem totalArea_cons (r : Rect) (xs : Layout) :
    totalArea (r :: xs) = r.area + totalArea xs := by
  simp [totalArea, List.foldl]

end Layout

end Hwh
