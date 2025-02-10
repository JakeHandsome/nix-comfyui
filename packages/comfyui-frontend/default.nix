{ buildNpmPackage, fetchFromGitHub }:

buildNpmPackage {
  name = "comfyui-frontend";

  src = fetchFromGitHub {
    owner = "Comfy-Org";
    repo = "ComfyUI_frontend";
    fetchSubmodules = false;
    rev = "9707a30d0e24f825814b081f25d09847dc7ed610";
    hash = "sha256-mdYZYJxE7xz8i495lAJNPTDU7YICnQ4PoJCIpivt6ek=";
  };

  npmDepsHash = "sha256-FdZ/2ZYjyJ9EnxBlw3lQ3MPOgrTQ4b+vZ1uFNz3rfJ8=";

  patches = [
    ./0001-use-neutral-colors.patch
  ];

  installPhase = ''
    runHook preInstall

    mkdir --parents $out/share/comfyui
    cp --archive dist $out/share/comfyui/web

    runHook postInstall
  '';
}
