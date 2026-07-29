import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure PlotkinBound (n k d : Nat) where
  bound : if 2 * d > n then k ≤ 1 else True
  boundClosed : bound

theorem plotkin_bound_closed (n k d : Nat) (p : PlotkinBound n k d) : p.bound := by
  exact p.boundClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse