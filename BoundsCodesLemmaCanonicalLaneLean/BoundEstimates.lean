import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundEstimatesPackage where
  entropyUpperBound : Prop
  complexityLowerBound : Prop
  convergenceRadius : Prop
  tightnessCondition : Prop

structure BoundEstimatesEvidence (P : BoundEstimatesPackage) where
  entropyUpperBoundClosed : P.entropyUpperBound
  complexityLowerBoundClosed : P.complexityLowerBound
  convergenceRadiusClosed : P.convergenceRadius
  tightnessConditionClosed : P.tightnessCondition

def BoundEstimatesClosed (P : BoundEstimatesPackage) : Prop :=
  P.entropyUpperBound ∧ P.complexityLowerBound ∧ P.convergenceRadius ∧ P.tightnessCondition

theorem bound_estimates_closed_from_evidence (P : BoundEstimatesPackage) (E : BoundEstimatesEvidence P) :
    BoundEstimatesClosed P := by
  exact And.intro E.entropyUpperBoundClosed (And.intro E.complexityLowerBoundClosed (And.intro E.convergenceRadiusClosed E.tightnessConditionClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse