import BoundsCodesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodingBoundsPackage where
  dimension : ℕ
  length : ℕ
  distance : ℕ
  alphabetSize : ℕ
  hammingBound : Prop
  plotkinBound : Prop
  singletonBound : Prop
  gilbertVarshamovBound : Prop

def CodingBoundsClosed (C : CodingBoundsPackage) : Prop :=
  C.hammingBound ∧ C.plotkinBound ∧ C.singletonBound ∧ C.gilbertVarshamovBound

structure CodingBoundsEvidence (C : CodingBoundsPackage) where
  hammingClosed : C.hammingBound
  plotkinClosed : C.plotkinBound
  singletonClosed : C.singletonBound
  gilbertVarshamovClosed : C.gilbertVarshamovBound

theorem coding_bounds_closed_from_evidence (C : CodingBoundsPackage) (E : CodingBoundsEvidence C) :
    CodingBoundsClosed C := by
  exact And.intro E.hammingClosed (And.intro E.plotkinClosed (And.intro E.singletonClosed E.gilbertVarshamovClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse