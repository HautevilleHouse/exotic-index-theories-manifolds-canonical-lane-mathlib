import ExoticIndexTheoriesManifoldsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExoticIndexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse