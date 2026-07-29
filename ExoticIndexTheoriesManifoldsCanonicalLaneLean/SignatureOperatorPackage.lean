import ExoticIndexTheoriesManifoldsCanonicalLaneLean.ExoticIndexAdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure SignatureOperatorPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  signatureOperator : Type v
  indexDefined : Prop
  indexComputed : Prop

structure SignatureOperatorEvidence (S : SignatureOperatorPackage) where
  smoothStructureClosed : S.smoothStructure
  indexDefinedClosed : S.indexDefined
  indexComputedClosed : S.indexComputed

def SignatureOperatorClosed (S : SignatureOperatorPackage) : Prop :=
  S.smoothStructure ∧ S.indexDefined ∧ S.indexComputed

theorem signature_operator_closed_from_evidence (S : SignatureOperatorPackage)
    (E : SignatureOperatorEvidence S) : SignatureOperatorClosed S := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.indexDefinedClosed E.indexComputedClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse