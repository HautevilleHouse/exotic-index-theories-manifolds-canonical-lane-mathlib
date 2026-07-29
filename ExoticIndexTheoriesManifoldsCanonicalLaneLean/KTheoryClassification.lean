import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure KTheoryGroup (M : Type u) [TopologicalSpace M] where
  vectorBundles : Type v
  groupOperation : Type w
  k0Group : Prop
  k1Group : Prop
  periodicityTheorem : Prop

structure KTheoryEvidence {M : Type u} [TopologicalSpace M] (K : KTheoryGroup M) where
  k0GroupClosed : K.k0Group
  k1GroupClosed : K.k1Group
  periodicityTheoremClosed : K.periodicityTheorem

def KTheoryClosed {M : Type u} [TopologicalSpace M] (K : KTheoryGroup M) : Prop :=
  K.k0Group ∧ K.k1Group ∧ K.periodicityTheorem

theorem k_theory_closed_from_evidence {M : Type u} [TopologicalSpace M]
    (K : KTheoryGroup M) (ev : KTheoryEvidence K) : KTheoryClosed K := by
  exact And.intro ev.k0GroupClosed (And.intro ev.k1GroupClosed ev.periodicityTheoremClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse