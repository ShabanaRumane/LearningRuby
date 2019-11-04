def get_file_as_string(filename)
    data = ''
    f = File.open(filename, "r") 
    f.each_line do |line|
      data += line
    end
    return data
  end
  
  def replaceGsub(infile,attr1,attr2)
    out_data = infile.gsub(attr1,attr2)    
    #puts out_data
    return out_data
  end

  def remove_blanklines(infile)
    # removes blank lines and extra whitespace 
    my_regex = /^\s*\n/
    #my_regex = /^\s+|\s+$/
    xml_data1 = infile.gsub(my_regex,"")
  end

  ##### MAIN #####
  
  #get data into a string
  xml_data = get_file_as_string 'rhymes.txt'
 
  temp = "   www.gutenberg.org should be replaced by www.gutenberg.org/987.erew
  
  
       Goose is the next line     
     I am a Collection. Collection is I. BIg"
  
  
  

  #1. remove spaces and blank lines
  #xml_data1 = remove_blanklines(xml_data).gsub("^\s+|\s+$","")
  #temp1= remove_blanklines(temp).gsub("^\s+|\s+$","")
  #puts temp1
  regex1 = /^\s*/ # remove blank lines
  regex2 = 
  puts "removing spaces from begining or the end till newline"
  temp1 = replaceGsub(temp,regex1,"")
  puts temp1
  xml_data1 = replaceGsub(xml_data,regex1,"")

  #temp1 = temp1.strip.squeeze("\n") this removes every thing and wraps the string
  
  #2 Replace word in file using the hash table
  replaceFile = {"Goose" => "shabs", "Collection" => "SUPERMAN"}
  replaceFile.each do |key,value|
      temp1 = replaceGsub(temp1,key,value)
      puts temp1
      xml_data1 = replaceGsub(xml_data1,key,value)
  end

   #write into a txt file
   open('myfile.txt', 'w') { |f|
   f.puts xml_data1

  #3 Go thru the file(scan) and count the occurence of a word/phrase
  findword = "bell"
  puts xml_data1.downcase.scan(findword).size

  #4. Number of lines after a phrase
  findphrase = "This Web site includes information"
  file = "infile.txt"
  count = 0
  File.readlines(file).each do |line|
    if line = findphrase
      
      count +=1
    else
      count+=0
    end
  end



  #write into a txt file
  open('myfile.txt', 'w') { |f|
  f.puts xml_data1
}


#=end
puts "done"