import BoundsCodesLemmaCanonicalLaneLean.BoundsCodesBridgeLemmas

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse