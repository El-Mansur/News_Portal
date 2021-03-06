-- SQLite
CREATE TABLE posts(
postID INTEGER(4),
postTitle VARCHAR2(2000),
postPublications VARCHAR2(2000),
postDate NUMERIC,
postAuthor INTEGER,
postYear INTEGER(4),
postMonth INTEGER(2),
postContent VARCHAR2,
postRate INTEGER(1)
);
CREATE TABLE user(
userID INTEGER(4),
userName VARCHAR2,
firstName VARCHAR2,
lastName VARCHAR2,
userTags VARCHAR2,
savedPostID INTEGER,
FOREIGN KEY (savefPostName) REFERENCES posts(postTitle)
);
CREATE TABLE publication(
FOREIGN KEY (pubID) REFERENCES posts(postID),
pubName VARCHAR2
);
CREATE TABLE tags(
tagID INTEGER(4),
FOREIGN KEY (tagName) REFERENCES user(userTags),
FOREIGN KEY (postTitle) REFERENCES posts(postTitle)
;
CREATE TABLE author(
authorID INTEGER(4),
firstName VARCHAR2,
lastName VARCHAR2,
FOREIGN KEY (pubName) REFERENCES publication(pubName)
);