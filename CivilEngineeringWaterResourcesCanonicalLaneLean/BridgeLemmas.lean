import HautevilleHouse.CivilEngineeringWaterResourcesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaterResourcesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
