Table roles {
  id int [pk]
  role_name varchar
}

Table users {
  id int [pk]
  name varchar
  email varchar
  password varchar
  age int
  role_id int [not null]
}


Table courses {
  id int [pk]
  title varchar
  description varchar
  level varchar
  teacher int [not null]
}

Table student_courses {
  student int [not null]
  course_id  int [not null]
}

Table course_video {
  id int [pk]
  title varchar
  url varchar
  course_id int [not null]
}

Table categories {
  id int [pk, increment]
  name varchar
  course_id int
}


Ref: "roles"."id" < "users"."role_id"

Ref: "users"."id" < "student_courses"."student"

Ref: "courses"."id" < "student_courses"."course_id"

Ref: "users"."id" < "courses"."teacher"

Ref: "courses"."id" < "course_video"."course_id"

Ref: "categories"."course_id" < "courses"."id"