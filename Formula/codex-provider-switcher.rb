class CodexProviderSwitcher < Formula
  include Language::Python::Virtualenv

  desc "Keep Codex Desktop conversation history visible while switching provider profiles"
  homepage "https://github.com/RomaCredit/codex-provider-switcher"
  url "https://github.com/RomaCredit/codex-provider-switcher/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "c75b75d0065f9ac6ee52e93f966982c915111d29afe080681b9ae5522baf656b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/cps --version")
  end
end
