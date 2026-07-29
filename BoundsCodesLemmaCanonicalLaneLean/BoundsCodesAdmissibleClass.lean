import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodesAdmittedObject where
  codeSpace : Type u
  alphabetSize : Nat
  length : Nat
  distance : Nat
  size : Nat
  boundViolated : Prop
  boundSatisfied : Prop

structure AdmissibleClass where
  object : BoundsCodesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse