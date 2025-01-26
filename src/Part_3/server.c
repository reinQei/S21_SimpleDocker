#include <stdio.h>

#include <fcgi_stdio.h>

int main(void) {
    while (FCGI_Accept() >= 0) {
        FCGI_printf("Content-type: text/html\r\n"
               "Status: 200 OK\r\n\r\n"
               "<html>\n"
               "<head><title>Hello world</title></head>\n"
               "<body>\n"
               "<h1>Hello world!</h1>\n"
               "<h2>Part 3</h2>\n"
               "</body>\n"
               "</html>\n");
    }
    
    return 0;
}
