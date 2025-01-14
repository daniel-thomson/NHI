
Extension: BirthPlace
Id: birth-place
Description: "The country where the person was born"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/birth-place"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    country 0..1 and
    place-of-birth 0..1 and
    source 0..1     //todo - remove from here and add to NHI

// definitions of sub-extensions
//* extension[country].url = "country" (exactly)
* extension[country] ^definition = "The birth country."
* extension[country].value[x] only CodeableConcept
* extension[country].valueCodeableConcept from $country-of-birth-vs

//* extension[place-of-birth].url = "place-of-birth" (exactly)
* extension[place-of-birth] ^definition = "No description"
* extension[place-of-birth].value[x] only string

//* extension[source].url = "source" (exactly)
* extension[source] ^definition = "The source of information concerning the country of birth"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $country-of-birth-information-source-vs (required)
