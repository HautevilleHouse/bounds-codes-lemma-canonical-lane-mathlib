import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundCodeInequality where
  inequalityStatement : Prop
  proofMethod : Type
  assumptions : Prop
  conclusion : Prop
  inequalitySharpness : Prop
  extremalExamples : Prop

structure BoundCodeInequalityEvidence (I : BoundCodeInequality) where
  inequalityStatementClosed : I.inequalityStatement
  assumptionsClosed : I.assumptions
  conclusionClosed : I.conclusion
  inequalitySharpnessClosed : I.inequalitySharpness
  extremalExamplesClosed : I.extremalExamples

def BoundCodeInequalityClosed (I : BoundCodeInequality) : Prop :=
  I.inequalityStatement ∧ I.assumptions ∧ I.conclusion ∧
  I.inequalitySharpness ∧ I.extremalExamples

theorem bound_code_inequality_closed_from_evidence (I : BoundCodeInequality)
    (E : BoundCodeInequalityEvidence I) : BoundCodeInequalityClosed I := by
  exact And.intro E.inequalityStatementClosed
    (And.intro E.assumptionsClosed
      (And.intro E.conclusionClosed
        (And.intro E.inequalitySharpnessClosed E.extremalExamplesClosed)))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse