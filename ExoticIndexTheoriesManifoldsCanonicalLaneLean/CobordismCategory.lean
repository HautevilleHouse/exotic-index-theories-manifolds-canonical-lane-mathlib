import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure CobordismCategoryPackage where
  dimension : Nat
  oriented : Bool
  cobordismGroup : Type u
  exoticSpheresRelation : Prop

structure CobordismCategoryEvidence (C : CobordismCategoryPackage) where
  exoticSpheresRelationClosed : C.exoticSpheresRelation

def CobordismCategoryClosed (C : CobordismCategoryPackage) : Prop :=
  C.exoticSpheresRelation

theorem cobordism_category_closed_from_evidence (C : CobordismCategoryPackage)
    (Ev : CobordismCategoryEvidence C) : CobordismCategoryClosed C := by
  exact Ev.exoticSpheresRelationClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse