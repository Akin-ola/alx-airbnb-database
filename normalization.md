
### 🎯 What Is Normalization?

**Normalization** is a way to **organize data in a database** so it’s:

* **Clean**
* **Not repeated all over the place**
* **Easy to update**

---

### 💡 Real-Life Example (A School Register)

Let’s say you’re keeping student records in a notebook.

Here’s what you wrote:

| Name  | Class | Teacher    | Teacher Email                             |
| ----- | ----- | ---------- | ----------------------------------------- |
| Akin  | JSS1  | Mr. John   | [john@email.com](mailto:john@email.com)   |
| Bisi  | JSS1  | Mr. John   | [john@email.com](mailto:john@email.com)   |
| Chuka | JSS2  | Miss Grace | [grace@email.com](mailto:grace@email.com) |

#### Problem:

* **Mr. John’s email is repeated** for every student in JSS1.
* If he changes his email, you’ll have to update it *everywhere* = 🙃 stress.

---

### ✅ Normalization Fix:

Split the info into **two smaller tables**:

**1. Students Table**

| Name  | Class | Teacher ID |
| ----- | ----- | ---------- |
| Akin  | JSS1  | T01        |
| Bisi  | JSS1  | T01        |
| Chuka | JSS2  | T02        |

**2. Teachers Table**

| Teacher ID | Name       | Email                                     |
| ---------- | ---------- | ----------------------------------------- |
| T01        | Mr. John   | [john@email.com](mailto:john@email.com)   |
| T02        | Miss Grace | [grace@email.com](mailto:grace@email.com) |

Now if Mr. John changes his email, you only update it in **one place**. Clean, right?

---

### 🎯 Why Normalize?

* You **save space** in the database.
* You **avoid mistakes** (like having 2 different emails for the same teacher).
* You **make updates easier**.


🥇 First Normal Form (1NF) – Keep it clean and simple

In 1NF, we say:

    Every row in a table should have single values only — no lists, no duplicates in one field.

❌ Bad Example (Not 1NF):
Name	Class	Subjects
Akin	JSS1	Math, English, Science
Bisi	JSS1	English, Science

    See how Subjects has a list? That’s a no-no in 1NF.

    It’s hard to search or update "just English".

✅ 1NF Fix:

Break it up like this:
Name	Class	Subject
Akin	JSS1	Math
Akin	JSS1	English
Akin	JSS1	Science
Bisi	JSS1	English
Bisi	JSS1	Science

Now, every cell has just one value. ✅
🥈 Second Normal Form (2NF) – No repeating stuff that belongs elsewhere

2NF says:

    If something depends on only part of the data, move it to its own table.

Let’s say you have this table:
Name	Class	Teacher Name	Teacher Email
Akin	JSS1	Mr. John	    john@email.com
Bisi	JSS1	Mr. John	    john@email.com

    Teacher info is repeating for every student.

    But teacher info is really about the class, not the student directly.

✅ 2NF Fix:

Split into two tables:

Students Table
Name	Class
Akin	JSS1
Bisi	JSS1

Classes Table
Class	Teacher Name	Teacher Email
JSS1	Mr. John	    john@email.com

Now we avoid repetition and it's easy to update Mr. John's info.
🥉 Third Normal Form (3NF) – Only store what belongs here

3NF says:

    Each table should only have information directly related to the main thing in it — no extra side info!

Let’s say you have this:
Class	Teacher Name	Teacher Email	Teacher Phone
JSS1	Mr. John	    john@email.com	08012345678

    Here, you're storing a lot about the teacher inside the Class table.

    But the teacher's email and phone are about the teacher, not the class.

✅ 3NF Fix:

Classes Table
Class	Teacher ID
JSS1	T01

Teachers Table
Teacher ID	Name	    Email	        Phone
T01	        Mr. John	john@email.com	08012345678

Now each table holds only its own info, and everything is tidy. 🎉



🔁 Recap
Form	What It Fixes	                                In Our School Example

1NF	    No lists or multiple values in one cell	        Split subject lists into single rows
2NF	    No repeating groups that depend on part info	Move teacher info to class table
3NF	    No unrelated details in a table	                Move teacher contact to teacher table