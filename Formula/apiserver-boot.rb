
class ApiserverBoot < Formula
    desc "Scaffolding Toolkit for APIServer Aggregation"
    homepage "https://github.com/kubernetes-sigs/apiserver-builder-alpha"
    url "https://github.com/GoogleContainerTools/kpt/archive/v0.31.0.tar.gz"
    sha256 "1e4884e6a24a917fb62a5eac53a02c92ff82b7625ac4dc7f80d1b1cd4d7b5a9c"
    if OS.mac?
      url "https://github.com/kubernetes-sigs/apiserver-builder-alpha/archive/v1.18.0.tar.gz"
      sha256 "c1d2dcae03ab37ec71814f70476aa821f64a119f31072047050abf863fd32ae0"
    elsif OS.linux?
      #url "https://ftp.ncbi.nih.gov/toolbox/ncbi_tools/converters/by_program/tbl2asn/linux64.tbl2asn.gz"
      #sha256 "38560dd0764d1cfa7e139c65285b3194bacaa4bd8ac09f60f5e2bb8027cc6ca2"
    end
  
    depends_on "bazel" => :build
  
    def install
      system "make install"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/apiserver-boot version")
    end
  end