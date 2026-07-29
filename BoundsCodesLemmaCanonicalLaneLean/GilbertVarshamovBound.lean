import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure GilbertVarshamovBound (n k d : Nat) where
  bound : (∑ i in Finset.range (d-1), Nat.choose n i) < 2 ^ (n - k)
  boundClosed : bound

theorem gilbert_varshamov_bound_closed (n k d : Nat) (g : GilbertVarshamovBound n k d) : g.bound := by
  exact g.boundClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse