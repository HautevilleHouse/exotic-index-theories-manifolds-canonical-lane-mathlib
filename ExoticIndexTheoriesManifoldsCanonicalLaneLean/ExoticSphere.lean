import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure ExoticSpherePackage where
  dimension : Nat
  exoticSphere : Type u
  homeomorphicToSphere : Prop
  notDiffeomorphicToSphere : Prop
  signatureZero : Prop

structure ExoticSphereEvidence (S : ExoticSpherePackage) where
  exoticSphereClosed : S.exoticSphere
  homeomorphicToSphereClosed : S.homeomorphicToSphere
  notDiffeomorphicToSphereClosed : S.notDiffeomorphicToSphere
  signatureZeroClosed : S.signatureZero

def ExoticSphereClosed (S : ExoticSpherePackage) : Prop :=
  S.exoticSphere ∧ S.homeomorphicToSphere ∧ S.notDiffeomorphicToSphere ∧ S.signatureZero

theorem exotic_sphere_closed_from_evidence (S : ExoticSpherePackage) (E : ExoticSphereEvidence S) : ExoticSphereClosed S := by
  exact And.intro E.exoticSphereClosed (And.intro E.homeomorphicToSphereClosed (And.intro E.notDiffeomorphicToSphereClosed E.signatureZeroClosed))

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse