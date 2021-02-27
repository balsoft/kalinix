{ stdenv, makeWrapper, socat, waypipe, xlibs, lib, self }: {
  run-container = stdenv.mkDerivation {
    name = "run-container";
    src = ./run-container;
    buildInputs = [ makeWrapper ];
    buildCommand = ''
      makeWrapper $src $out --prefix PATH : ${lib.makeBinPath [ socat waypipe xlibs.xauth ]} --set SELF ${self}
      patchShebangs $out
    '';
  };
}
