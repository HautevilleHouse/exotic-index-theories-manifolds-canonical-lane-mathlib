import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure CyclicCohomology (A : Type u) where
  algebra : Type v
  cyclicComplex : Nat → Type w
  cyclicCohomologyGroups : Nat → Type x
  periodicity : Prop
  satisfiesExcision : Prop

structure CyclicCohomologyEvidence (C : CyclicCohomology ℂ) where
  periodicityClosed : C.periodicity
  satisfiesExcisionClosed : C.satisfiesExcision

def CyclicCohomologyClosed (C : CyclicCohomology ℂ) : Prop :=
  C.periodicity ∧ C.satisfiesExcision

theorem cyclic_cohomology_closed_from_evidence (C : CyclicCohomology ℂ)
    (ev : CyclicCohomologyEvidence C) : CyclicCohomologyClosed C := by
  exact And.intro ev.periodicityClosed ev.satisfiesExcisionClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse