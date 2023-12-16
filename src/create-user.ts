import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  try {
    // Make sure a storage_Ids record with id 1 exists
    const storageIdsRecord = await prisma.storage_Ids.findUnique({
      where: { id: 1 },
    });

    if (!storageIdsRecord) {
      console.error('Error: storage_Ids record with id 1 not found.');
      return;
    }

    // Create an Institute and connect it to the storage_Ids record
    await prisma.institute.create({
      data: {
        currentApplicationNumber: 123,
        applicationType: "hello",
        subStstus: "done",
        authorId: 1,  // Connect to the existing storage_Ids record with id 1
      },
    });
  } catch (error) {
    console.error('Error:', console.log(error));
  } finally {
    await prisma.$disconnect();
  }
}

main();
