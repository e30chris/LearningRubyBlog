CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "commenter" varchar(255), "body" text, "post_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "title" varchar(255), "content" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "post_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_comments_on_post_id" ON "comments" ("post_id");
CREATE INDEX "index_tags_on_post_id" ON "tags" ("post_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110912232516');

INSERT INTO schema_migrations (version) VALUES ('20110912235503');

INSERT INTO schema_migrations (version) VALUES ('20110913051954');