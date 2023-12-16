import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    // ... you will write your Prisma Client queries here
    await prisma.institute.create({
        data:{
            currentApplicationNumber: 123,
            applicationType: "hello",
            subStstus: "done",
            author:{
                connect:{
                    id: 1
                }
            }
        }
    })
}


main()