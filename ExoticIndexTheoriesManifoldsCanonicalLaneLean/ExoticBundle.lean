import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure ExoticBundlePackage where
  baseManifold : Type u
  totalSpace : Type u
  exoticStructure : Prop
  stableTriviality : Prop
  indexObstruction : Prop

structure ExoticBundleEvidence (P : ExoticBundlePackage) where
  exoticStructureClosed : P.exoticStructure
  stableTrivialityClosed : P.stableTriviality
  indexObstructionClosed : P.indexObstruction

def ExoticBundleClosed (P : ExoticBundlePackage) : Prop :=
  P.exoticStructure ∧ P.stableTriviality ∧ P.indexObstruction

theorem exotic_bundle_closed_from_evidence (P : ExoticBundlePackage) (E : ExoticBundleEvidence P) : ExoticBundleClosed P := by
  exact And.intro E.exoticStructureClosed (And.intro E.stableTrivialityClosed E.indexObstructionClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse