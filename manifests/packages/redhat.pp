class rvm::packages::redhat {
  $package_list = ['which', 'gcc', 'gcc-c++', 'make', 'gettext-devel', 'expat-devel',  
    'curl-devel', 'zlib-devel', 'openssl-devel', 'perl', 'cpio', 'expat-devel', 'gettext-devel',
	'wget', 'bzip2', 'sendmail', 'mailx', 'libxml2', 'libxml2-devel', 'libxslt', 'libxslt-devel',
	'readline-devel', 'patch', 'git']
                   
  # Virtualize Package list to prevent conflicts
  @package { $package_list:
    ensure => 'present',
    tag    => 'rvm-packages',
  }
  
  # Realize packages list. 
  Package<| tag == 'rvm-packages' |>
}