import HautevilleHouse.BoundsCodesLemmaCanonicalLaneLean.BoundsCodePackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure UpperBoundLemmaPackage {B : BoundsCodePackage} (P : BoundsCodeEvidence B) where
  spherePackingBound : Prop
  singletonBound : Prop
  spherePackingBoundClosed : spherePackingBound
  singletonBoundClosed : singletonBound

def UpperBoundLemmaClosed {B : BoundsCodePackage} {P : BoundsCodeEvidence B}
    (U : UpperBoundLemmaPackage P) : Prop :=
  U.spherePackingBound ∧ U.singletonBound

theorem upper_bound_lemma_closed_from_evidence
    {B : BoundsCodePackage} {P : BoundsCodeEvidence B}
    (U : UpperBoundLemmaPackage P) : UpperBoundLemmaClosed U := by
  exact And.intro U.spherePackingBoundClosed U.singletonBoundClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse