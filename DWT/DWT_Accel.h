void DWT_Accel(unsigned short a[1][120][160], unsigned short b[1][120][160], unsigned short c[1][120][160]);
void read_color(unsigned short a[1][120][160], unsigned short A_buffer[1][120][160]);
void read_IR(unsigned short b[1][120][160], unsigned short B_buffer[1][120][160]);
void write_image(unsigned short C_buffer[1][120][160], unsigned short c[1][120][160]);
void DWT_color(unsigned short A[1][120][160]);
void DWT_IR(unsigned short B[1][120][160]);
void Filter(unsigned short A[1][120][160],unsigned short B[1][120][160],unsigned short C[1][120][160]);
void IDWT (unsigned short C[1][120][160]);
