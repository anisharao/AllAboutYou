CREATE TABLE `All_about_you`.`tags` (
  `tagID` INT NOT NULL AUTO_INCREMENT,
  `tag` VARCHAR(45) NULL,
  PRIMARY KEY (`tagID`));

  CREATE TABLE `All_about_you`.`mood_tag` (
  `moodID` VARCHAR(45) NOT NULL,
  `tagID` INT NOT NULL,
  PRIMARY KEY (`moodID`, `tagID`),
  INDEX `tagfk_idx` (`tagID` ASC) VISIBLE,
  CONSTRAINT `moodfk`
    FOREIGN KEY (`moodID`)
    REFERENCES `All_about_you`.`moods` (`moodID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `tagfk`
    FOREIGN KEY (`tagID`)
    REFERENCES `All_about_you`.`tags` (`tagID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

   CREATE TABLE `All_about_you`.`affirmation_tag` (
  `affirmation` VARCHAR(100) NOT NULL,
  `tagID` INT NOT NULL,
  PRIMARY KEY (`affirmation`, `tagID`),
  INDEX `tagFK_idx` (`tagID` ASC) VISIBLE,
  CONSTRAINT `tag_aff_fk`
    FOREIGN KEY (`tagID`)
    REFERENCES `All_about_you`.`tags` (`tagID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

    CREATE TABLE `All_about_you`.`score_feeling` (
  `score` INT NOT NULL,
  `feeling` VARCHAR(100) NULL,
  PRIMARY KEY (`score`));

    ALTER TABLE `All_about_you`.`affirmation_tag` 
ADD COLUMN `aff_score` INT NULL AFTER `tagID`;
