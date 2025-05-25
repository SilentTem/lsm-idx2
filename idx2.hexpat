#pragma author SilentTem
#pragma description IDX2 archive format used in Lucky Star no Mori games

#pragma endian little

enum UnknownEnum : u8 {
    Type0 = 0,
    Type1 = 1,
    Type2 = 2,
    Type3 = 3
};

struct Header {
    char magic[6];
    u16 fileCount;
    u32 sizeBytes;
    u8 unknown0;
    u8 unknown1;
    UnknownEnum unknownEnum;
    u8 unknown2;
    char developer[16];
};

struct File {
    u32 dataOffset;
    u32 fileLength;
    u16 unknown1;
    u16 unknown2;
    u16 unknown3;
    u16 unknown4;
    char filename[32];
    char content[fileLength] @ dataOffset;
};

struct FileList {
    File entries[Header.fileCount];
};

Header Header @ 0x0;
FileList File @ 0x420;