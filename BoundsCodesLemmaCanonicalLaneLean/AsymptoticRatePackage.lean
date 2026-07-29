import BoundsCodesLemmaCanonicalLaneLean.CodingBoundsPackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure AsymptoticRatePackage where
  rateFunction : ℝ → ℝ
  relativeDistance : ℝ → ℝ
  shannonBound : Prop
  mrrwBound : Prop
  linearProgrammingBound : Prop
  asymptoticBoundSatisfied : Prop

def AsymptoticRateClosed (A : AsymptoticRatePackage) : Prop :=
  A.shannonBound ∧ A.mrrwBound ∧ A.linearProgrammingBound ∧ A.asymptoticBoundSatisfied

structure AsymptoticRateEvidence (A : AsymptoticRatePackage) where
  shannonClosed : A.shannonBound
  mrrwClosed : A.mrrwBound
  linearProgrammingClosed : A.linearProgrammingBound
  asymptoticBoundClosed : A.asymptoticBoundSatisfied

theorem asymptotic_rate_closed_from_evidence (A : AsymptoticRatePackage) (E : AsymptoticRateEvidence A) :
    AsymptoticRateClosed A := by
  exact And.intro E.shannonClosed (And.intro E.mrrwClosed (And.intro E.linearProgrammingClosed E.asymptoticBoundClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse