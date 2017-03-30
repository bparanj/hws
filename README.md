Iteration 0

Rails 5 App with simple layout and home page.

Iteration 1

Login and logout using user name.

Iteration 2

Student can see all assigned homework.

Iteration 3

Student can submit homework.

Iteration 4

Teacher can view the latest submissions for homeworks




SELECT ARTICLES.TITLE,
       COMMENTS.DETAILS
FROM ARTICLES INNER JOIN
  (
    SELECT ARTICLE_ID, 
           MAX(DATE_COMMENTED) LATEST_COMMENT_DATE
    FROM COMMENTS
    GROUP BY ARTICLE_ID
  ) LATEST_COMMENTS on ARTICLES.ID = LATEST_COMMENTS.ARTICLE_ID INNER JOIN
    COMMENTS ON LATEST_COMMENTS.ARTICLE_ID = COMMENTS.ARTICLE_ID AND
                LATEST_COMMENTS.LATEST_COMMENT_DATE = COMMENTS.DATE_COMMENTED ;


SELECT             


  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.integer  "homework_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "homeworks", force: :cascade do |t|
    t.string   "title"
    t.string   "question"
    t.date     "due_date"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
