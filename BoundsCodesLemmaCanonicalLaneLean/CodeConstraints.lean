import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodeConstraintsPackage where
  codeLength : ℕ
  codeSize : ℕ
  minDistance : ℕ
  alphabetSize : ℕ
  linearity : Bool
  cyclic : Bool
  mds : Bool

structure CodeConstraintsEvidence (C : CodeConstraintsPackage) where
  linearityEvidence : C.linearity
  cyclicEvidence : C.cyclic
  mdsEvidence : C.mds

def CodeConstraintsClosed (C : CodeConstraintsPackage) : Prop :=
  C.linearity ∧ C.cyclic ∧ C.mds

theorem code_constraints_closed_from_evidence (C : CodeConstraintsPackage) (E : CodeConstraintsEvidence C) : CodeConstraintsClosed C := by
  exact And.intro E.linearityEvidence (And.intro E.cyclicEvidence E.mdsEvidence)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse