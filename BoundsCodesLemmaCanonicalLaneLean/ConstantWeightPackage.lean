import BoundsCodesLemmaCanonicalLaneLean.AsymptoticRatePackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure ConstantWeightPackage where
  length : ℕ
  weight : ℕ
  alphabetSize : ℕ
  constantWeightCondition : Prop
  sizeBound : Prop
  delsarteLinearProgramming : Prop

def ConstantWeightClosed (C : ConstantWeightPackage) : Prop :=
  C.constantWeightCondition ∧ C.sizeBound ∧ C.delsarteLinearProgramming

structure ConstantWeightEvidence (C : ConstantWeightPackage) where
  constantWeightClosed : C.constantWeightCondition
  sizeBoundClosed : C.sizeBound
  delsarteClosed : C.delsarteLinearProgramming

theorem constant_weight_closed_from_evidence (C : ConstantWeightPackage) (E : ConstantWeightEvidence C) :
    ConstantWeightClosed C := by
  exact And.intro E.constantWeightClosed (And.intro E.sizeBoundClosed E.delsarteClosed)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse