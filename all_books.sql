SELECT *
FROM reviews_book b
LEFT JOIN reviews_bookcontributor bc
  ON b.id = bc.book_id
LEFT JOIN reviews_contributor c
  ON bc.contributor_id = c.id
LEFT JOIN reviews_publisher p
  ON b.publisher_id = p.id
LEFT JOIN reviews_review r
  ON b.id = r.book_id
LEFT JOIN auth_user u
  ON r.creator_id = u.id
 ORDER BY b.title, bc.role, c.last_names, c.first_names, r.date_created