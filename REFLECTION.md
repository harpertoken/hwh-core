# Reflection

This repo is intentionally small: it is not a “layout engine”, and it is not trying to be clever. It is a place to practice making a concept precise.

## What I was testing

I wanted to see whether “HWH” could become something concrete without turning into a vague brand-name. The experiment was to:

- give height and width distinct identities (so they cannot be mixed by accident),
- write down a couple of basic facts (like area and simple aggregation),
- keep the surface area tiny enough that someone can clone the repo and understand it in one sitting.

## What worked

- Lean forces clarity. If an idea is ambiguous, it shows up quickly as friction in names, types, and proofs.
- A pinned toolchain makes “works on my machine” less of a story and more of a contract.
- The first executable matters. Even a trivial `area = 200` is a useful “the build is real” signal.

## What surprised me

The hardest part wasn’t math. It was habits: naming, keeping proofs readable, and learning where automation helps versus where it loops and hides the structure of the argument.

## What I want next

If this grows, I want it to grow along one axis at a time:

- a clearer vocabulary (dimensions, rectangles, constraints),
- one small DSL for layout composition,
- a handful of invariants that are actually worth proving.

If it stays small, that is also a valid outcome: a clean, stable core is sometimes the whole point.
