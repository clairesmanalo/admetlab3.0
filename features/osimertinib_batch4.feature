Feature: Molecule ADMET property comparison

  Scenario: Compare parent and child molecule properties
    Given I evaluate the parent molecule with SMILES "CN1C=C(C2=CC=CC=C21)C3=NC(=NC=C3)NC4=C(C=C(C(=C4)NC(=O)C=C)N(C)CCN(C)C)OC"
    And I evaluate the following child molecules:
      | smiles | 
      | c1(nc(ccn1)c1c2c(n(c1)C)cc(cc2)Cl)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)ccc(c2)Cl)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2Cl)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1Cl)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OCl)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(Cl)Cl)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)Cl)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)N(C(=O)C=C)Cl |
      | c1(nc(c(cn1)Cl)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(cc(n1)Cl)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
    When I compare the ADMET properties
    Then I generate an Excel score report
