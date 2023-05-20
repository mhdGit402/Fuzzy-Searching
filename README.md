<br />

# Fuzzy Searching

Fuzzy Searching project was developed to detect and remove duplicates from a dataset of names.

<br />

## Features

- **Detect duplicates that have slightly different first name and last name but refer to the same person**
- **Flexible and customizable way to remove and merge duplicates**
- **Ability to view the cleaned dataset and merged duplicates and having report as PDF file**
- **Automatically correct common formatting errors in the names (e.g. capitalization, punctuation)**
- **Detect and handle non-Latin characters and special characters in the names (e.g. diacritics, accents, emojis)**

<br />

## Usage

**Note: Out of the box, there is a sample database 'duplicate_project_ava.sql' in the root directory which you can import and have a preview of how everything looks like in this project.** <br />

**Functionality of Pages** <br />
The purpose and functionality of pages in this web application are listed as below:

- **Create User** <br />
In this page you can create users so we can detect duplicates of them later on. <br />

- **Detect Duplicates** <br />
Main purpose of the application will be answered here! <br />
After opening this page the algorithm of detection automatically runs and show a table of duplicate users. <br />
This table have entries such as First Name, Last Name and an action method for duplicate items. <br /> <br />
In the action section we can Remove or Merge duplicates as listed below: <br /> <br/>
**Remove Action** <br />
After clicking the remove button, we will have a new table with selected duplicate users. Now we can remove any of the duplicate items as we require. <br /> <br />
**Merge Action** <br />
After clicking the merge button, we will have a new table with selected duplicate users. Now, by choosing an item we can merge other duplicates into selected item. <br />

**Note: We can customize percentage of similarity in showDuplicateUsers() method in UserController.**

- **View Users** <br />
The cleaned dataset of users will be shown in this page. Also, we can export the report of data into the PDF file by clicking the 'export to PDF' button. <br /> <br/>
**Note: If there are any duplicate items, you SHOULD first run the algorithm by VISITING DETECT DUPLICATES page in order to Remove or Merge duplicates!** <br />

- **Merged Users** <br />
Details of Merged Users will be shown in this page. Also, we can export the report of data into the PDF file by clicking the 'export to PDF' button.

<br />
<br />

## Designed and Developed Exclusively for AVA Co.

<a href="https://ava.ir/index.php/en/">Visit company website</a>