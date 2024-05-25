{ config, pkgs, ... }:

{
  home.username = "x";
  home.homeDirectory = "/home/x";

  #home.stateVersion = "23.11"; # Please read the comment before changing.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    fish
  ];

  home.file = {
  };

  programs = {
    #fish = {
    #    enable = true;
    #    #interactiveShellInit = ''
    #    #  set fish_greeting
    #    #'';
    #};
    git = {
      enable = true;
      userName = "d-rens";
      userEmail = "daniel@d-rens.xyz";
      aliases = {
        p = "push";
        pu = "pull";
        c = "commit -m";
        cs = "commit -m -S";
        ca = "commit -m --ammend";
        csa = "commit -m -S --ammend";
      };
    extraConfig = {
      init.defaultBranch = "main";
      commit.gpgsign = true;
      user.signingkey = "F0F708E2ED281B48DF26A213DCF60F08282ADCB9";
      };
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;

}
