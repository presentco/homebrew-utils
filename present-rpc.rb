class PresentRpc < Formula
  desc "Simple, idiomatic RPCs for Java, Javascript, Android, iOS, and more"
  homepage "https://github.com/presentco/present-rpc"
  url "https://github.com/presentco/present-rpc/raw/master/java/compiler/homebrew/archives/present-rpc-1.0.0.zip"
  sha256 "df61a9b627dc710102222e912261aeba4062b8951bd3eab64e63d8a3ad064132"
  version "1.0.0"

  bottle :unneeded
  depends_on :java => "1.8+"
  depends_on "swift-protobuf"

  def install
    inreplace "present-rpc.sh", "##PREFIX##", "#{prefix}"
    prefix.install "present-rpc-compiler.jar"
    bin.install "present-rpc.sh"
    bin.install_symlink "present-rpc.sh" => "present-rpc"
  end

end
