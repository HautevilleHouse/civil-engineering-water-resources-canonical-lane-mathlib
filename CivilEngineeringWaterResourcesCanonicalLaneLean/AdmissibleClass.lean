import HautevilleHouse.CivilEngineeringWaterResourcesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure AdmissibleClass where
  object : WaterResourcesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaterResourcesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
