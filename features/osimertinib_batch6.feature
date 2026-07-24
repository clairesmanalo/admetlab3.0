Feature: Molecule ADMET property comparison

  Scenario: Compare parent and child molecule properties
    Given I evaluate the parent molecule with SMILES "CN1C=C(C2=CC=CC=C21)C3=NC(=NC=C3)NC4=C(C=C(C(=C4)NC(=O)C=C)N(C)CCN(C)C)OC"
    And I evaluate the following child molecules:
      | smiles |   
      | c1(nc(c(cn1)O)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(cc(n1)O)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C | 
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)N(C(=O)C=C)O |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)O)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(O)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(CN(O)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)N(c1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C)O |
      | c1(nc(ccn1)c1c2c(n(c1)OC)cccc2)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)c(ccc2)OC)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cc(cc2)OC)Nc1cc(c(cc1OC)N(CN(C)C)C)NC(=O)C=C |
    When I compare the ADMET properties
    Then I generate an Excel score report
