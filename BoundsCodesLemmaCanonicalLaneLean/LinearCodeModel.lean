import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure LinearCode (n k d : Nat) where
  field : Type u
  vectorSpace : Module (Ring.of field) (Fin n → field)
  dimension : k = FiniteDimensional.finrank (Ring.of field) (Fin n → field)
  minDistance : d = minimumWeight (Set.range (Submodule.toFun (Submodule.span (Ring.of field) (Set.range (fun i : Fin k => (fun v => v) : Fin n → field)))))
  codeClosed : Prop
  codeWitness : codeClosed

structure BoundsAdmissibleObject (n k d : Nat) where
  code : LinearCode n k d
  boundChecked : Prop
  boundWitness : boundChecked

def BoundsAdmissibleClass (n k d : Nat) := AdmissibleClass

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse