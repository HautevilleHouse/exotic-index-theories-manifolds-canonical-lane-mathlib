import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure IndexTheoremPackage (M : Type u) [TopologicalSpace M] where
  ellipticOperator : Type v
  analyticIndex : Type w
  topologicalIndex : Type x
  indexEquality : Prop
  indexTheoremProved : Prop

structure IndexTheoremEvidence {M : Type u} [TopologicalSpace M]
    (P : IndexTheoremPackage M) where
  indexEqualityClosed : P.indexEquality
  indexTheoremProvedClosed : P.indexTheoremProved

def IndexTheoremClosed {M : Type u} [TopologicalSpace M]
    (P : IndexTheoremPackage M) : Prop :=
  P.indexEquality ∧ P.indexTheoremProved

theorem index_theorem_closed_from_evidence {M : Type u} [TopologicalSpace M]
    (P : IndexTheoremPackage M) (ev : IndexTheoremEvidence P) :
    IndexTheoremClosed P := by
  exact And.intro ev.indexEqualityClosed ev.indexTheoremProvedClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse