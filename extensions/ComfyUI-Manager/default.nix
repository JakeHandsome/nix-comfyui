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
    rev = "717ca1bb182c9350dcec82fb94fc41fbb9f6a4ba";
    hash = "sha256-O8YL2cYCaRZcx+86CPkx5D9aCt+1k2zSQXfDOvtbnIE=";
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
