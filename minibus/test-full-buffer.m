#import "MBMessage.h"

int main() {
    @autoreleasepool {
        // Complete two-message buffer (exact data from MiniBus log)
        uint8_t fullBuffer[] = {
            // First message (GetNameOwner)
            0x6c, 0x01, 0x00, 0x01, 0x14, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x7d, 0x00, 0x00, 0x00,
            0x01, 0x01, 0x6f, 0x00, 0x15, 0x00, 0x00, 0x00, 0x2f, 0x6f, 0x72, 0x67, 0x2f, 0x66, 0x72, 0x65,
            0x65, 0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2f, 0x44, 0x42, 0x75, 0x73, 0x00, 0x00, 0x00,
            0x02, 0x01, 0x73, 0x00, 0x14, 0x00, 0x00, 0x00, 0x6f, 0x72, 0x67, 0x2e, 0x66, 0x72, 0x65, 0x65,
            0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2e, 0x44, 0x42, 0x75, 0x73, 0x00, 0x00, 0x00, 0x00,
            0x06, 0x01, 0x73, 0x00, 0x14, 0x00, 0x00, 0x00, 0x6f, 0x72, 0x67, 0x2e, 0x66, 0x72, 0x65, 0x65,
            0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2e, 0x44, 0x42, 0x75, 0x73, 0x00, 0x00, 0x00, 0x00,
            0x08, 0x01, 0x67, 0x00, 0x01, 0x73, 0x00, 0x00, 0x03, 0x01, 0x73, 0x00, 0x0c, 0x00, 0x00, 0x00,
            0x47, 0x65, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x4f, 0x77, 0x6e, 0x65, 0x72, 0x00, 0x00, 0x00, 0x00,
            0x0f, 0x00, 0x00, 0x00, 0x6f, 0x72, 0x67, 0x2e, 0x78, 0x66, 0x63, 0x65, 0x2e, 0x58, 0x66, 0x63,
            0x6f, 0x6e, 0x66, 0x00, // First message ends here (164 bytes)
            
            // Second message (AddMatch) - starts at offset 164
            0x6c, 0x01, 0x00, 0x01, 0xa1, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
            0x79, 0x00, 0x00, 0x00, 0x01, 0x01, 0x6f, 0x00, 0x15, 0x00, 0x00, 0x00,
            0x2f, 0x6f, 0x72, 0x67, 0x2f, 0x66, 0x72, 0x65, 0x65, 0x64, 0x65, 0x73,
            0x6b, 0x74, 0x6f, 0x70, 0x2f, 0x44, 0x42, 0x75, 0x73, 0x00, 0x00, 0x00,
            0x02, 0x01, 0x73, 0x00, 0x14, 0x00, 0x00, 0x00, 0x6f, 0x72, 0x67, 0x2e,
            0x66, 0x72, 0x65, 0x65, 0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2e,
            0x44, 0x42, 0x75, 0x73, 0x00, 0x00, 0x00, 0x00, 0x06, 0x01, 0x73, 0x00,
            0x14, 0x00, 0x00, 0x00, 0x6f, 0x72, 0x67, 0x2e, 0x66, 0x72, 0x65, 0x65,
            0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2e, 0x44, 0x42, 0x75, 0x73,
            0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x67, 0x00, 0x01, 0x73, 0x00, 0x00,
            0x03, 0x01, 0x73, 0x00, 0x08, 0x00, 0x00, 0x00, 0x41, 0x64, 0x64, 0x4d,
            0x61, 0x74, 0x63, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x9c, 0x00, 0x00, 0x00, 0x74, 0x79, 0x70, 0x65, 0x3d, 0x27, 0x73, 0x69,
            0x67, 0x6e, 0x61, 0x6c, 0x27, 0x2c, 0x73, 0x65, 0x6e, 0x64, 0x65, 0x72,
            0x3d, 0x27, 0x6f, 0x72, 0x67, 0x2e, 0x78, 0x66, 0x63, 0x65, 0x2e, 0x58,
            0x66, 0x63, 0x6f, 0x6e, 0x66, 0x27, 0x2c, 0x69, 0x6e, 0x74, 0x65, 0x72,
            0x66, 0x61, 0x63, 0x65, 0x3d, 0x27, 0x6f, 0x72, 0x67, 0x2e, 0x66, 0x72,
            0x65, 0x65, 0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2e, 0x44, 0x42,
            0x75, 0x73, 0x2e, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x69, 0x65,
            0x73, 0x27, 0x2c, 0x6d, 0x65, 0x6d, 0x62, 0x65, 0x72, 0x3d, 0x27, 0x50,
            0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x69, 0x65, 0x73, 0x43, 0x68, 0x61,
            0x6e, 0x67, 0x65, 0x64, 0x27, 0x2c, 0x70, 0x61, 0x74, 0x68, 0x3d, 0x27,
            0x2f, 0x6f, 0x72, 0x67, 0x2f, 0x78, 0x66, 0x63, 0x65, 0x2f, 0x58, 0x66,
            0x63, 0x6f, 0x6e, 0x66, 0x27, 0x2c, 0x61, 0x72, 0x67, 0x30, 0x3d, 0x27,
            0x6f, 0x72, 0x67, 0x2e, 0x78, 0x66, 0x63, 0x65, 0x2e, 0x58, 0x66, 0x63,
            0x6f, 0x6e, 0x66, 0x27, 0x00
        };
        
        NSData *fullData = [NSData dataWithBytes:fullBuffer length:sizeof(fullBuffer)];
        NSLog(@"Testing complete two-message buffer (%lu bytes)", [fullData length]);
        
        // Test step-by-step parsing
        NSUInteger offset = 0;
        int messageCount = 0;
        
        // Parse first message
        NSLog(@"\n=== PARSING MESSAGE 1 ===");
        NSUInteger offset1 = offset;
        MBMessage *msg1 = [MBMessage messageFromData:fullData offset:&offset];
        if (msg1) {
            messageCount++;
            NSLog(@"Message 1: SUCCESS, consumed %lu bytes (offset %lu -> %lu)", 
                  offset - offset1, offset1, offset);
            NSLog(@"  Type: %d, Serial: %lu, Member: %@", (int)msg1.type, msg1.serial, msg1.member);
        } else {
            NSLog(@"Message 1: FAILED at offset %lu", offset);
            return 1;
        }
        
        // Parse second message
        NSLog(@"\n=== PARSING MESSAGE 2 ===");
        if (offset < [fullData length]) {
            NSUInteger offset2 = offset;
            NSLog(@"Starting message 2 at offset %lu", offset2);
            
            // Show the bytes at the second message start
            const uint8_t *bytes = [fullData bytes];
            NSLog(@"Bytes at offset %lu: %02x %02x %02x %02x %02x %02x %02x %02x", 
                  offset2, bytes[offset2], bytes[offset2+1], bytes[offset2+2], bytes[offset2+3],
                  bytes[offset2+4], bytes[offset2+5], bytes[offset2+6], bytes[offset2+7]);
            
            MBMessage *msg2 = [MBMessage messageFromData:fullData offset:&offset];
            if (msg2) {
                messageCount++;
                NSLog(@"Message 2: SUCCESS, consumed %lu bytes (offset %lu -> %lu)", 
                      offset - offset2, offset2, offset);
                NSLog(@"  Type: %d, Serial: %lu, Member: %@", (int)msg2.type, msg2.serial, msg2.member);
            } else {
                NSLog(@"Message 2: FAILED at offset %lu", offset2);
            }
        } else {
            NSLog(@"No more data for message 2");
        }
        
        NSLog(@"\n=== SUMMARY ===");
        NSLog(@"Parsed %d messages total", messageCount);
        
        // Also test with messagesFromData
        NSLog(@"\n=== TESTING messagesFromData ===");
        NSUInteger consumed = 0;
        NSArray *messages = [MBMessage messagesFromData:fullData consumedBytes:&consumed];
        NSLog(@"messagesFromData: parsed %lu messages, consumed %lu bytes", 
              [messages count], consumed);
    }
    return 0;
}
