require "test_helper"

class TestJsStaticRequire < Ruby7zTest
  def test_extracting_an_archive
    target = clean_directory

    archive = Ruby7z::Archive.new(fixture_path("file1.txt.zip"))
    archive.extract(target)

    assert_equal fixture_content("file1.txt"), File.read(File.join(target, "file1.txt"))
  end
end