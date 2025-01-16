{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "1.1.1.2"
      "1.0.0.2"
      
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
      ];
      allowedUDPPorts = [
        59010
        59011
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
