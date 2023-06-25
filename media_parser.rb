# frozen_string_literal: true

class MediaParser
  def initialize(markdown_file_path)
    @path = markdown_file_path
    @details_count = 0
    @output = ''
    puts @path
  end

  def parse
    File.readlines(@path).each do |line|
      break if line.match? '## how to format .* lists'

      format_list line if line.start_with? '##'
      format_title line if line.start_with? '-'
      format_detail line if line.start_with? '  -'
    end

    @output
  end

  private

  def format_list(text)
    list_name = text.strip.sub '## ', ''
    @output += "#{list_name}:\n"
    @output += "  name: #{list_name}\n"
    @output += "  media:\n"
  end

  def format_title(text)
    @details_count = 0
    title = text.strip.sub '- ', ''
    @output += "    -\n"
    @output += "      title: #{title}\n"
  end

  def format_detail(text)
    detail = text.strip.sub '- ', ''

    case @details_count
    when 0
      @output += "      creator: #{detail}\n"
    when 1
      @output += "      rec: #{detail}\n"
    when 2
      @output += "      notes: #{detail}\n"
    end

    @details_count += 1
  end
end
