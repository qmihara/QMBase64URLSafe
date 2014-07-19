Pod::Spec.new do |s|
  s.name             = "QMBase64URLSafe"
  s.version          = "1.0.0"
  s.summary          = "Base 64 Encoding with URL and Filename Safe Alphabet Additions for iOS."
  s.homepage         = "https://github.com/qmihara/QMBase64URLSafe"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Kyusaku Mihara" => "qmihara@gmail.com" }
  s.source           = { :git => "https://github.com/qmihara/QMBase64URLSafe.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*.png'
end
