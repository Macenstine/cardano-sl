{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cardano-sl-util";
        version = "1.3.0";
      };
      license = "MIT";
      copyright = "2016 IOHK";
      maintainer = "support@iohk.io";
      author = "IOHK";
      homepage = "https://github.com/input-output-hk/cardano-sl";
      url = "";
      synopsis = "Cardano SL - general utilities";
      description = "This package contains utility functions not specific\nto Cardano SL which extend 3rd party libraries or implement\nsomething from scratch.";
      buildType = "Simple";
    };
    components = {
      "cardano-sl-util" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.auto-update)
          (hsPkgs.base)
          (hsPkgs.canonical-json)
          (hsPkgs.cborg)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.concurrent-extra)
          (hsPkgs.contravariant)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.ether)
          (hsPkgs.exceptions)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.katip)
          (hsPkgs.lens)
          (hsPkgs.lrucache)
          (hsPkgs.megaparsec)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.reflection)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.serokell-util)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-lift)
          (hsPkgs.universum)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs)
        ];
      };
      tests = {
        "util-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.cardano-sl-util)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.pretty-show)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-units)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
          ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
    };
  } // rec { src = ../util; }