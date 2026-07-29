import ExoticIndexTheoriesManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : ExoticIndexAdmittedObject
  indexTheorySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : indexTheorySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IndexTheoryClosed A.object ∧ (A.indexTheorySatisfied ∨ A.remainderRecorded)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse