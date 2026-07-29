import HautevilleHouse.CivilEngineeringWaterResourcesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
