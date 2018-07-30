# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kube < Formula
  desc "Incrementally search pods for which kubectl command is to be executed."
  homepage "https://github.com/atsushi130/kube"
  url "https://github.com/atsushi130/kube/archive/v1.0.1.tar.gz"
  sha256 "73d4300de4c0a2001f0edd595f686a7134e79094682e450e00b9f9dcaf34126d"
  # depends_on "cmake" => :build

  def install
    bin.install "kube"    
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kube`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
