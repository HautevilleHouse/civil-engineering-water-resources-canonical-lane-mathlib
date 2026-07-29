import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringWaterResourcesCanonicalLaneLean

structure HydrologicalCyclePackage where
  precipitationProcess : Prop
  evapotranspirationProcess : Prop
  infiltrationProcess : Prop
  runoffGeneration : Prop
  subsurfaceFlow : Prop

structure HydrologicalCycleEvidence (P : HydrologicalCyclePackage) where
  precipitationProcessClosed : P.precipitationProcess
  evapotranspirationProcessClosed : P.evapotranspirationProcess
  infiltrationProcessClosed : P.infiltrationProcess
  runoffGenerationClosed : P.runoffGeneration
  subsurfaceFlowClosed : P.subsurfaceFlow

def HydrologicalCycleClosed (P : HydrologicalCyclePackage) : Prop :=
  P.precipitationProcess ∧ P.evapotranspirationProcess ∧ P.infiltrationProcess ∧ P.runoffGeneration ∧ P.subsurfaceFlow

theorem hydrological_cycle_closed_from_evidence (P : HydrologicalCyclePackage) (E : HydrologicalCycleEvidence P) : HydrologicalCycleClosed P := by
  exact And.intro E.precipitationProcessClosed
    (And.intro E.evapotranspirationProcessClosed
      (And.intro E.infiltrationProcessClosed
        (And.intro E.runoffGenerationClosed E.subsurfaceFlowClosed)))

end CivilEngineeringWaterResourcesCanonicalLaneLean
end HautevilleHouse
