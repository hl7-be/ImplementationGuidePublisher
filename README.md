# ImplementationGuidePublisher



This is the Implementation Guide publisher framework for rendering ImplementationGuides.

This comes without content. To add content, edit the ImplementationGuide resource in the main folder.

To build, run _genUpdatePublisher.bat / _genUpdatePublisher.sh.

Subsequent builds can rely on _genOnce.bat / .sh

If offline or terminology server is down, use _genonceNoTx.bat / .sh





---

Notes:

* The local file names must have no spaces
* resource IDs must match the resource filenames
  * note the path and naming convention for included resources, may need rework e.g. 
    * reference = StructureDefinition/hl7.be.structuredefinition-patient
    * filename=hl7.be.structuredefinition-patient
  * 