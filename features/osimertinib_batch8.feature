Feature: Molecule ADMET property comparison

  Scenario: Compare parent and child molecule properties
    Given I evaluate the parent molecule with SMILES "CN1C=C(C2=CC=CC=C21)C3=NC(=NC=C3)NC4=C(C=C(C(=C4)NC(=O)C=C)N(C)CCN(C)C)OC"
    And I evaluate the following child molecules:
      | smiles |   
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(OC)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1c(c(c(cc1OC)N(C)CN(C)C)NC(=O)C=C)OC |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OCOC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)N(C(=O)C=C)C |
      | c1(nc(c(cn1)NC(=O)C)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)ccc(c2)NC(=O)C)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1NC(=O)C)C)cccc2)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(cc(n1)NC(=O)C)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cc(cc2)NC(=O)C)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OCC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OCC(C)C)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OCC(F)F)N(C)CN(C)C)NC(=O)C=C |
    When I compare the ADMET properties
    Then I generate an Excel score report
