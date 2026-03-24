import Hwh.Dim

namespace Hwh

structure Rect where
  h : Height
  w : Width
  deriving DecidableEq, Repr

namespace Rect

def area (r : Rect) : Nat :=
  r.h.val * r.w.val

@[simp] theorem area_mk (h : Height) (w : Width) :
    (Rect.area ⟨h, w⟩) = h.val * w.val := rfl

theorem area_comm (r : Rect) : r.area = r.w.val * r.h.val := by
  simp [Rect.area, Nat.mul_comm]

end Rect

end Hwh
