import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodePackage where
  codeWeight : Type
  dimensionExponent : Type
  independentComponent : Prop
  dependentComponent : Prop
  decodableCondition : Prop
  errorProbabilityBound : Prop
  epsilon : Float

structure BoundsCodeEvidence (B : BoundsCodePackage) where
  independentComponentClosed : B.independentComponent
  dependentComponentClosed : B.dependentComponent
  decodableConditionClosed : B.decodableCondition
  errorProbabilityBoundClosed : B.errorProbabilityBound

def BoundsCodeClosed (B : BoundsCodePackage) : Prop :=
  B.independentComponent ∧ B.dependentComponent ∧
  B.decodableCondition ∧ B.errorProbabilityBound

theorem bounds_code_closed_from_evidence
    (B : BoundsCodePackage) (E : BoundsCodeEvidence B) :
    BoundsCodeClosed B := by
  exact And.intro E.independentComponentClosed
    (And.intro E.dependentComponentClosed
      (And.intro E.decodableConditionClosed E.errorProbabilityBoundClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse