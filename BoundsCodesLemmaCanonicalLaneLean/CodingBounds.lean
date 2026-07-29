import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodingBoundsPackage where
  codeLength : Nat
  dimension : Nat
  minimumDistance : Nat
  alphabetSize : Nat
  hammingBoundSatisfied : Prop
  singletonBoundSatisfied : Prop
  plotkinBoundSatisfied : Prop
  spherePackingBoundSatisfied : Prop

structure CodingBoundsEvidence (B : CodingBoundsPackage) where
  hammingBoundSatisfiedClosed : B.hammingBoundSatisfied
  singletonBoundSatisfiedClosed : B.singletonBoundSatisfied
  plotkinBoundSatisfiedClosed : B.plotkinBoundSatisfied
  spherePackingBoundSatisfiedClosed : B.spherePackingBoundSatisfied

def CodingBoundsClosed (B : CodingBoundsPackage) : Prop :=
  B.hammingBoundSatisfied ∧ B.singletonBoundSatisfied ∧
  B.plotkinBoundSatisfied ∧ B.spherePackingBoundSatisfied

theorem coding_bounds_closed_from_evidence (B : CodingBoundsPackage)
    (E : CodingBoundsEvidence B) : CodingBoundsClosed B := by
  exact And.intro E.hammingBoundSatisfiedClosed
    (And.intro E.singletonBoundSatisfiedClosed
      (And.intro E.plotkinBoundSatisfiedClosed E.spherePackingBoundSatisfiedClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse