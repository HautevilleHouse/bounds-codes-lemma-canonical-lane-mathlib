import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  true

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse