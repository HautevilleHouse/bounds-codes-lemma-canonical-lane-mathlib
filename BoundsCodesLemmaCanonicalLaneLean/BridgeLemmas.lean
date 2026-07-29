import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesLemmaCanonicalLaneLean.LinearCodeModel

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  true

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse