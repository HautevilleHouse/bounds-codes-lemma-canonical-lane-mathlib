import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure LinearProgrammingPackage where
  space : Type u
  innerProduct : Type v
  positiveDefinite : Prop
  distanceDistribution : Type w
  gegenbauerPolynomials : Type x
  linearProgram : Type y
  feasibleSolution : Prop
  optimalValue : ℝ

structure LinearProgrammingEvidence (L : LinearProgrammingPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  feasibleSolutionClosed : L.feasibleSolution
  optimalValueClosed : L.optimalValue ≥ 0

def LinearProgrammingClosed (L : LinearProgrammingPackage) : Prop :=
  L.positiveDefinite ∧ L.feasibleSolution ∧ (L.optimalValue ≥ 0)

theorem linear_programming_closed_from_evidence (L : LinearProgrammingPackage) (E : LinearProgrammingEvidence L) : LinearProgrammingClosed L :=
  And.intro E.positiveDefiniteClosed (And.intro E.feasibleSolutionClosed E.optimalValueClosed)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse