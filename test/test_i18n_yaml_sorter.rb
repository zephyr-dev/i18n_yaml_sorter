require 'helper'

class TestI18nYamlSorter < Test::Unit::TestCase
  def test_should_sort_complex_sample_file
    open('in.yml') do |file|
      sorter = I18nYamlSorter.new(file)
      open('out.yml') do |expected_out|
        assert_equal sorter.sort, expected_out.read
      end
    end
  end
  
  def test_command_line_should_work_in_stdin
    output = `../bin/sort_yaml < in.yml`
    open('out.yml') do |expected_out|
      assert_equal output, expected_out.read
    end
  end
end
