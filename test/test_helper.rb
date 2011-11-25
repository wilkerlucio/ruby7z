require "minitest/unit"
require "fileutils"
require "ruby7z"

class Ruby7zTest < MiniTest::Unit::TestCase
  CLEAN_DIR = "generated"

  def fixture_path(*parts)
    File.join(File.dirname(__FILE__), "fixtures", *parts)
  end

  def clean_directory
    fixture_path(CLEAN_DIR).tap do |dir|
      # make sure it exists and it's clean
      FileUtils.mkdir_p(dir)
      FileUtils.rm_rf(File.join(dir, "*"))
    end
  end

  def fixture_content(path)
    File.read(fixture_path(path))
  end
end
