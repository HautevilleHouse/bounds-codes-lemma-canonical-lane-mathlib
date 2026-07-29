import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodesDomain where
  alphabet : Type
  words : List alphabet
  code : words → List Bool
  distanceMetric : (List Bool) → (List Bool) → ℕ
  hammingDistanceDefined : Prop
  minimumDistance : ℕ
  minimumDistancePos : minimumDistance > 0

def BoundsWitnessClosed (O : BoundsAdmittedObject) : Prop :=
  O.finalBound

structure BoundsCodesEvidence (D : BoundsCodesDomain) where
  hammingDistanceDefinedClosed : D.hammingDistanceDefined
  minimumDistancePosClosed : D.minimumDistancePos

def BoundsCodesClosed (D : BoundsCodesDomain) : Prop :=
  D.hammingDistanceDefined ∧ D.minimumDistancePos

theorem bounds_codes_closed_from_evidence (D : BoundsCodesDomain)
    (E : BoundsCodesEvidence D) : BoundsCodesClosed D := by
  exact And.intro E.hammingDistanceDefinedClosed E.minimumDistancePosClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse
