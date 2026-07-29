import BoundsCodesLemmaCanonicalLaneLean.BoundsCodesGateLemmas

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def ConstrainedBoundsCodesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bounds_codes_endgame (A : AdmissibleClass) :
    ConstrainedBoundsCodesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse