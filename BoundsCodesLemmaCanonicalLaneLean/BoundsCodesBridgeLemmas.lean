import BoundsCodesLemmaCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.boundSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.boundSatisfied

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse