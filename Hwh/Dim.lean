namespace Hwh

/-!
Minimal “dimension” wrappers.

We keep these as simple newtypes over `Nat` so we can:
- avoid mixing up height and width by accident
- state small invariants explicitly
-/

structure Height where
  val : Nat
  deriving DecidableEq, Repr

structure Width where
  val : Nat
  deriving DecidableEq, Repr

namespace Height

def mk (n : Nat) : Height := ⟨n⟩

@[simp] theorem val_mk (n : Nat) : (Height.mk n).val = n := rfl

end Height

namespace Width

def mk (n : Nat) : Width := ⟨n⟩

@[simp] theorem val_mk (n : Nat) : (Width.mk n).val = n := rfl

end Width

end Hwh
