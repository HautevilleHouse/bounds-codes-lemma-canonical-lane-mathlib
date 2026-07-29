import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.LinearProgrammingPackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure DelsarteLinearProgramming {L : LinearProgrammingPackage} where
  distanceSet : Set ℕ
  degree : ℕ
  feasiblePolynomial : (ℕ → ℚ)
  optimalValueEq : L.optimalValue = 0
  boundAchievable : Prop

structure DelsarteEvidence {L : LinearProgrammingPackage} (D : DelsarteLinearProgramming L) where
  distanceSetNonempty : D.distanceSet.Nonempty
  degreePositive : D.degree > 0
  boundAchievableClosed : D.boundAchievable

def DelsarteClosed {L : LinearProgrammingPackage} (D : DelsarteLinearProgramming L) : Prop :=
  D.distanceSet.Nonempty ∧ D.degree > 0 ∧ D.boundAchievable

theorem delsarte_closed_from_evidence {L : LinearProgrammingPackage} (D : DelsarteLinearProgramming L) (E : DelsarteEvidence D) : DelsarteClosed D :=
  And.intro E.distanceSetNonempty (And.intro E.degreePositive E.boundAchievableClosed)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse