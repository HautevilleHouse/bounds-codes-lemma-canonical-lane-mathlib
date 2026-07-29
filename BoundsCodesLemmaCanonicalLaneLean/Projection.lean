import BoundsCodesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def boundsProjection : Projection BoundsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem bounds_projection_idempotent (x : BoundsEndgameState) :
    boundsProjection.toFun (boundsProjection.toFun x) = boundsProjection.toFun x := by
  exact boundsProjection.idempotent x

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse