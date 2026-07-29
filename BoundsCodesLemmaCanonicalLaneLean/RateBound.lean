import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure RateBound where
  communicationChannel : Type
  capacityExpression : Type
  achievableRate : Prop
  converseRate : Prop
  strongConverse : Prop
  channelVariants : Prop

structure RateBoundEvidence (R : RateBound) where
  achievableRateClosed : R.achievableRate
  converseRateClosed : R.converseRate
  strongConverseClosed : R.strongConverse
  channelVariantsClosed : R.channelVariants

def RateBoundClosed (R : RateBound) : Prop :=
  R.achievableRate ∧ R.converseRate ∧ R.strongConverse ∧ R.channelVariants

theorem rate_bound_closed_from_evidence (R : RateBound)
    (E : RateBoundEvidence R) : RateBoundClosed R := by
  exact And.intro E.achievableRateClosed
    (And.intro E.converseRateClosed
      (And.intro E.strongConverseClosed E.channelVariantsClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse