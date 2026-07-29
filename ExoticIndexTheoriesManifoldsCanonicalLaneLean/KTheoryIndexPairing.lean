import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure KTheoryIndexPairingPackage where
  ellipticOperator : Type u
  symbolClass : Type v
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEquality : Prop
  exoticManifold : Bool
  kTheoryPairing : Prop

structure KTheoryIndexPairingEvidence (P : KTheoryIndexPairingPackage) where
  indexEqualityClosed : P.indexEquality
  exoticManifoldClosed : P.exoticManifold
  kTheoryPairingClosed : P.kTheoryPairing

def KTheoryIndexPairingClosed (P : KTheoryIndexPairingPackage) : Prop :=
  P.indexEquality ∧ P.exoticManifold ∧ P.kTheoryPairing

theorem k_theory_index_pairing_closed_from_evidence (P : KTheoryIndexPairingPackage)
    (E : KTheoryIndexPairingEvidence P) : KTheoryIndexPairingClosed P := by
  exact And.intro E.indexEqualityClosed
    (And.intro E.exoticManifoldClosed E.kTheoryPairingClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse