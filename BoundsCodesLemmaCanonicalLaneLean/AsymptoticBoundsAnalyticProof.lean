import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.CodingBoundsEvidence

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure AsymptoticBoundsAnalyticProof {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} (C : CodingBoundsEvidence L D S) where
  asymptoticRateFunction : ℝ → ℝ
  spherePackingBound : Prop
  entropyFunction : ℝ → ℝ
  lowerBound : ℝ
  upperBound : ℝ

structure AsymptoticBoundsEvidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} (A : AsymptoticBoundsAnalyticProof L D S C) where
  asymptoticRatePositive : ∀ r, A.asymptoticRateFunction r ≥ 0
  spherePackingBoundClosed : A.spherePackingBound
  lowerBoundClosed : A.lowerBound ≥ 0
  upperBoundFinite : A.upperBound < ∞

def AsymptoticBoundsClosed {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} (A : AsymptoticBoundsAnalyticProof L D S C) : Prop :=
  (∀ r, A.asymptoticRateFunction r ≥ 0) ∧ A.spherePackingBound ∧ (A.lowerBound ≥ 0) ∧ (A.upperBound < ∞)

theorem asymptotic_bounds_closed_from_evidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} (A : AsymptoticBoundsAnalyticProof L D S C) (E : AsymptoticBoundsEvidence A) : AsymptoticBoundsClosed A :=
  And.intro E.asymptoticRatePositive (And.intro E.spherePackingBoundClosed (And.intro E.lowerBoundClosed E.upperBoundFinite))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse