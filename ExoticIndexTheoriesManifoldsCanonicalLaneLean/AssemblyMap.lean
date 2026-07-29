import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure AssemblyMap (G : Type u) [Group G] where
  groupCAlgebra : Type v
  kTheoryGroupCAlgebra : Type w
  equivariantKKTheory : Type x
  assemblyMapDefined : Prop
  baumConnesConjecture : Prop

structure AssemblyMapEvidence (A : AssemblyMap ℤ) where
  assemblyMapDefinedClosed : A.assemblyMapDefined
  baumConnesConjectureClosed : A.baumConnesConjecture

def AssemblyMapClosed (A : AssemblyMap ℤ) : Prop :=
  A.assemblyMapDefined ∧ A.baumConnesConjecture

theorem assembly_map_closed_from_evidence (A : AssemblyMap ℤ)
    (ev : AssemblyMapEvidence A) : AssemblyMapClosed A := by
  exact And.intro ev.assemblyMapDefinedClosed ev.baumConnesConjectureClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse