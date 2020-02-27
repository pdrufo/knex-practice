INSERT INTO blogful_articles (title, date_published, content)
VALUES
    ('Hello', now() - '11 days'::INTERVAL, 'Some content'),
    ('Goodbye', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Pete', now() - '11 days'::INTERVAL, 'Some content'), 
    ('David', now() - '11 days'::INTERVAL, 'Some content'), 
    ('John', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Cat', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Dog', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Horse', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Lion', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Tiger', now() - '11 days'::INTERVAL, 'Some content'), 
    ('Bees', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Fish', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Crab', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Oyster', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Water', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Boat', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Lobster', now() - '21 days'::INTERVAL, 'Some content'), 
    ('Shark', now() - '21 days'::INTERVAL, 'Some content')
    ;