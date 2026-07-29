import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringWaterResourcesCanonicalLaneLean.WaterQualityModelingPackage

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure HydraulicStructuresPackage {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} where
  damDesign : Prop
  spillwayHydraulics : Prop
  openChannelFlow : Prop
  culvertAnalysis : Prop
  floodControlStructures : Prop

structure HydraulicStructuresEvidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} (U : HydraulicStructuresPackage H G S W) where
  damDesignClosed : U.damDesign
  spillwayHydraulicsClosed : U.spillwayHydraulics
  openChannelFlowClosed : U.openChannelFlow
  culvertAnalysisClosed : U.culvertAnalysis
  floodControlStructuresClosed : U.floodControlStructures

def HydraulicStructuresClosed {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} (U : HydraulicStructuresPackage H G S W) : Prop :=
  U.damDesign ∧ U.spillwayHydraulics ∧ U.openChannelFlow ∧ U.culvertAnalysis ∧ U.floodControlStructures

theorem hydraulic_structures_closed_from_evidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} {S : SurfaceWaterHydrologyPackage H G} {W : WaterQualityModelingPackage H G S} (U : HydraulicStructuresPackage H G S W) (E : HydraulicStructuresEvidence U) : HydraulicStructuresClosed U := by
  exact And.intro E.damDesignClosed
    (And.intro E.spillwayHydraulicsClosed
      (And.intro E.openChannelFlowClosed
        (And.intro E.culvertAnalysisClosed E.floodControlStructuresClosed)))

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
