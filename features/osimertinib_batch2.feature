Feature: Molecule ADMET property comparison

  Scenario: Compare parent and child molecule properties
    Given I evaluate the parent molecule with SMILES "CN1C=C(C2=CC=CC=C21)C3=NC(=NC=C3)NC4=C(C=C(C(=C4)NC(=O)C=C)N(C)CCN(C)C)OC"
    And I evaluate the following child molecules:
      | smiles |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(C)CCN(C)CC)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(c(c1OC)C)N(C)CCN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)N(c1cc(c(cc1OC)N(C)CCN(C)C)NC(=O)C=C)C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1cc(c(cc1OC)N(C)CCN(C)C)N(C(=O)C=C)C |
      | c1(nc(ccn1)c1c2c(n(c1C)C)cccc2)Nc1cc(c(cc1OC)N(C)CCN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cccc2)Nc1c(c(c(cc1OC)N(C)CCN(C)C)NC(=O)C=C)C |
      | c1(nc(ccn1)c1c2c(n(c1)F)cccc2)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)c(ccc2)F)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)cc(cc2)F)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
      | c1(nc(ccn1)c1c2c(n(c1)C)ccc(c2)F)Nc1cc(c(cc1OC)N(C)CN(C)C)NC(=O)C=C |
    When I compare the ADMET properties
    Then I generate an Excel score report
