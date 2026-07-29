import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringWaterResourcesCanonicalLaneLean.HydraulicStructuresPackage

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure WaterDistributionSystemsPackage {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} {U : HydraulicStructuresPackage H G S W} where
  pipeNetworkHydraulics : Prop
  demandModeling : Prop
  waterQualityInDistribution : Prop
  pumpStationDesign : Prop
  leakDetection : Prop

structure WaterDistributionSystemsEvidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} {U : HydraulicStructuresPackage H G S W} (D : WaterDistributionSystemsPackage H G S W U) where
  pipeNetworkHydraulicsClosed : D.pipeNetworkHydraulics
  demandModelingClosed : D.demandModeling
  waterQualityInDistributionClosed : D.waterQualityInDistribution
  pumpStationDesignClosed : D.pumpStationDesign
  leakDetectionClosed : D.leakDetection

def WaterDistributionSystemsClosed {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} {U : HydraulicStructuresPackage H G S W} (D : WaterDistributionSystemsPackage H G S W U) : Prop :=
  D.pipeNetworkHydraulics ∧ D.demandModeling ∧ D.waterQualityInDistribution ∧ D.pumpStationDesign ∧ D.leakDetection

theorem water_distribution_systems_closed_from_evidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} {U : HydraulicStructuresPackage H G S W} (D : WaterDistributionSystemsPackage H G S W U) (E : WaterDistributionSystemsEvidence D) : WaterDistributionSystemsClosed D := by
  exact And.intro E.pipeNetworkHydraulicsClosed
    (And.intro E.demandModelingClosed
      (And.intro E.waterQualityInDistributionClosed
        (And.intro E.pumpStationDesignClosed E.leakDetectionClosed)))

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
