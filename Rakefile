require 'yaml'

secrets = YAML.load_file '_secrets.yml'

class String
  def bold
    "\033[1m#{self}\033[0m"
  end
end

$details_count = 0

def format_list(text)
  list_name = text.strip.sub '## ', ''
  puts "#{list_name}:"
  puts "  name: #{list_name}"
  puts '  media:'
end

def format_title(text)
  $details_count = 0
  title = text.strip.sub '- ', ''
  puts "    #{title}"
  puts "      title: #{title}"
end

def format_detail(text)
  detail = text.strip.sub '- ', ''
  case $details_count
  when 0
    puts "      creator: #{detail}"
  when 1
    puts "      rec: #{detail}"
  when 2
    puts "      notes: #{detail}"
  end
  $details_count = $details_count + 1
end

def parse_list(path)
  File.readlines(path).each do |line|
    break if line.include? '## how to format watch lists'

    format_list line if line.start_with? '##'
    format_title line if line.start_with? '-'
    format_detail line if line.start_with? '  -'
  end
end

task :parse_lists do
  puts 'Parsing media lists'.bold

  parse_list secrets['movies_path']
end
