1. A form that represents a has many to a belongs to relationship - complex form

  - collection of objects to assign a foreign key

  posts
                category_id


  categories


  form_tag
  form_for
    collection_select

  When creating a post, you assign the category of the post from a collection of categories.

2. A form that represents a has many through. - nested forms

  posts

  post_catagories
    post_id        category_id

  categories

  When creating a post, you assign the categories of the post from a collection of categories.

  form_for
    collection_select  