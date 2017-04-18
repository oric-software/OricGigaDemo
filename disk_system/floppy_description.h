//
// Floppy layout generated by FloppyBuilder 0.19
//

#ifdef ASSEMBLER
//
// Information for the Assembler
//
#ifdef LOADER
FileStartSector .byt 4,8,11,10,10,10,2,14,7,14,15,4,11,1,8,15,5,12,2,9,16,6,13,3,10,17,7,14,4,11,1,8,15,5,12,2,9,16,6,13,3,10,17,7,14,4,11,1,8,15,5,12,2,9,16,6,13,3,10,17,7
FileStartTrack .byt 0,0,4,6,8,16,17,17,18,21,28,37,37,38,38,38,39,39,40,40,40,41,41,128,128,128,129,129,130,130,131,131,131,132,132,133,133,133,134,134,135,135,135,136,136,137,137,138,138,138,139,139,140,140,140,141,141,142,142,142,143
FileStoredSizeLow .byt <1024,<18176,<8448,<8704,<34816,<2304,<3072,<2560,<14848,<30720,<36352,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792
FileStoredSizeHigh .byt >1024,>18176,>8448,>8704,>34816,>2304,>3072,>2560,>14848,>30720,>36352,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792
FileSizeLow .byt <1024,<18176,<8448,<8704,<34816,<2304,<3072,<2560,<14848,<30720,<36352,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792,<1792
FileSizeHigh .byt >1024,>18176,>8448,>8704,>34816,>2304,>3072,>2560,>14848,>30720,>36352,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792,>1792
FileLoadAdressLow .byt <64512,<4096,<2048,<2048,<2048,<2048,<2048,<2048,<2048,<2048,<2048,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560,<2560
FileLoadAdressHigh .byt >64512,>4096,>2048,>2048,>2048,>2048,>2048,>2048,>2048,>2048,>2048,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560,>2560
#endif // LOADER
#else
//
// Information for the Compiler
//
#endif

//
// Summary for this floppy building session:
//
#define FLOPPY_SIDE_NUMBER 2    // Number of sides
#define FLOPPY_TRACK_NUMBER 42    // Number of tracks
#define FLOPPY_SECTOR_PER_TRACK 17   // Number of sectors per track

//
// List of files written to the floppy
//
// Entry #0 '..\build\files\loader.o'
// - Loads at address 64512 starts on track 0 sector 4 and is 4 sectors long (1024 bytes).
// Entry #1 '..\Extraction\introBars.bin'
// - Loads at address 4096 starts on track 0 sector 8 and is 71 sectors long (18176 bytes).
// Entry #2 '..\Extraction\displayExocetMoon.bin'
// - Loads at address 2048 starts on track 4 sector 11 and is 33 sectors long (8448 bytes).
// Entry #3 '..\Extraction\scrollChessboard.bin'
// - Loads at address 2048 starts on track 6 sector 10 and is 34 sectors long (8704 bytes).
// Entry #4 '..\Extraction\File_3.bin'
// - Loads at address 2048 starts on track 8 sector 10 and is 136 sectors long (34816 bytes).
// Entry #5 '..\Extraction\File_4.bin'
// - Loads at address 2048 starts on track 16 sector 10 and is 9 sectors long (2304 bytes).
// Entry #6 '..\Extraction\File_5.bin'
// - Loads at address 2048 starts on track 17 sector 2 and is 12 sectors long (3072 bytes).
// Entry #7 '..\Extraction\File_6.bin'
// - Loads at address 2048 starts on track 17 sector 14 and is 10 sectors long (2560 bytes).
// Entry #8 '..\Extraction\File_7.bin'
// - Loads at address 2048 starts on track 18 sector 7 and is 58 sectors long (14848 bytes).
// Entry #9 '..\Extraction\File_8.bin'
// - Loads at address 2048 starts on track 21 sector 14 and is 120 sectors long (30720 bytes).
// Entry #10 '..\Extraction\File_9.bin'
// - Loads at address 2048 starts on track 28 sector 15 and is 142 sectors long (36352 bytes).
// Entry #11 '..\Extraction\File_10.bin'
// - Loads at address 2560 starts on track 37 sector 4 and is 7 sectors long (1792 bytes).
// Entry #12 '..\Extraction\File_11.bin'
// - Loads at address 2560 starts on track 37 sector 11 and is 7 sectors long (1792 bytes).
// Entry #13 '..\Extraction\File_12.bin'
// - Loads at address 2560 starts on track 38 sector 1 and is 7 sectors long (1792 bytes).
// Entry #14 '..\Extraction\File_13.bin'
// - Loads at address 2560 starts on track 38 sector 8 and is 7 sectors long (1792 bytes).
// Entry #15 '..\Extraction\File_14.bin'
// - Loads at address 2560 starts on track 38 sector 15 and is 7 sectors long (1792 bytes).
// Entry #16 '..\Extraction\File_15.bin'
// - Loads at address 2560 starts on track 39 sector 5 and is 7 sectors long (1792 bytes).
// Entry #17 '..\Extraction\File_16.bin'
// - Loads at address 2560 starts on track 39 sector 12 and is 7 sectors long (1792 bytes).
// Entry #18 '..\Extraction\File_17.bin'
// - Loads at address 2560 starts on track 40 sector 2 and is 7 sectors long (1792 bytes).
// Entry #19 '..\Extraction\File_18.bin'
// - Loads at address 2560 starts on track 40 sector 9 and is 7 sectors long (1792 bytes).
// Entry #20 '..\Extraction\File_19.bin'
// - Loads at address 2560 starts on track 40 sector 16 and is 7 sectors long (1792 bytes).
// Entry #21 '..\Extraction\File_20.bin'
// - Loads at address 2560 starts on track 41 sector 6 and is 7 sectors long (1792 bytes).
// Entry #22 '..\Extraction\File_21.bin'
// - Loads at address 2560 starts on track 41 sector 13 and is 7 sectors long (1792 bytes).
// Entry #23 '..\Extraction\File_22.bin'
// - Loads at address 2560 starts on the second side on track 0 sector 3 and is 7 sectors long (1792 bytes).
// Entry #24 '..\Extraction\File_23.bin'
// - Loads at address 2560 starts on the second side on track 0 sector 10 and is 7 sectors long (1792 bytes).
// Entry #25 '..\Extraction\File_24.bin'
// - Loads at address 2560 starts on the second side on track 0 sector 17 and is 7 sectors long (1792 bytes).
// Entry #26 '..\Extraction\File_25.bin'
// - Loads at address 2560 starts on the second side on track 1 sector 7 and is 7 sectors long (1792 bytes).
// Entry #27 '..\Extraction\File_26.bin'
// - Loads at address 2560 starts on the second side on track 1 sector 14 and is 7 sectors long (1792 bytes).
// Entry #28 '..\Extraction\File_27.bin'
// - Loads at address 2560 starts on the second side on track 2 sector 4 and is 7 sectors long (1792 bytes).
// Entry #29 '..\Extraction\File_28.bin'
// - Loads at address 2560 starts on the second side on track 2 sector 11 and is 7 sectors long (1792 bytes).
// Entry #30 '..\Extraction\File_29.bin'
// - Loads at address 2560 starts on the second side on track 3 sector 1 and is 7 sectors long (1792 bytes).
// Entry #31 '..\Extraction\File_30.bin'
// - Loads at address 2560 starts on the second side on track 3 sector 8 and is 7 sectors long (1792 bytes).
// Entry #32 '..\Extraction\File_31.bin'
// - Loads at address 2560 starts on the second side on track 3 sector 15 and is 7 sectors long (1792 bytes).
// Entry #33 '..\Extraction\File_32.bin'
// - Loads at address 2560 starts on the second side on track 4 sector 5 and is 7 sectors long (1792 bytes).
// Entry #34 '..\Extraction\File_33.bin'
// - Loads at address 2560 starts on the second side on track 4 sector 12 and is 7 sectors long (1792 bytes).
// Entry #35 '..\Extraction\File_34.bin'
// - Loads at address 2560 starts on the second side on track 5 sector 2 and is 7 sectors long (1792 bytes).
// Entry #36 '..\Extraction\File_35.bin'
// - Loads at address 2560 starts on the second side on track 5 sector 9 and is 7 sectors long (1792 bytes).
// Entry #37 '..\Extraction\File_36.bin'
// - Loads at address 2560 starts on the second side on track 5 sector 16 and is 7 sectors long (1792 bytes).
// Entry #38 '..\Extraction\File_37.bin'
// - Loads at address 2560 starts on the second side on track 6 sector 6 and is 7 sectors long (1792 bytes).
// Entry #39 '..\Extraction\File_38.bin'
// - Loads at address 2560 starts on the second side on track 6 sector 13 and is 7 sectors long (1792 bytes).
// Entry #40 '..\Extraction\File_39.bin'
// - Loads at address 2560 starts on the second side on track 7 sector 3 and is 7 sectors long (1792 bytes).
// Entry #41 '..\Extraction\File_40.bin'
// - Loads at address 2560 starts on the second side on track 7 sector 10 and is 7 sectors long (1792 bytes).
// Entry #42 '..\Extraction\File_41.bin'
// - Loads at address 2560 starts on the second side on track 7 sector 17 and is 7 sectors long (1792 bytes).
// Entry #43 '..\Extraction\File_42.bin'
// - Loads at address 2560 starts on the second side on track 8 sector 7 and is 7 sectors long (1792 bytes).
// Entry #44 '..\Extraction\File_43.bin'
// - Loads at address 2560 starts on the second side on track 8 sector 14 and is 7 sectors long (1792 bytes).
// Entry #45 '..\Extraction\File_44.bin'
// - Loads at address 2560 starts on the second side on track 9 sector 4 and is 7 sectors long (1792 bytes).
// Entry #46 '..\Extraction\File_45.bin'
// - Loads at address 2560 starts on the second side on track 9 sector 11 and is 7 sectors long (1792 bytes).
// Entry #47 '..\Extraction\File_46.bin'
// - Loads at address 2560 starts on the second side on track 10 sector 1 and is 7 sectors long (1792 bytes).
// Entry #48 '..\Extraction\File_47.bin'
// - Loads at address 2560 starts on the second side on track 10 sector 8 and is 7 sectors long (1792 bytes).
// Entry #49 '..\Extraction\File_48.bin'
// - Loads at address 2560 starts on the second side on track 10 sector 15 and is 7 sectors long (1792 bytes).
// Entry #50 '..\Extraction\File_49.bin'
// - Loads at address 2560 starts on the second side on track 11 sector 5 and is 7 sectors long (1792 bytes).
// Entry #51 '..\Extraction\File_50.bin'
// - Loads at address 2560 starts on the second side on track 11 sector 12 and is 7 sectors long (1792 bytes).
// Entry #52 '..\Extraction\File_51.bin'
// - Loads at address 2560 starts on the second side on track 12 sector 2 and is 7 sectors long (1792 bytes).
// Entry #53 '..\Extraction\File_52.bin'
// - Loads at address 2560 starts on the second side on track 12 sector 9 and is 7 sectors long (1792 bytes).
// Entry #54 '..\Extraction\File_53.bin'
// - Loads at address 2560 starts on the second side on track 12 sector 16 and is 7 sectors long (1792 bytes).
// Entry #55 '..\Extraction\File_54.bin'
// - Loads at address 2560 starts on the second side on track 13 sector 6 and is 7 sectors long (1792 bytes).
// Entry #56 '..\Extraction\File_55.bin'
// - Loads at address 2560 starts on the second side on track 13 sector 13 and is 7 sectors long (1792 bytes).
// Entry #57 '..\Extraction\File_56.bin'
// - Loads at address 2560 starts on the second side on track 14 sector 3 and is 7 sectors long (1792 bytes).
// Entry #58 '..\Extraction\File_57.bin'
// - Loads at address 2560 starts on the second side on track 14 sector 10 and is 7 sectors long (1792 bytes).
// Entry #59 '..\Extraction\File_58.bin'
// - Loads at address 2560 starts on the second side on track 14 sector 17 and is 7 sectors long (1792 bytes).
// Entry #60 '..\Extraction\File_59.bin'
// - Loads at address 2560 starts on the second side on track 15 sector 7 and is 7 sectors long (1792 bytes).
//
// 982 sectors used, out of 1428. (68% of the total disk size used)
//
#define LOADER_FIRST_PART 1

//
// Metadata
//
#ifdef METADATA_STORAGE

#endif // METADATA_STORAGE
