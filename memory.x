MEMORY {
    /*
     * The RP2040's internal bootloader only runs code from the first 256
     * bytes of flash. The second-stage bootloader (boot2), which is
     * embedded by embassy-rp into the `.boot2` section, must live here so
     * the Boot ROM can hand off execution to it.
     */
    BOOT2 : ORIGIN = 0x10000000, LENGTH = 0x100
    /*
     * 2 MiB is a safe default here, matching the flash on a Raspberry Pi
     * Pico / Pico W and most RP2040 boards.
     */
    FLASH : ORIGIN = 0x10000100, LENGTH = 2048K - 0x100
    /*
     * RAM consists of 6 banks: SRAM0-3 (striped, 256K total) plus SRAM4-5
     * (4K each, directly mapped). They are combined here into one block.
     */
    RAM : ORIGIN = 0x20000000, LENGTH = 264K
}
