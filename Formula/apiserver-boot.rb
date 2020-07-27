
class ApiserverBoot < Formula
    desc "Scaffolding Toolkit for APIServer Aggregation"
    homepage "https://github.com/kubernetes-sigs/apiserver-builder-alpha"
    if OS.mac?
      url "https://github.com/kubernetes-sigs/apiserver-builder-alpha.git"
        :using => :git,
        :revision => "95dca1d34e91d6e76c50fa4f272a77f573fd7558"
      depends_on "bazel" => :build
      def install
        system "bazel","build","--platforms=@io_bazel_rules_go//go/toolchain:darwin_amd64","cmd:apiserver-builder"
      end
    elsif OS.linux?
      #url "https://ftp.ncbi.nih.gov/toolbox/ncbi_tools/converters/by_program/tbl2asn/linux64.tbl2asn.gz"
      #sha256 "38560dd0764d1cfa7e139c65285b3194bacaa4bd8ac09f60f5e2bb8027cc6ca2"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/apiserver-boot version")
    end
  end
