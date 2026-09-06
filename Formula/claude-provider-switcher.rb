class ClaudeProviderSwitcher < Formula
  include Language::Python::Virtualenv

  desc "Manage Claude Code API profiles, private credentials, and settings backups"
  homepage "https://github.com/RomaCredit/claude-provider-switcher"
  url "https://github.com/RomaCredit/claude-provider-switcher/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "98b7f9a60834d99120dd37c1d8cbe147d8e6edd94ffabfefa92eca66e56ecc9a"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/ccs --version")
    assert_match "0.1.5", shell_output("#{bin}/claude-provider-switcher --version")
  end
end
