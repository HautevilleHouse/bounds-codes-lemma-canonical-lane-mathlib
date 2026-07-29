import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.DelsarteLinearProgramming

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure SpherePackingBounds {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} where
  dimension : ℕ
  packingDensity : ℝ
  kissingNumber : ℕ
  optimalDensity : Prop
  kissingBound : Prop

structure SpherePackingEvidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} (S : SpherePackingBounds L D) where
  dimensionPositive : S.dimension > 0
  densityNonnegative : S.packingDensity ≥ 0
  optimalDensityClosed : S.optimalDensity
  kissingBoundClosed : S.kissingBound

def SpherePackingClosed {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} (S : SpherePackingBounds L D) : Prop :=
  S.dimension > 0 ∧ S.packingDensity ≥ 0 ∧ S.optimalDensity ∧ S.kissingBound

theorem sphere_packing_closed_from_evidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} (S : SpherePackingBounds L D) (E : SpherePackingEvidence S) : SpherePackingClosed S :=
  And.intro E.dimensionPositive (And.intro E.densityNonnegative (And.intro E.optimalDensityClosed E.kissingBoundClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse