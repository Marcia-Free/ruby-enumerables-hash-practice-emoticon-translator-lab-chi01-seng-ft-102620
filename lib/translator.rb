# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  translated_lib = {'get_meaning' => {},
                    'get_emoticon' => {}
                   }
                   
  key_lib = {}

  emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    
   key_lib[meaning] = {}
   key_lib[meaning] = {}
   key_lib[meaning][:english] = english
   key_lib[meaning][:japanese] = japanese
    
   #translated_lib['get_meaning'][japanese] = meaning
   #translated_lib['get_emoticon'][english] = japanese
   
  end
  #translated_lib
  key_lib
end



def get_japanese_emoticon(file_path, emoticon)
  key_lib = load_library(file_path)
  
  #emoticon = key_lib[meaning][:japanese][]
  #emoticon ? jap_emoticon : "Sorry, that emoticon was not found"
  
end




def get_english_meaning(file_path, emoticon)
  key_lib = load_library(file_path)
  #results = ""
  
  #jap_meaning = key_lib[meaning][:japanese][jap_emoticon]
  #eng_meaning = key_lib[meaning][:english]
  #eng_meaning ? eng_meaning : "Sorry, that emoticon was not found"
  #binding.pry
end
