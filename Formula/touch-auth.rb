class TouchAuth < Formula
  desc "Askpass helper for local macOS authentication"
  homepage "https://github.com/zeyugao/touch-auth"
  url "https://github.com/zeyugao/touch-auth/releases/download/1.3.0/touch-auth.tar.gz"
  sha256 "661dd477b19b027011ff3a0e3c8f51bc0072e172220d697e863746ca4e0b57f6"

  def install
    bin.install "#{name}"
    # The label in the plist must be #{plist_name} in order for `brew services` to work
    # See https://github.com/Homebrew/homebrew-services/issues/376
    inreplace "touch-auth.plist", /<string>com.github.theseal.touch-auth<\/string>/, "<string>#{plist_name}</string>"
    inreplace "touch-auth.plist", %r{/usr/local/bin}, "#{opt_prefix}/bin"
    prefix.install "#{name}.plist" => "#{plist_name}.plist"
  end

  def caveats; <<~EOF
    NOTE: You will need to run the following to load the SSH_ASKPASS environment variable:
      brew services start #{name}
    EOF
  end

  test do
    system "true"
  end

  service do
    name macos: "#{plist_name}"
  end
end
