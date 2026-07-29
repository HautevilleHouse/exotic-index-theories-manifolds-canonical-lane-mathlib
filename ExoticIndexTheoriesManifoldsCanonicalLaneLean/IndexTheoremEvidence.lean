import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure IndexTheoremEvidencePackage where
  ellipticOperator : Type u
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremEvidencePackage) where
  indexEqualityClosed : I.indexEquality

def IndexTheoremEvidenceClosed (I : IndexTheoremEvidencePackage) : Prop :=
  I.indexEquality

theorem index_theorem_evidence_closed_from_evidence (I : IndexTheoremEvidencePackage)
    (Ev : IndexTheoremEvidence I) : IndexTheoremEvidenceClosed I := by
  exact Ev.indexEqualityClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse