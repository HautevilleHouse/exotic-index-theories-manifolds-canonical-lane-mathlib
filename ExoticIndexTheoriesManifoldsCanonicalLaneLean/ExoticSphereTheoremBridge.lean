import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifolds

structure ExoticSpherePackage where
  sphereDimension : Nat
  exoticStructureSpace : Type u
  indexInvariantMap : Type v
  diffeomorphismClassSet : Type w
  exoticStructureExists : Prop
  indexInvariantNontrivial : Prop

structure ExoticSphereEvidence (E : ExoticSpherePackage) where
  exoticStructureExistsClosed : E.exoticStructureExists
  indexInvariantNontrivialClosed : E.indexInvariantNontrivial

def ExoticSphereClosed (E : ExoticSpherePackage) : Prop :=
  E.exoticStructureExists ∧ E.indexInvariantNontrivial

theorem exotic_sphere_closed_from_evidence (E : ExoticSpherePackage)
    (Ev : ExoticSphereEvidence E) : ExoticSphereClosed E := by
  exact And.intro Ev.exoticStructureExistsClosed Ev.indexInvariantNontrivialClosed

end ExoticIndexTheoriesManifolds
end HautevilleHouse