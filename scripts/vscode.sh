# Install VS Code Extensions
# --------------------
#

# Extensions
extensions=(
  DotJoshJohnson.xml
  HookyQR.beautify
  Orta.vscode-jest
  RolandGreim.sharecode
  Sophisticode.php-formatter
  alefragnani.project-manager
  aws-scripting-guy.cform
  bmewburn.vscode-intelephense-client
  bradgashler.htmltagwrap
  bungcip.better-toml
  dakara.transformer
  dbaeumer.jshint
  dbaeumer.vscode-eslint
  dsznajder.es7-react-js-snippets
  eamodio.gitlens
  ericadamski.carbon-now-sh
  esbenp.prettier-vscode
  felixfbecker.php-debug
  felixfbecker.php-intellisense
  felixfbecker.php-pack
  flowtype.flow-for-vscode
  formulahendry.auto-close-tag
  formulahendry.auto-rename-tag
  ikappas.phpcs
  kamikillerto.vscode-colorize
  mauve.terraform
  mikestead.dotenv
  mindpixel-labs.vsc-expressionengine
  mrmlnc.vscode-apache
  mrorz.language-gettext
  ms-azuretools.vscode-docker
  msjsdiag.vscode-react-native
  pnp.polacode
  redhat.vscode-yaml
  wix.vscode-import-cost
  zhuangtongfa.material-theme
)

echo "Installing VS Code extensions..."
code --install-extension ${extensions[@]}
