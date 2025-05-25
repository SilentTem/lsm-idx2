# Lucky Star no Mori IDX2
Tools to help with unpacking and understanding IDX2 archives from the Lucky Star no Mori series

## File Structure

### Header
| Offset | Type          | Description                |
| ------ | ------------- | -------------------------- |
| 0x00   | `char[6]`     | File magic                 |
| 0x06   | `u16`         | Number of files in archive |
| 0x08   | `u32`         | Size of archive in bytes   |
| 0x10   | `char[16]`    | Developer of format?       |

### File Index
Starts at offset `0x420`
| Offset | Type          | Description                |
| ------ | ------------- | -------------------------- |
| 0x00   | `u32`         | Data offset                |
| 0x04   | `u32`         | File length                |
| 0x10   | `char[32]`    | Filename                   |

## Tested Games
- Lucky Star no Mori
- Lucky Star no Mori 2
- Lucky Star no Mori 3
- Lucky Star no Mori 4
- Lucky Star no Mori 5
- Lucky Star no Mori 6
- Lucky Star no Mori 7
- Lucky Star no Mori 8
- Lucky Star no Mori 9
- Lucky Star no Mori 10
- Lucky Star no Mori 11
- Lucky Star no Mori 12

## Known Issues
- Only using ASCII encoding, UTF-16 encoded characters in filenames will show up incorrectly
- Some sections have yet to be examined
- Cannot repack archives with the QuickBMS script
