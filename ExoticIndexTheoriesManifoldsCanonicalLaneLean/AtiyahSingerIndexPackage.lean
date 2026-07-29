import ExoticIndexTheoriesManifoldsCanonicalLaneLean.KOrientedBordismPackage

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure AtiyahSingerIndexPackage {K : KOrientedBordismPackage} where
  ellipticOperator : Type u
  symbolClass : Type v
  topIndexComputed : Prop
  analyticIndexEqualsTopologicalIndex : Prop

structure AtiyahSingerIndexEvidence {K : KOrientedBordismPackage}
    (A : AtiyahSingerIndexPackage K) where
  topIndexComputedClosed : A.topIndexComputed
  analyticIndexEqualsTopologicalIndexClosed : A.analyticIndexEqualsTopologicalIndex

def AtiyahSingerIndexClosed {K : KOrientedBordismPackage}
    (A : AtiyahSingerIndexPackage K) : Prop :=
  A.topIndexComputed ∧ A.analyticIndexEqualsTopologicalIndex

theorem atiyah_singer_index_closed_from_evidence
    {K : KOrientedBordismPackage} (A : AtiyahSingerIndexPackage K)
    (E : AtiyahSingerIndexEvidence A) : AtiyahSingerIndexClosed A := by
  exact And.intro E.topIndexComputedClosed E.analyticIndexEqualsTopologicalIndexClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse