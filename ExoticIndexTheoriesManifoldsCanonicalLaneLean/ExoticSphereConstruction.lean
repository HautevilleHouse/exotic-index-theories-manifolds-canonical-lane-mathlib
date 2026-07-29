import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure ExoticSphere where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Type v
  isHomeomorphicToSphere : Prop
  isNotDiffeomorphicToStandard : Prop

structure ExoticSphereEvidence (E : ExoticSphere) where
  homeomorphicToSphereClosed : E.isHomeomorphicToSphere
  notDiffeomorphicToStandardClosed : E.isNotDiffeomorphicToStandard

def ExoticSphereClosed (E : ExoticSphere) : Prop :=
  E.isHomeomorphicToSphere ∧ E.isNotDiffeomorphicToStandard

theorem exotic_sphere_closed_from_evidence (E : ExoticSphere) (ev : ExoticSphereEvidence E) :
    ExoticSphereClosed E := by
  exact And.intro ev.homeomorphicToSphereClosed ev.notDiffeomorphicToStandardClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse