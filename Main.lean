import Hwh

open Hwh

def demo : IO Unit := do
  let r : Rect := ⟨Height.ofNat 10, Width.ofNat 20⟩
  IO.println s!"area = {r.area}"

def main : IO Unit :=
  demo
