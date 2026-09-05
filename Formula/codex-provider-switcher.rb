class CodexProviderSwitcher < Formula
  include Language::Python::Virtualenv

  desc "Keep Codex Desktop conversation history visible while switching provider profiles"
  homepage "https://github.com/RomaCredit/codex-provider-switcher"
  url "https://github.com/RomaCredit/codex-provider-switcher/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "6f74687cda7d668454ad744ee1d08e0e6ff8b4fc1eef081e05edb0d6c272e124"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/cps --version")
  end
end
