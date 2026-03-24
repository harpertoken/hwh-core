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

def ofNat (n : Nat) : Height := ⟨n⟩

@[simp] theorem val_ofNat (n : Nat) : (Height.ofNat n).val = n := rfl

end Height

namespace Width

def ofNat (n : Nat) : Width := ⟨n⟩

@[simp] theorem val_ofNat (n : Nat) : (Width.ofNat n).val = n := rfl

end Width

end Hwh
