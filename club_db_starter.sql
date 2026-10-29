/* ==========================================================================
   club_db_starter.sql
   CIS 4720 Database Management and SQL
   Project 9

   WHAT THIS FILE IS
   Your starter for Project 9. It builds a schema called club_db with one
   table in it, member, already filled in. Everything else is yours to write
   under the headings further down.

   WHY MEMBER IS GIVEN TO YOU
   Read its CREATE TABLE statement before you start. It is a worked example
   of the two things this project is about: a surrogate key, and a starting
   value for that key. You build payment and payment_log the same way.

   BEFORE YOU RUN IT
   Connect SQLTools to information_schema first, the same as Lab 5d and
   Lab 5e. The first two statements in this file create club_db and switch
   you into it. Step 1 walks through it.

   HOW TO RUN IT
   One statement at a time. Put the cursor on it and press Ctrl + E twice.
   The function and the triggers you write later are each a single statement
   from CREATE down to END, so select the whole block and run the selection.

   LABELING AND COMMENTING IS REQUIRED
   Above every statement you write, put a short comment in your own words
   saying what it does. The comments are graded.
   ========================================================================== */


-- =================================================================
-- SETUP. Run these three first, one at a time, while you are still
-- connected to information_schema.
-- =================================================================

-- every schema on this server. club_db will not be in the list yet.
show databases;

-- make yours. IF NOT EXISTS means it is safe to run twice.
create database if not exists club_db;

-- switch into it, so everything below lands in the right place.
use club_db;


-- ======================================================================
-- GIVEN TO YOU. The member table.
--
-- member_id is a surrogate key: a number the database invents so that
-- every row can be told apart. Nobody is born with one.
--
-- AUTO_INCREMENT = 100 after the closing bracket is what makes the first
-- member 100 instead of 1. Club membership numbers start at 100 because
-- that is how the club has always done it, which is the usual reason.
-- ======================================================================

CREATE TABLE member (
    member_id  INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name  VARCHAR(30) NOT NULL,
    joined_on  DATE,
    total_paid DECIMAL(7,2) DEFAULT 0.00
) AUTO_INCREMENT = 100;

INSERT INTO member (first_name, last_name, joined_on) VALUES ('Noor',   'Haddad',   '2026-01-15');
INSERT INTO member (first_name, last_name, joined_on) VALUES ('Caleb',  'Ortiz',    '2026-02-03');
INSERT INTO member (first_name, last_name, joined_on) VALUES ('Sofia',  'Marchetti','2026-02-28');
INSERT INTO member (first_name, last_name, joined_on) VALUES ('Desmond','Blake',    '2026-03-11');


-- ======================================================================
-- CHECK. Four members, numbered 100 to 103, every total_paid at 0.00.
-- ======================================================================

SELECT * FROM member;


-- ######################################################################
-- YOUR PROJECT 9 WORK STARTS BELOW THIS LINE
--
-- LABELING AND COMMENTING IS REQUIRED. It is worth a full point.
--
-- You write the SQL for Steps 2, 3, 4 and 9 yourself.
--
-- Steps 5, 6, 7 and 8 are in the handout with the skeleton complete and
-- ONE statement removed from each. Copy the skeleton in, then write the
-- missing statement yourself. The handout walks you through each one a
-- line at a time.
-- ######################################################################


-- =================================================================
-- STEP 2. Create the payment table, key starting at 5000
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 3. Create the payment_log table
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 4. Check your two counters before anything is inserted
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 5. Create the member_total function
--
-- Copy the skeleton from the handout, then write the SELECT that goes in
-- the gap. One statement from CREATE FUNCTION down to END, so select the
-- whole block and run the selection.
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 6. A BEFORE INSERT trigger that fills in what was left out
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 7. An AFTER INSERT trigger that updates and logs
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 8. An AFTER DELETE trigger that does the same in reverse
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 9. Add four payments, then remove one, and watch it all happen
-- =================================================================

-- your comment goes here
-- your statements go here


-- =================================================================
-- STEP 10 and 11. Push to GitHub and submit the URL
-- Nothing to write here. Follow the handout.
-- =================================================================
