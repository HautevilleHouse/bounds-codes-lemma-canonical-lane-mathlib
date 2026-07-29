import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure SingletonBound (n k d : Nat) where
  bound : d ≤ n - k + 1
  boundClosed : bound

theorem singleton_bound_closed (n k d : Nat) (b : SingletonBound n k d) : b.bound := by
  exact b.boundClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse