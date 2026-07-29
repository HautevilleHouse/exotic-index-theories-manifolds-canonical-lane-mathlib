import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  analyticalIndex : Type u
  topologicalIndex : Type u
  indexEquality : Prop
  exoticCorrection : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexEqualityClosed : I.indexEquality
  exoticCorrectionClosed : I.exoticCorrection

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexEquality ∧ I.exoticCorrection

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexEqualityClosed E.exoticCorrectionClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse