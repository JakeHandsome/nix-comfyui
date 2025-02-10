{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-Manager";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ltdrdata";
    repo = "ComfyUI-Manager";
    fetchSubmodules = false;
    rev = "e113e011cb42919320a4622d4aa7a954c2d31309";
    hash = "sha256-6bp2J/CfWkoFDvzAWBekqlbe9eZVWt/Arnsz3+jcBbs=";
  };

  propagatedBuildInputs = [
    python3.pkgs.gitpython
    python3.pkgs.pygithub
    python3.pkgs.matrix-client
    python3.pkgs.transformers
    python3.pkgs.huggingface-hub
    python3.pkgs.typer
    python3.pkgs.rich
    python3.pkgs.typing-extensions
    python3.pkgs.toml
  ];

  meta = {
    license = lib.licenses.gpl3;
  };
}
