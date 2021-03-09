# Hash of Hash
# Like a family tree
# Multiple levels of person instances also known as nodes

child = {
  :name=>"Carrie Fisher",
  :mother=>{
    :name=>"Debbie Reynolds",
    :mother=>{
      :name=> "Maxene Reynolds"
    },
    :father=>{
      :name=> "Raymond Reynolds"
    }
  },
  :father=>{
    :name=>"Eddie Fisher",
    :mother=>{},
    :father=>{}
  }
}