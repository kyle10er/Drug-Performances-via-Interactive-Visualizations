-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Conditions" (
    "Condition_no" int   NOT NULL,
    "Condition" text   NOT NULL,
    CONSTRAINT "pk_Conditions" PRIMARY KEY (
        "Condition_no"
     )
);

CREATE TABLE "Drug" (
    "Drug_no" int   NOT NULL,
    "Drug" text   NOT NULL,
    CONSTRAINT "pk_Drug" PRIMARY KEY (
        "Drug_no"
     )
);

CREATE TABLE "Form" (
    "Form_no" int   NOT NULL,
    "Form" varchar   NOT NULL,
    CONSTRAINT "pk_Form" PRIMARY KEY (
        "Form_no"
     )
);

CREATE TABLE "Drug_data" (
    "pk" int   NOT NULL,
    "Condition_no" int   NOT NULL,
    "Drug_no" int   NOT NULL,
    "Form_no" int   NOT NULL,
    "EaseOfUse" varchar   NOT NULL,
    "Effective" varchar   NOT NULL,
    "Price" varchar   NOT NULL,
    "Reviews" varchar   NOT NULL,
    "Satisfaction" varchar   NOT NULL,
    CONSTRAINT "pk_Drug_data" PRIMARY KEY (
        "pk"
     )
);

ALTER TABLE "Drug_data" ADD CONSTRAINT "fk_Drug_data_Condition_no" FOREIGN KEY("Condition_no")
REFERENCES "Conditions" ("Condition_no");

ALTER TABLE "Drug_data" ADD CONSTRAINT "fk_Drug_data_Drug_no" FOREIGN KEY("Drug_no")
REFERENCES "Drug" ("Drug_no");

ALTER TABLE "Drug_data" ADD CONSTRAINT "fk_Drug_data_Form_no" FOREIGN KEY("Form_no")
REFERENCES "Form" ("Form_no");

