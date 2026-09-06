class ClaudeProviderSwitcher < Formula
  include Language::Python::Virtualenv

  desc "Manage Claude Code API profiles, private credentials, and settings backups"
  homepage "https://github.com/RomaCredit/claude-provider-switcher"
  url "https://github.com/RomaCredit/claude-provider-switcher/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "2d95a1612be27ada461e00b91baaf41721b57f8e51a6591622ab8069a3dbbe6f"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/ccs --version")
    assert_match "0.1.6", shell_output("#{bin}/claude-provider-switcher --version")
  end
end
