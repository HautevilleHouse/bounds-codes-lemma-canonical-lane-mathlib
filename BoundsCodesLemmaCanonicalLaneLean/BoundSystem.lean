import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundSystem where
  boundType : Type
  boundGenerator : Type
  generationRule : Prop
  boundApproximation : Prop
  errorEstimates : Prop
  convergenceProperties : Prop
  boundStability : Prop

structure BoundSystemEvidence (B : BoundSystem) where
  boundGeneratorClosed : B.boundGenerator
  generationRuleClosed : B.generationRule
  boundApproximationClosed : B.boundApproximation
  errorEstimatesClosed : B.errorEstimates
  convergencePropertiesClosed : B.convergenceProperties
  boundStabilityClosed : B.boundStability

def BoundSystemClosed (B : BoundSystem) : Prop :=
  B.boundGenerator ∧ B.generationRule ∧ B.boundApproximation ∧
  B.errorEstimates ∧ B.convergenceProperties ∧ B.boundStability

theorem bound_system_closed_from_evidence (B : BoundSystem)
    (E : BoundSystemEvidence B) : BoundSystemClosed B := by
  exact And.intro E.boundGeneratorClosed
    (And.intro E.generationRuleClosed
      (And.intro E.boundApproximationClosed
        (And.intro E.errorEstimatesClosed
          (And.intro E.convergencePropertiesClosed E.boundStabilityClosed))))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse