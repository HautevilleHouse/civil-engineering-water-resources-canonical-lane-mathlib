import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaterResourcesAdmittedObject where
  catchmentArea : Prop
  streamflowRegulated : Prop
  sustainableYield : Prop
  waterBalanceClosed : Prop
  conclusion : waterBalanceClosed

structure PoincareSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PoincareAdmittedObject where
  space : PoincareSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def WaterResourcesWitnessClosed (O : WaterResourcesAdmittedObject) : Prop :=
  O.waterBalanceClosed

def PoincareWitnessClosed (O : PoincareAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
