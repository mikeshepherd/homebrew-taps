require "language/go"

# Classname should match the name of the installed package.
class saml2aws < Formula
  desc "Utility to allow federated logins for the AWS CLI"
  homepage 'https://github.com/versent/saml2aws'
  version '2.27.1'
  head "https://github.com/mikeshepherd/saml2aws"

  # Source code archive. Each tagged release will have one
  url "https://github.com/mikeshepherd/saml2aws/archive/v2.27.1.zip"
  sha256 "3c257bc2896b23a3e74af6d7d22d229c27be93928a3dce31878fe6c163f873c6"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath


    bin_path = buildpath/"src/github.com/mikeshepherd/saml2aws"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/mikeshepherd/saml2aws
    bin_path.install Dir["*"]

    # Stage dependencies. This requires the "require language/go" line above
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"saml2aws", "."
    end
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/saml2aws"
  end
end