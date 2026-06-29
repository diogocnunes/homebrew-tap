class AiVault < Formula
  desc "Keep AI adapter files outside Git and link them into projects"
  homepage "https://github.com/diogocnunes/ai-shadow-vault"
  url "https://github.com/diogocnunes/ai-shadow-vault/archive/refs/tags/v6.1.6.tar.gz"
sha256 "082fbebb7e1404da72658ec4b5fcf898f5bc53a33f648d42b5462550d26f34af"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"ai-vault").write_env_script libexec/"bin/ai-vault", {}
    (bin/"ai-vault-init").write_env_script libexec/"bin/ai-vault-init", {}
    (bin/"ai-vault-update").write_env_script libexec/"bin/ai-vault-update", {}
    (bin/"vault-init").write_env_script libexec/"bin/vault-init", {}
    (bin/"vault-update").write_env_script libexec/"bin/vault-update", {}
  end

  test do
    assert_match "Commands:", shell_output("#{bin}/ai-vault help")
  end
end
