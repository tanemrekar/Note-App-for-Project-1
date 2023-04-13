class Note{
 late int id;
 late String title;
 late String description;
 Note({required this.id,required this.title,required this.description});
 factory Note.fromJson(Map<String,dynamic>json)=>Note(
     id: json["id"],
     title: json["title"],
     description: json["description"]);
 Map<String,dynamic>toJson()=>{
   "id":id,
   "title":title,
   "description":description
 };
}