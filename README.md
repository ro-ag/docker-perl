# perl 30-34 centos base

These images can be use to run from local dir /perl.  the followin packages are installed

* Net::SSH::Perl
* Net::SFTP
* Net::SSLeay
* Net::SFTP::Foreign
* App::cpanminus
* Log::Log4perl 
* Term::ReadLine::Perl 
* Modern::Perl
* Parallel::ForkManager
* Task::Kensho::CLI
* Task::Kensho::Config
* Task::Kensho::DBDev
* Task::Kensho::Dates
* Task::Kensho::ExcelCSV
* IO::All
* Smart::Comments
* Term::ProgressBar::Simple
* Task::Kensho::Logging
* Code::TidyAll
* Module::Build::Tiny
* Perl::Critic
* Perl::Tidy
* Pod::Readme
* Software::License
* Moo
* Type::Tiny
* Task::Kensho::Testing
* Task::Kensho::Toolchain
* Task::Kensho::WebCrawling
* Template
* XML::LibXML
* XML::Generator::PerlData
* XML::SAX
* XML::SAX::Writer
* IO::Prompter
* Text::CSV
* IO::Socket::SSL

> In order to install ``Net::SSH::Perl`` a path has to be applied to the module ``Crypt::Curve25519``
> ``https://github.com/ajgb/crypt-curve25519/issues/9#issuecomment-593750831``

## Tags

* ``perl:5.34.1-centos.stream`` ``perl:latest``
* ``perl:5.34.1-centos.8``
* ``perl:5.34.1-centos.7``
* ``perl:5.32.1-centos.8``
* ``perl:5.32.1-centos.7``
* ``perl:5.30.3-centos.8``
* ``perl:5.30.3-centos.7``

## Patch Notes

```shell
# get patch program
yum install wget patch -y

# get cpan module
wget https://cpan.metacpan.org/authors/id/A/AJ/AJGB/Crypt-Curve25519-0.06.tar.gz
tar -xf Crypt-Curve25519-0.06.tar.gz && rm -rf Crypt-Curve25519-0.06.tar.gz
cd Crypt-Curve25519-0.06

# download and apply the patch
wget https://github.com/ajgb/crypt-curve25519/files/4279114/patch_Curve25519.patch.txt
patch < patch_Curve25519.patch.txt

# zip the folder again to install Crypt::Curve25519 with cpm
cd ..
tar -zcf Crypt-Curve25519-0.06.tar.gz Crypt-Curve25519-0.06/

# install Crypt-Curve25519
cpm install -g --show-build-log-on-failure Crypt-Curve25519-0.06.tar.gz

# install Net::SSH::Perl
cpm install -g --show-build-log-on-failure Net::SSH::Perl
```