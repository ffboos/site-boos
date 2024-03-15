{
  description = "Freifunk Boos firmware";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    openwrt-imagebuilder.url = "github:astro/nix-openwrt-imagebuilder";
  };

  
  outputs = { self, nixpkgs, openwrt-imagebuilder }: {
    # TODO: aarch64-darwin, aarch64-linux
    # packages.x86_64-linux.octeon-generic-ubnt_edgerouter-lite

    packages.x86_64-linux.octeon-generic-ubnt_edgerouter-lite =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
    
        profiles = openwrt-imagebuilder.lib.profiles { inherit pkgs; };

        config = profiles.identifyProfile "ubnt_edgerouter-lite" // {
          # add package to include in the image, ie. packages that you don't
          # want to install manually later
          packages = [ "tcpdump" ];

          disabledServices = [ "dnsmasq" ];

          # include files in the images.
          # to set UCI configuration, create a uci-defauts scripts as per
          # official OpenWRT ImageBuilder recommendation.
          files = pkgs.runCommand "image-files" {} ''
            mkdir -p $out/etc/uci-defaults
            cat > $out/etc/uci-defaults/99-custom <<EOF
            uci -q batch << EOI
            set system.@system[0].hostname='testap'
            commit
            EOI
            EOF
          '';
        };

      in
        openwrt-imagebuilder.lib.build config;
  };

  
}