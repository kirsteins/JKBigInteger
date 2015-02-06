Pod::Spec.new do |s|
  s.name    = "JKBigInteger"
  s.version = "0.0.1"
  s.requires_arc = true
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = "https://github.com/kirsteins/JKBigInteger"
  s.author = "Jānis Kiršteins"
  
  s.summary = "Library for working with big integers in Objective-C."
  s.description = <<-DESC
                    JKBigInteger is a small library to facilitate easy working with big integers in Objective-C. JKBigInteger is
                    a Objective-C wrapper around LibTomMath C library. It is inspired by the Java's BigInteger.
                  DESC
  s.social_media_url = "https://twitter.com/janiskirsteins"

  s.source = { :git => "https://github.com/kirsteins/JKBigInteger.git", :tag => s.version.to_s }
  s.source_files     = 'JKBigInteger/**/*.{c,h,m}'
end