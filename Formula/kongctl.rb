# The latest Homebrew formula as submitted to kepkin/homebrew-kongctl
# Only useful for testing.
# (It will need to be updated from the repo version before next release.)
#
# https://github.com/kepkin/homebrew-kongctl/blob/master/Formula/kongctl.rb
#
class Kongctl < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for Kong admin api"
  homepage "https://github.com/kepkin/kongctl"
  url "https://files.pythonhosted.org/packages/f2/31/50e2eab96eb76e88ef54eed702cdb3a46032756a57e45e4f2b143dacf553/kongctl-0.1.1.tar.gz"
  sha256 "8baf7899141fde18abd39378006a1bac411adf56edfcf2e78f35c4ba80c7aeb8"
  head "https://github.com/kepkin/kongctl.git"

  depends_on "python"


  resource "requests" do
    url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz"
    sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c5/67/5d0548226bcc34468e23a0333978f0e23d28d0b3f0c71a151aef9c3f7680/certifi-2019.6.16.tar.gz"
    sha256 "945e3ba63a0b9f577b1395204e13c3a231f9bc0223888be653286534e5873695"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4c/13/2386233f7ee40aa8444b47f7463338f3cbdf00c316627558784e3f542f07/urllib3-1.25.3.tar.gz"
    sha256 "dbe59173209418ae49d485b87d1681aefa36252ee85884c31346debd19463232"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/15/ab/35824cfdee1aac662e3298275fa1e6cbedb52126d1785f8977959b769ccf/PySocks-1.7.0.tar.gz"
    sha256 "d9031ea45fdfacbe59a99273e9f0448ddb33c1580fe3831c1b09557c5718977c"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a3/65/837fefac7475963d1eccf4aa684c23b95aa6c1d033a2c5965ccb11e22623/PyYAML-5.1.1.tar.gz"
    sha256 "b4bb4d3f5e232425e25dda21c070ce05168a786ac9eda43768ab7f3ac2770955"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    raw_url = "https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/kongctl.rb"
    assert_match "PYTHONPATH", shell_output("#{bin}/kongctl -h")
  end
end
