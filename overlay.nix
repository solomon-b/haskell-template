final: prev: {
  haskellPackages = prev.haskellPackages.override (old: {
    overrides = prev.lib.composeExtensions (old.overrides or (_: _: {}))
    (hfinal: hprev: {
      haskell-template = hfinal.callCabal2nix "haskell-template" (./.) { };
        });
  });
}
