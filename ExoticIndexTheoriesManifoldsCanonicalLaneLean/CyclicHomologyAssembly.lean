import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifolds

structure CyclicHomologyPackage where
  algebra : Type u
  cyclicComplex : Type v
  periodicCyclicHomology : Type w
  spectralSequence : Type x
  cyclicComplexDefined : Prop
  periodicCyclicHomologyComputed : Prop

structure CyclicHomologyEvidence (C : CyclicHomologyPackage) where
  cyclicComplexDefinedClosed : C.cyclicComplexDefined
  periodicCyclicHomologyComputedClosed : C.periodicCyclicHomologyComputed

def CyclicHomologyClosed (C : CyclicHomologyPackage) : Prop :=
  C.cyclicComplexDefined ∧ C.periodicCyclicHomologyComputed

theorem cyclic_homology_closed_from_evidence (C : CyclicHomologyPackage)
    (Ev : CyclicHomologyEvidence C) : CyclicHomologyClosed C := by
  exact And.intro Ev.cyclicComplexDefinedClosed Ev.periodicCyclicHomologyComputedClosed

end ExoticIndexTheoriesManifolds
end HautevilleHouse