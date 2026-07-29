import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringWaterResourcesCanonicalLaneLean.HydrologicalCyclePackage

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure GroundwaterFlowPackage {H : HydrologicalCyclePackage} where
  darcyLawApplied : Prop
  aquiferCharacterization : Prop
  rechargeProcess : Prop
  wellHydraulics : Prop
  contaminationTransport : Prop

structure GroundwaterFlowEvidence {H : HydrologicalCyclePackage} (G : GroundwaterFlowPackage H) where
  darcyLawAppliedClosed : G.darcyLawApplied
  aquiferCharacterizationClosed : G.aquiferCharacterization
  rechargeProcessClosed : G.rechargeProcess
  wellHydraulicsClosed : G.wellHydraulics
  contaminationTransportClosed : G.contaminationTransport

def GroundwaterFlowClosed {H : HydrologicalCyclePackage} (G : GroundwaterFlowPackage H) : Prop :=
  G.darcyLawApplied ∧ G.aquiferCharacterization ∧ G.rechargeProcess ∧ G.wellHydraulics ∧ G.contaminationTransport

theorem groundwater_flow_closed_from_evidence {H : HydrologicalCyclePackage} (G : GroundwaterFlowPackage H) (E : GroundwaterFlowEvidence G) : GroundwaterFlowClosed G := by
  exact And.intro E.darcyLawAppliedClosed
    (And.intro E.aquiferCharacterizationClosed
      (And.intro E.rechargeProcessClosed
        (And.intro E.wellHydraulicsClosed E.contaminationTransportClosed)))

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
