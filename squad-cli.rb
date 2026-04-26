require "language/node"

class SquadCli < Formula
  desc "Squad CLI — Command-line interface for the Squad multi-agent runtime"
  homepage "https://github.com/bradygaster/squad"
  url "https://registry.npmjs.org/@bradygaster/squad-cli/-/squad-cli-0.9.4.tgz"
  sha256 "ee30c232496129090dfac06b599374244e98b10f2546b05778fc70d364585e44"
  version "0.9.4"
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
