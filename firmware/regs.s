;       regs.s
;       More information about registers can be found in the documentation docs/firmware/firmware.md

; All information is taken from the official documentation from the `Raspberry Pi Foundation`

%define SYST_CSR   0xe010         ; SysTick Control and Status Register
%define SYST_RVR   0xe014         ; SysTick Reload Value Register
%define SYST_CVR   0xe018         ; SysTick Current Value Register
%define SYST_CALIB 0xe01c         ; SysTick Calibration Value Register
%define NVIC_ISER  0xe100         ; Interrupt Set-Enable Register
%define NVIC_ICER  0xe180         ; Interrupt Clear-Enable Register
%define NVIC_ISPR  0xe200         ; Interrupt Set-Pending Register
%define NVIC_ICPR  0xe280         ; Interrupt Clear-Pending Register
%define NVIC_IPR0  0xe400         ; Interrupt Priority Register 0
%define NVIC_IPR1  0xe404         ; Interrupt Priority Register 1
%define NVIC_IPR2  0xe408         ; Interrupt Priority Register 2
%define NVIC_IPR3  0xe40c         ; Interrupt Priority Register 3
%define NVIC_IPR4  0xe410         ; Interrupt Priority Register 4
%define NVIC_IPR5  0xe414         ; Interrupt Priority Register 5
%define NVIC_IPR6  0xe418         ; Interrupt Priority Register 6
%define NVIC_IPR7  0xe41c         ; Interrupt Priority Register 7
%define CPUID      0xed00         ; CPUID Base Register
%define ICSR       0xed04         ; Interrupt Control and State Register
%define VTOR       0xed08         ; Vector Table Offset Register
%define AIRCR      0xed0c         ; Application Interrupt and Reset Control Register
%define SCR        0xed10         ; System Control Register
%define CCR        0xed14         ; Configuration and Control Register
%define SHPR2      0xed1c         ; System Handler Priority Register 2
%define SHPR3      0xed20         ; System Handler Priority Register 3
%define SHCSR      0xed24         ; System Handler Control and State Register
%define MPU_TYPE   0xed90         ; MPU Type Register
%define MPU_CTRL   0xed94         ; MPU Control Register
%define MPU_RNR    0xed98         ; MPU Region Number Register
%define MPU_RBAR   0xed9c         ; MPU Region Base Address Register
%define MPU_RASR   0xeda0         ; MPU Region Attribute and Size Register