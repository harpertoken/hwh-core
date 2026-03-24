import Hwh

open Hwh

def demo : IO Unit := do
  let r : Rect := ⟨Height.mk 10, Width.mk 20⟩
  IO.println s!"area = {r.area}"

def main : IO Unit :=
  demo
