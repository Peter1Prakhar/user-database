"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
function main() {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            // Make sure a storage_Ids record with id 1 exists
            const storageIdsRecord = yield prisma.storage_Ids.findUnique({
                where: { id: 1 },
            });
            if (!storageIdsRecord) {
                console.error('Error: storage_Ids record with id 1 not found.');
                return;
            }
            // Create an Institute and connect it to the storage_Ids record
            yield prisma.institute.create({
                data: {
                    currentApplicationNumber: 123,
                    applicationType: "hello",
                    subStstus: "done",
                    authorId: 1, // Connect to the existing storage_Ids record with id 1
                },
            });
        }
        catch (error) {
            console.error('Error:', console.log(error));
        }
        finally {
            yield prisma.$disconnect();
        }
    });
}
main();
