import HautevilleHouse.BoundsCodesLemmaCanonicalLaneLean.BoundsCodePackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure LowerBoundLemmaPackage {B : BoundsCodePackage} (P : BoundsCodeEvidence B) where
  minDistanceBound : Prop
  optimalWeightConstant : Prop
  minDistanceBoundClosed : minDistanceBound
  optimalWeightConstantClosed : optimalWeightConstant

def LowerBoundLemmaClosed {B : BoundsCodePackage} {P : BoundsCodeEvidence B}
    (L : LowerBoundLemmaPackage P) : Prop :=
  L.minDistanceBound ∧ L.optimalWeightConstant

theorem lower_bound_lemma_closed_from_evidence
    {B : BoundsCodePackage} {P : BoundsCodeEvidence B}
    (L : LowerBoundLemmaPackage P) : LowerBoundLemmaClosed L := by
  exact And.intro L.minDistanceBoundClosed L.optimalWeightConstantClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse