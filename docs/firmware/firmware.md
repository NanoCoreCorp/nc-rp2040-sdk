# NC-RP2040 Firmware 
*by NanoCoreCorporation [NNC, NanoCore]*

## Protection and License

The `firmware/rp2040.s` file is part of an open source project distributed under the [MIT license](../../LICENSE). This means that you are free to use, modify, and distribute it, provided that the author and the original license are indicated in the documentation or source files. All responsibility for the use of this file lies with the user, and neither the author nor the owners of the project are responsible for any damage or loss that may occur as a result of using this code.

## Important: Do not modify files in the `firmware/` folder

The `firmware/rp2040.s` file and all files located in the `firmware/` folder contain critical code designed to ensure the correct operation of the firmware. It is recommended not to modify these files, as this may lead to unpredictable consequences, including but not limited to damage to the microcontroller crystal or chip. **Any changes may disrupt the operation of the device and lead to its damage.**

This code has been thoroughly tested, and the firmware available in the "main" branch on in most cases (in theory) should work correctly if the original RP2040 chip is used. However, despite testing, we do not guarantee its error-free operation in all situations, and neither the author `(or organization)` nor the developers are responsible for possible damage, data loss or other negative consequences associated with the use of this code.

**Use only original components and firmware to ensure that your device will work properly.**

# Registers
## Defining
In programming, especially in the context of microcontrollers and microprocessors, the term "`register`" usually refers to small areas of memory that are used to store data and control hardware. Registers can be of different types and perform different functions depending on the architecture of the processor or microcontroller.
The main types of registers are:

### Data Registers:
These registers are used to store data operands that can be processed by arithmetic or logical operations. For example, in microcontrollers, data registers can be used to temporarily store the values ​​of variables or the results of calculations.

### Address Registers:
These registers contain the memory addresses that are accessed to read or write data. They are used to specify the locations in memory where data should be written or read from.

### Status Registers:
These registers contain flags and bits that reflect the current state of the processor or device. For example, a status register may contain flags for execution conditions, such as an overflow flag or sign flags in arithmetic operations.

### Control Registers:
These registers are used to control various aspects of the processor or device. For example, control registers may contain bits for enabling or disabling certain features, setting operating modes, or changing the behavior of the device.

### Using Registers:

In low-level programming (such as assembly language) or when developing drivers for microcontrollers, it is often necessary to work directly with registers to control hardware or perform certain tasks. Programmers can load values ​​into registers, read them, set or clear flags in status registers, configure parameters in control registers, etc.

Registers often have a limited size (e.g., `8`, `16`, `32`, or `64` bits) and a specific set of functions depending on the processor or device architecture. Their structure and purpose are usually described in technical documentation or user manuals.

## List of Registers

The `ARM Cortex-M0+` registers start at a base address of `0xe0000000` (defined in file `firmware/regs.s`).

| Offset  | Name                   | Info                                             |
|---------|------------------------|--------------------------------------------------|
| 0xe010  | SYST_CSR                | SysTick Control and Status Register             |
| 0xe014  | SYST_RVR                | SysTick Reload Value Register                   |
| 0xe018  | SYST_CVR                | SysTick Current Value Register                  |
| 0xe01c  | SYST_CALIB              | SysTick Calibration Value Register              |
| 0xe100  | NVIC_ISER               | Interrupt Set-Enable Register                   |
| 0xe180  | NVIC_ICER               | Interrupt Clear-Enable Register                 |
| 0xe200  | NVIC_ISPR               | Interrupt Set-Pending Register                  |
| 0xe280  | NVIC_ICPR               | Interrupt Clear-Pending Register                |
| 0xe400  | NVIC_IPR0               | Interrupt Priority Register 0                   |
| 0xe404  | NVIC_IPR1               | Interrupt Priority Register 1                   |
| 0xe408  | NVIC_IPR2               | Interrupt Priority Register 2                   |
| 0xe40c  | NVIC_IPR3               | Interrupt Priority Register 3                   |
| 0xe410  | NVIC_IPR4               | Interrupt Priority Register 4                   |
| 0xe414  | NVIC_IPR5               | Interrupt Priority Register 5                   |
| 0xe418  | NVIC_IPR6               | Interrupt Priority Register 6                   |
| 0xe41c  | NVIC_IPR7               | Interrupt Priority Register 7                   |
| 0xed00  | CPUID                   | CPUID Base Register                             |
| 0xed04  | ICSR                    | Interrupt Control and State Register            |
| 0xed08  | VTOR                    | Vector Table Offset Register                    |
| 0xed0c  | AIRCR                   | Application Interrupt and Reset Control Register|
| 0xed10  | SCR                     | System Control Register                         |
| 0xed14  | CCR                     | Configuration and Control Register              |
| 0xed1c  | SHPR2                   | System Handler Priority Register 2              |
| 0xed20  | SHPR3                   | System Handler Priority Register 3              |
| 0xed24  | SHCSR                   | System Handler Control and State Register       |
| 0xed90  | MPU_TYPE                | MPU Type Register                               |
| 0xed94  | MPU_CTRL                | MPU Control Register                            |
| 0xed98  | MPU_RNR                 | MPU Region Number Register                      |
| 0xed9c  | MPU_RBAR                | MPU Region Base Address Register                |
| 0xeda0  | MPU_RASR                | MPU Region Attribute and Size Register          |
