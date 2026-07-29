import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure PlotkinBoundPackage where
  length : ℕ
  distance : ℕ
  alphabetSize : ℕ
  maximalSize : ℕ
  boundHolds : maximalSize ≤ floor (distance / (distance - (alphabetSize - 1) / alphabetSize * length))

structure GilbertVarshamovBoundPackage where
  length : ℕ
  distance : ℕ
  alphabetSize : ℕ
  minimalSize : ℕ
  boundHolds : minimalSize ≥ ceil (q^length / sum_{i=0}^{distance-2} binom(length, i) * (q-1)^i)

structure ErrorCorrectionBoundsEvidence (P : PlotkinBoundPackage) (G : GilbertVarshamovBoundPackage) where
  plotkinEvidence : P.boundHolds
  gilbertVarshamovEvidence : G.boundHolds

def ErrorCorrectionBoundsClosed (P : PlotkinBoundPackage) (G : GilbertVarshamovBoundPackage) : Prop :=
  P.boundHolds ∧ G.boundHolds

theorem error_correction_bounds_closed_from_evidence (P : PlotkinBoundPackage) (G : GilbertVarshamovBoundPackage) (E : ErrorCorrectionBoundsEvidence P G) : ErrorCorrectionBoundsClosed P G := by
  exact And.intro E.plotkinEvidence E.gilbertVarshamovEvidence

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse