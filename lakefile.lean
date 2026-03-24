import Lake
open Lake DSL

package «hwh_core» where
  -- Keep the project intentionally minimal and dependency-free.
  moreServerArgs := #["-K", "1024M"]

lean_lib Hwh where
  roots := #[`Hwh]

lean_exe hwh_core where
  root := `Main
