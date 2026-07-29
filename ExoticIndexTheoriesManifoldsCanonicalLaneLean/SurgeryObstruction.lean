import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure SurgeryObstructionPackage where
  normalInvariant : Type u
  surgeryObstruction : Type u
  assemblyMap : Prop
  exoticLifting : Prop
  signatureTheorem : Prop

structure SurgeryObstructionEvidence (S : SurgeryObstructionPackage) where
  assemblyMapClosed : S.assemblyMap
  exoticLiftingClosed : S.exoticLifting
  signatureTheoremClosed : S.signatureTheorem

def SurgeryObstructionClosed (S : SurgeryObstructionPackage) : Prop :=
  S.assemblyMap ∧ S.exoticLifting ∧ S.signatureTheorem

theorem surgery_obstruction_closed_from_evidence (S : SurgeryObstructionPackage) (E : SurgeryObstructionEvidence S) : SurgeryObstructionClosed S := by
  exact And.intro E.assemblyMapClosed (And.intro E.exoticLiftingClosed E.signatureTheoremClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse