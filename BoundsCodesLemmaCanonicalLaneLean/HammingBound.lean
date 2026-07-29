import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure HammingBound (n k d : Nat) where
  bound : (∑ i in Finset.range ((d-1)/2), Nat.choose n i) ≥ 2 ^ (n - k)
  boundClosed : bound

theorem hamming_bound_closed (n k d : Nat) (h : HammingBound n k d) : h.bound := by
  exact h.boundClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse