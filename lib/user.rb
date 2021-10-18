class User 
  attr_accessor :email, :age
  @@user_list = []

  def initialize(email_to_save, age_to_saves)
    @email = email_to_save
    @age = age_to_saves

    user_archive(email_to_save, age_to_saves)
  end

  def user_archive(arr, int)
    @@user_list.push({
      "email" => arr,
      "age" => int
    })
  end

  def self.all  
    return @@user_list
  end 

  def self.find_by_email(mail)
    obj = @@user_list.select {|user| user["email"] == mail}
    return "Voici l'age du User trouvé : #{obj[0]["age"]} ans"
  end 
end 

