import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure Code (n : ℕ) (M : ℕ) where
  alphabetSize : ℕ
  code : Set (Fin n → Fin alphabetSize)
  size : ℕ
  sizeIsCardinal : size = Finset.card (Finset.filter (λ _ => True) Finset.univ) -- placeholder

structure CodeDistance (α : Type) [DecidableEq α] where
  minDistance : ℕ
  minDistancePos : minDistance > 0

structure BoundParameters where
  blockLength : ℕ
  rate : ℚ
  minDistance : ℕ

structure BoundsCodeEvidence (B : BoundParameters) where
  upperBoundAchieved : Prop
  lowerBoundAchieved : Prop
  boundClosed : upperBoundAchieved ∧ lowerBoundAchieved

def BoundsCodeClosed (B : BoundParameters) : Prop :=
  B.rate ≤ 1 ∧ B.minDistance > 0

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse