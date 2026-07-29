import BoundsCodesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BoundsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BoundsAdmittedObject where
  space : BoundsSpace
  finiteField : Prop
  codeLength : ℕ
  minimumDistance : ℕ
  dimension : ℕ
  boundsSatisfied : Prop
  conclusion : boundsSatisfied

structure BoundsEndgameState where
  object : BoundsAdmittedObject

def BoundsWitnessClosed (O : BoundsAdmittedObject) : Prop :=
  O.boundsSatisfied

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse