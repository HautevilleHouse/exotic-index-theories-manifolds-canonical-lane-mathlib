import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifolds

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OperatorAlgebraKClosed (A.object ?_) ∧ ExoticSphereClosed (A.object ?_)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  sorry

end ExoticIndexTheoriesManifolds
end HautevilleHouse