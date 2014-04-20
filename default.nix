{ cabal
, aeson
, conduit
, conduitCombinators
, conduitExtra
, deepseq
, logging
, monadLogger
, ioStorage
, lens
, optparseApplicative
, parallelIo
, regexPosix
, safe
, shelly
, systemFileio
, systemFilepath
, text
, textFormat
, time
, unix ? null
, unorderedContainers
, yaml
}:

cabal.mkDerivation (self: {
  pname = "pushme";
  version = "2.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    aeson
    conduit
    conduitCombinators
    conduitExtra
    deepseq
    logging
    monadLogger
    ioStorage
    lens
    optparseApplicative
    parallelIo
    regexPosix
    safe
    shelly
    systemFileio
    systemFilepath
    text
    textFormat
    time
    unix
    unorderedContainers
    yaml
  ];
  meta = {
    homepage = "https://github.com/jwiegley/pushme";
    description = "Tool to synchronize multiple directories with rsync, zfs or git-annex";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
