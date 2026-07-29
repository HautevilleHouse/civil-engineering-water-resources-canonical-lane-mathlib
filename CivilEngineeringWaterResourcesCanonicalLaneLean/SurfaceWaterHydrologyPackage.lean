import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringWaterResourcesCanonicalLaneLean.GroundwaterFlowPackage

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure SurfaceWaterHydrologyPackage {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} where
  rainfallRunoffModeling : Prop
  streamflowRouting : Prop
  floodFrequencyAnalysis : Prop
  erosionSedimentTransport : Prop
  waterBalanceClosure : Prop

structure SurfaceWaterHydrologyEvidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} (S : SurfaceWaterHydrologyPackage H G) where
  rainfallRunoffModelingClosed : S.rainfallRunoffModeling
  streamflowRoutingClosed : S.streamflowRouting
  floodFrequencyAnalysisClosed : S.floodFrequencyAnalysis
  erosionSedimentTransportClosed : S.erosionSedimentTransport
  waterBalanceClosureClosed : S.waterBalanceClosure

def SurfaceWaterHydrologyClosed {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} (S : SurfaceWaterHydrologyPackage H G) : Prop :=
  S.rainfallRunoffModeling ∧ S.streamflowRouting ∧ S.floodFrequencyAnalysis ∧ S.erosionSedimentTransport ∧ S.waterBalanceClosure

theorem surface_water_hydrology_closed_from_evidence {H : HydrologicalCyclePackage} {G : GroundwaterFlowPackage H} (S : SurfaceWaterHydrologyPackage H G) (E : SurfaceWaterHydrologyEvidence S) : SurfaceWaterHydrologyClosed S := by
  exact And.intro E.rainfallRunoffModelingClosed
    (And.intro E.streamflowRoutingClosed
      (And.intro E.floodFrequencyAnalysisClosed
        (And.intro E.erosionSedimentTransportClosed E.waterBalanceClosureClosed)))

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
