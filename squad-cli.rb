require "language/node"

class SquadCli < Formula
  desc "Squad CLI — Command-line interface for the Squad multi-agent runtime"
  homepage "https://github.com/bradygaster/squad"
  url "https://registry.npmjs.org/@bradygaster/squad-cli/-/squad-cli-0.8.25.tgz"
  sha256 "ea637721a79a5740f03397e8e84d9538111c8918032a0e30afa9b4570e643be3"
  version "0.8.25"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/squad", "--version"
  end
end
