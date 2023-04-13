import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart" as sql;
import "package:sqflite/sqflite.dart";
import 'package:path/path.dart';

import "NewNote.dart";
import "note.dart";
class SqlHelper {
  static const _version=1;
  static const String database="mydb";


  static Future<Database>mydb()async{
    return sql.openDatabase(join(await sql.getDatabasesPath(),database),
    onCreate: (data,version)async=>data.execute(
        """CREATE TABLE noteapp(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    body TEXT
    )"""
    ),
    version:_version
    );
  }
 static Future<int>createNote(Note note)async{
    final db=await mydb();

    return await db.insert("Note", note.toJson(),conflictAlgorithm: ConflictAlgorithm.replace);

 }

 static Future<List<Map<String,dynamic>>>getnoteapps(int id)async{
    final db=await SqlHelper.mydb();
    return db.query('noteapp',where: "id=?",whereArgs: [id],limit:1 );
 }
 static Future<int>updatenote(Note note)async{

    final db=await mydb();

    return await db.update('Note',note.toJson() ,where: "id=?",whereArgs: [note.id],conflictAlgorithm: ConflictAlgorithm.replace);

 }
 static Future<void>deletenote(Note note)async{
    final db=await mydb();
    await db.delete("Note",where: "id=?",whereArgs: [note.id]);
 }
 static Future<List<Note>?>getNotes()async {
  final db=await mydb();
  final List<Map<String,dynamic>>mapping=await db.query("Note");
  if(mapping.isNotEmpty){
    return null;
  }
  return List.generate(mapping.length, (index) => Note.fromJson(mapping[index]));
 }


}
