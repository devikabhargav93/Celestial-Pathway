-- CreateTable
CREATE TABLE `userMasters` (
    `userId` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `passwordHash` VARCHAR(191) NOT NULL,
    `roleId` INTEGER NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    UNIQUE INDEX `userMasters_username_key`(`username`),
    UNIQUE INDEX `userMasters_email_key`(`email`),
    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `userDetails` (
    `userDetailId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `firstName` VARCHAR(191) NULL,
    `lastName` VARCHAR(191) NULL,
    `dob` DATETIME(3) NULL,
    `phone` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`userDetailId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Roles` (
    `roleId` INTEGER NOT NULL AUTO_INCREMENT,
    `roleName` VARCHAR(191) NOT NULL,
    `roleDescription` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    UNIQUE INDEX `Roles_roleName_key`(`roleName`),
    PRIMARY KEY (`roleId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Enrollment` (
    `enrollmentId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `courseId` INTEGER NOT NULL,
    `enrollmentDate` DATETIME(3) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`enrollmentId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PaymentDetails` (
    `paymentId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `courseId` INTEGER NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `paymentDate` DATETIME(3) NULL,
    `paymentMethod` VARCHAR(191) NULL,
    `transactionId` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`paymentId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `categoryId` INTEGER NOT NULL AUTO_INCREMENT,
    `categoryName` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`categoryId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `course` (
    `courseId` INTEGER NOT NULL AUTO_INCREMENT,
    `categoryId` INTEGER NULL,
    `title` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `duration` VARCHAR(191) NULL,
    `price` DECIMAL(65, 30) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`courseId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Modules` (
    `moduleId` INTEGER NOT NULL AUTO_INCREMENT,
    `courseId` INTEGER NOT NULL,
    `moduleTitle` VARCHAR(191) NULL,
    `content` VARCHAR(191) NULL,
    `sequenceNo` INTEGER NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`moduleId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Mcqs` (
    `mcqId` INTEGER NOT NULL AUTO_INCREMENT,
    `moduleId` INTEGER NOT NULL,
    `question` VARCHAR(191) NULL,
    `optionA` VARCHAR(191) NULL,
    `optionB` VARCHAR(191) NULL,
    `optionC` VARCHAR(191) NULL,
    `optionD` VARCHAR(191) NULL,
    `correctOption` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`mcqId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Progress` (
    `progressId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `moduleId` INTEGER NOT NULL,
    `status` VARCHAR(191) NULL,
    `completedOn` DATETIME(3) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`progressId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `marks` (
    `markId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `moduleId` INTEGER NOT NULL,
    `score` DECIMAL(65, 30) NULL,
    `totalMarks` DECIMAL(65, 30) NULL,
    `examDate` DATETIME(3) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`markId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Certification` (
    `certificateId` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `courseId` INTEGER NOT NULL,
    `issueDate` DATETIME(3) NULL,
    `certificateUrl` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`certificateId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `careerpath` (
    `pathId` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `recommendedCourseIds` VARCHAR(191) NULL,
    `createdBy` VARCHAR(191) NULL,
    `createdOn` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `updatedOn` DATETIME(3) NULL,
    `dataStatus` VARCHAR(191) NULL,
    `recStatus` VARCHAR(191) NULL,
    `recSeq` INTEGER NULL,

    PRIMARY KEY (`pathId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `userMasters` ADD CONSTRAINT `userMasters_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Roles`(`roleId`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `userDetails` ADD CONSTRAINT `userDetails_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`courseId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PaymentDetails` ADD CONSTRAINT `PaymentDetails_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PaymentDetails` ADD CONSTRAINT `PaymentDetails_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`courseId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `course` ADD CONSTRAINT `course_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Category`(`categoryId`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Modules` ADD CONSTRAINT `Modules_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`courseId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Mcqs` ADD CONSTRAINT `Mcqs_moduleId_fkey` FOREIGN KEY (`moduleId`) REFERENCES `Modules`(`moduleId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Progress` ADD CONSTRAINT `Progress_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Progress` ADD CONSTRAINT `Progress_moduleId_fkey` FOREIGN KEY (`moduleId`) REFERENCES `Modules`(`moduleId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `marks` ADD CONSTRAINT `marks_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `marks` ADD CONSTRAINT `marks_moduleId_fkey` FOREIGN KEY (`moduleId`) REFERENCES `Modules`(`moduleId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Certification` ADD CONSTRAINT `Certification_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `userMasters`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Certification` ADD CONSTRAINT `Certification_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`courseId`) ON DELETE RESTRICT ON UPDATE CASCADE;
