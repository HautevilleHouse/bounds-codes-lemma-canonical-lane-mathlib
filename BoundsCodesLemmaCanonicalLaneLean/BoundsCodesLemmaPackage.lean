import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodesLemmaPackage where
  problemParameters : Type
  boundCoefficients : Type
  codeParameters : Type
  lemmaStatement : Prop
  boundSatisfaction : Prop
  codeConstraintsSatisfied : Prop
  parametersCompatible : Prop

structure BoundsCodesLemmaEvidence (P : BoundsCodesLemmaPackage) where
  lemmaStatementClosed : P.lemmaStatement
  boundSatisfactionClosed : P.boundSatisfaction
  codeConstraintsSatisfiedClosed : P.codeConstraintsSatisfied
  parametersCompatibleClosed : P.parametersCompatible

def BoundsCodesLemmaClosed (P : BoundsCodesLemmaPackage) : Prop :=
  P.lemmaStatement ∧ P.boundSatisfaction ∧ P.codeConstraintsSatisfied ∧ P.parametersCompatible

theorem bounds_codes_lemma_closed_from_evidence (P : BoundsCodesLemmaPackage)
    (E : BoundsCodesLemmaEvidence P) : BoundsCodesLemmaClosed P := by
  exact And.intro E.lemmaStatementClosed
    (And.intro E.boundSatisfactionClosed
      (And.intro E.codeConstraintsSatisfiedClosed E.parametersCompatibleClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse