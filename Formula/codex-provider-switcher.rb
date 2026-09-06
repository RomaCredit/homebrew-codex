class CodexProviderSwitcher < Formula
  include Language::Python::Virtualenv

  desc "Keep Codex Desktop conversation history visible while switching provider profiles"
  homepage "https://github.com/RomaCredit/codex-provider-switcher"
  url "https://github.com/RomaCredit/codex-provider-switcher/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4ea433aa0e6ed325e0daa995c397a11a5c5e3b1f7c5fb7dcb1efdb5742655dae"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/cps --version")
    assert_match "0.3.2", shell_output("#{bin}/codex-provider-switcher --version")
  end
end
