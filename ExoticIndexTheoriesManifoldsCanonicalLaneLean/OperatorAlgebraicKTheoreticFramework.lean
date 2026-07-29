import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifolds

structure OperatorAlgebraKPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  cStarAlgebra : Type v
  kTheoryGroup : Type w
  indexMap : Type x

structure OperatorAlgebraKEvidence (O : OperatorAlgebraKPackage) where
  cStarAlgebraDefined : Prop
  kTheoryGroupComputed : Prop
  indexMapConstructed : Prop
  indexMapWellDefined : O.indexMap → O.kTheoryGroup

def OperatorAlgebraKClosed (O : OperatorAlgebraKPackage) : Prop :=
  O.cStarAlgebra ∧ O.kTheoryGroup ∧ O.indexMap

theorem operator_algebra_k_closed_from_evidence (O : OperatorAlgebraKPackage)
    (E : OperatorAlgebraKEvidence O) : OperatorAlgebraKClosed O := by
  exact And.intro E.cStarAlgebraDefined (And.intro E.kTheoryGroupComputed E.indexMapConstructed)

end ExoticIndexTheoriesManifolds
end HautevilleHouse