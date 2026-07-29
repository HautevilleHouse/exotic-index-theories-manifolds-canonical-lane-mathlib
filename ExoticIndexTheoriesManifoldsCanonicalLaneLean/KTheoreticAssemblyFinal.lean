import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifolds

structure KTheoreticAssemblyPackage where
  cStarAlgebra : Type u
  kTheoryGroup : Type v
  indexMap : Type w
  assemblyMap : Type x
  baumConnesAssembly : Prop
  indexTheoremProved : Prop

structure KTheoreticAssemblyEvidence (K : KTheoreticAssemblyPackage) where
  baumConnesAssemblyClosed : K.baumConnesAssembly
  indexTheoremProvedClosed : K.indexTheoremProved

def KTheoreticAssemblyClosed (K : KTheoreticAssemblyPackage) : Prop :=
  K.baumConnesAssembly ∧ K.indexTheoremProved

theorem k_theoretic_assembly_closed_from_evidence (K : KTheoreticAssemblyPackage)
    (Ev : KTheoreticAssemblyEvidence K) : KTheoreticAssemblyClosed K := by
  exact And.intro Ev.baumConnesAssemblyClosed Ev.indexTheoremProvedClosed

end ExoticIndexTheoriesManifolds
end HautevilleHouse