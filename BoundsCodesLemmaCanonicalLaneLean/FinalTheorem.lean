import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def ConstrainedBoundsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bounds_endgame (A : AdmissibleClass) :
    ConstrainedBoundsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse