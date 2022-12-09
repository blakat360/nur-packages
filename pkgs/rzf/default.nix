{ pkgs ? import <nixpkgs> }:

pkgs.writeShellApplication {
  name = "rzf";
  runtimeInputs = with pkgs; [ fzf rofi ];
  text = ''
    if [ "$TERM" == 'screen' ]; then
      fzf-tmux
    else
    	rofi -dmenu
    fi
  '';
}

