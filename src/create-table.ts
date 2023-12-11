import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  // ... you will write your Prisma Client queries here
  await prisma.user.create({
    data: {
        id: 123,
        currentApplicationNumber: 1234,
        applicationType: 'TechnicalInstitute',
        currentStatus: 'New_Institute',
        academicYear: 2023,
        applicationOpenedDate: 10,
        applicationSubmittedDate: 20,
        reopenedApplicationDate: 26,
        appealRequestDate: 30,
        applicationDontRecieved: false
    }
  })
}

main()