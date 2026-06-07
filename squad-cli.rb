require "language/node"

class SquadCli < Formula
  desc "Squad CLI — Command-line interface for the Squad multi-agent runtime"
  homepage "https://github.com/bradygaster/squad"
  url "https://registry.npmjs.org/@bradygaster/squad-cli/-/squad-cli-0.10.0.tgz"
  sha256 "b4adb16c0fd700494885a44e6d01e0009859328908ae947fd76cd76f0e98c749"
  version "0.10.0"
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
