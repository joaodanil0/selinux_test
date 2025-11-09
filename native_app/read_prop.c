#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/system_properties.h>

int main(void) {
    char value[PROP_VALUE_MAX];
    int len = __system_property_get("aaudio.log_mask", value);
    printf("Property length = %d, value = %s\n", len, value);
    return 0;
}
