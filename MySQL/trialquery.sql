// Crop primay key

ALTER TABLE nhs_wtests DROP KEY (tech_id);

ALTER TABLE nhs_wtests DROP FOREIGN KEY tech_id;
ALTER TABLE `nhs_wtests` DROP INDEX `tech_id`;