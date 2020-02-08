require 'YAML'
require 'pry'

def load_library
   emoticons = YAML.load_file(file_path)

  # Hash must use the => syntax to pass tests.
  # "get_meaning": {} will not pass the test suite.
  return_hash = {
    "get_meaning" => {},
    "get_emoticon" => {},
  }

  emoticons.each do |meaning, translations|
    return_hash["get_meaning"][translations[1]] = meaning
    return_hash["get_emoticon"][translations[0]] = translations[1]
  end
  return_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end