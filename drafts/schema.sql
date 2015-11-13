CREATE TABLE clubs (
  id INTEGER PRIMARY KEY,
  name text,
  category text,
  email text,
  website text,
  aff_year INTEGER,
  founding_year INTEGER
);

CREATE TABLE requests(
  id INTEGER PRIMARY KEY,
  club_id INTEGER,
  year INTEGER,
  funding_category TEXT,
  funding_round TEXT,
  amt_requested REAL,
  amt_approved REAL,
  comments TEXT,
  students_affected INTEGER,
  FOREIGN KEY(club_id) REFERENCES clubs(id)
);

CREATE TABLE member_tally(
  id INTEGER PRIMARY KEY,
	club_id INTEGER,
	year INTEGER,
	mie INTEGER,
	ece INTEGER,
	civ_min INTEGER,
	chemse INTEGER,
	t1 INTEGER,
	engsci INTEGER,
	other INTEGER,
	engsoc INTEGER,
  FOREIGN KEY(club_id) REFERENCES clubs(id)
);

CREATE TABLE executives(
  id INTEGER PRIMARY KEY,
  name TEXT,
  position TEXT
);

CREATE TABLE clubs_executives(
  id INTEGER PRIMARY KEY,
  club_id INTEGER,
  executive_id INTEGER,
  FOREIGN KEY(club_id) REFERENCES clubs(id),
  FOREIGN KEY(executive_id) REFERENCES executives(id)
);
