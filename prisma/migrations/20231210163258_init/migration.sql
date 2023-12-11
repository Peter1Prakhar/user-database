-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "currentApplicationNumber" INTEGER NOT NULL,
    "applicationType" TEXT NOT NULL,
    "currentStatus" TEXT NOT NULL,
    "subStstus" TEXT,
    "academicYear" INTEGER NOT NULL,
    "applicationOpenedDate" INTEGER NOT NULL,
    "applicationSubmittedDate" INTEGER NOT NULL,
    "reopenedApplicationDate" INTEGER,
    "appealRequestDate" INTEGER NOT NULL,
    "applicationDontRecieved" BOOLEAN NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Institute" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "yearOfEstablishment" INTEGER NOT NULL,
    "instituteType" TEXT NOT NULL,
    "addressOfInstitute" TEXT NOT NULL,
    "state_Ut" TEXT NOT NULL,
    "district" TEXT NOT NULL,
    "town" TEXT NOT NULL,
    "pin" VARCHAR(6) NOT NULL,
    "primaryEmail" TEXT NOT NULL,
    "percentGrantRecievedFromGovernment" INTEGER NOT NULL,
    "forPWD" BOOLEAN NOT NULL,
    "womenInstitute" BOOLEAN NOT NULL,
    "LOIorLOIwithLOA" TEXT NOT NULL,
    "selfFinancedCourses" BOOLEAN NOT NULL,

    CONSTRAINT "Institute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "subSection" (
    "id" SERIAL NOT NULL,
    "minorityInstitute" BOOLEAN NOT NULL,
    "typeOfMinistry" TEXT NOT NULL,
    "nameOfMinority" TEXT NOT NULL,
    "nameOfMinorityOfLinguistic" TEXT NOT NULL,

    CONSTRAINT "subSection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "organisationDetails" (
    "id" SERIAL NOT NULL,
    "nameOfInstitute" TEXT NOT NULL,
    "typeOfInstitute" TEXT NOT NULL,
    "registeredWith" TEXT NOT NULL,
    "regidtrationDate" TEXT NOT NULL,
    "organisationAddress" TEXT NOT NULL,
    "pin" INTEGER NOT NULL,
    "PAN" INTEGER NOT NULL,
    "state" TEXT NOT NULL,
    "district" TEXT NOT NULL,
    "town" TEXT NOT NULL,
    "organisationWebsite" TEXT NOT NULL,
    "STDcode" INTEGER NOT NULL,
    "landlineNumber" INTEGER NOT NULL,

    CONSTRAINT "organisationDetails_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "trusteeDetails" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "designation" TEXT NOT NULL,
    "since" TEXT NOT NULL,
    "till" TEXT NOT NULL,
    "mobileNo" INTEGER NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "trusteeDetails_pkey" PRIMARY KEY ("id")
);
