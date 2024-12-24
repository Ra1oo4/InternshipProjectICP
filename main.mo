import Map "mo:base/HashMap";
import Text "mo:base/Text";
actor {

  type Name= Text;
  type Phone = Text;

  type Entry = {
  desc: Text;
  phone: Phone;
  };

  type Message = {
  reciver: Text;
  mess: Text;
  };

  let phoneBook = Map.HashMap<Name, Entry>(0, Text);

  let MessageHistory = Map.HashMap<Phone, Messafe>(0, Text.equal, Text.hash);

  public func insert (name: Name, entry: Entry): async (){
    phoneBook.put(name, entry); 
  };
    
  public func sendMessage (senderPhone: Phone, message: Message): async() {
    MessageHistory.put(senderPhone, message);
  };

  public func getPhone (name: Name): async (){
    phoneBook.get(name);
  };
  
  public getMessage(senderPhone: Phone ): async ?Message {
    return MessageHistory.get(senderPhone);
  }
  
}
