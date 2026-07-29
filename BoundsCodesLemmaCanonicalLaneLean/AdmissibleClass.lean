import BoundsCodesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BoundsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse