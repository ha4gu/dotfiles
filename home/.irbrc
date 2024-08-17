# 参考: https://blog.katsyoshi.org/blog/2023/11/16/how-to-use-irb-configuration-in-bundle-exec/

# Reline 0.4.0 以上に対応した irb のバージョンチェック
if Gem::Version.new(IRB::VERSION) >= Gem::Version.new("1.9.0")
  # gem のインストールされるパスを取得。rbenv を利用している場合は以下
  # preview 判では version に previewX や 0 がついたりするので * を付与し、検索
  ld_path = File.join(ENV["RBENV_ROOT"], "versions", RUBY_VERSION + "*", "lib", "ruby", "gems", RUBY_VERSION.sub(/\d+$/, "0*"), "gems")

  # 読み込む gem 対象のパスを取得
  gem_path = File.join(Dir.glob(File.join(ld_path, "irb-theme") + "-*").last, "lib")
  $LOAD_PATH.unshift(gem_path) # LOAD_PATH に追加
  $LOAD_PATH.uniq! # LOAD_PATH に追加した重複してた場合削除

  # Irb::Theme::Iceberg - https://github.com/ydah/irb-theme-iceberg
  require "irb/theme/iceberg"
end

